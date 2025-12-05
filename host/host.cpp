#include <iostream>
#include <vector>
#include <opencv2/opencv.hpp>
#include <xrt/xrt_device.h>
#include <xrt/xrt_kernel.h>
#include <xrt/xrt_bo.h>

using namespace cv;
using namespace std;

static const int WIDTH  = 960;
static const int HEIGHT = 540;
static const int SIZE   = WIDTH * HEIGHT;

// ------------------------------------------------------------
// Apply trapezoidal ROI mask (matches your Python version)
// ------------------------------------------------------------
void apply_roi(Mat &img)
{
    vector<Point> poly;
    poly.push_back(Point(0, HEIGHT));
    poly.push_back(Point(WIDTH/2 - 50, HEIGHT/2 + 80));
    poly.push_back(Point(WIDTH/2 + 50, HEIGHT/2 + 80));
    poly.push_back(Point(WIDTH, HEIGHT));

    Mat mask = Mat::zeros(img.size(), CV_8UC1);
    fillConvexPoly(mask, poly, Scalar(255));
    bitwise_and(img, mask, img);
}

void draw_lane_overlay(Mat &frame, const vector<Vec4i> &lines)
{
    vector<Point> left_pts, right_pts;

    for (auto &l : lines)
    {
        float x1 = l[0], y1 = l[1], x2 = l[2], y2 = l[3];
        float slope = (y2 - y1) / (x2 - x1 + 1e-6);

        if (fabs(slope) < 0.5) continue; // ignore nearly horizontal

        if (slope < 0)
        {
            left_pts.push_back(Point(x1,y1));
            left_pts.push_back(Point(x2,y2));
        }
        else
        {
            right_pts.push_back(Point(x1,y1));
            right_pts.push_back(Point(x2,y2));
        }
    }

    auto fit_and_draw = [&](vector<Point>& pts, Scalar color)
    {
        if (pts.size() < 2) return;

        Vec4f lane_line;   // renamed from “line”
        fitLine(pts, lane_line, DIST_L2, 0, 0.01, 0.01);

        float vx = lane_line[0], vy = lane_line[1];
        float x0 = lane_line[2], y0 = lane_line[3];

        float slope = vy / vx;
        float intercept = y0 - slope * x0;

        int y1 = HEIGHT;             // bottom of frame
        int y2 = HEIGHT / 2 + 50;    // mid area

        int x1 = (y1 - intercept) / slope;
        int x2 = (y2 - intercept) / slope;

        cv::line(frame, Point(x1, y1), Point(x2, y2), color, 5);
    };

    fit_and_draw(left_pts, Scalar(0,0,255));  // red left
    fit_and_draw(right_pts, Scalar(0,255,0)); // green right
}

// ------------------------------------------------------------
// MAIN
// ------------------------------------------------------------
int main(int argc, char** argv)
{
    if (argc != 4)
    {
        cout << "Usage: ./host edge_detect.xclbin input.mp4 output.mp4\n";
        return -1;
    }

    string xclbin_file = argv[1];
    string input_video = argv[2];
    string output_video = argv[3];

    // ---------------- FPGA SETUP -------------------
    xrt::device device(0);
    auto uuid = device.load_xclbin(xclbin_file);
    xrt::kernel kernel = xrt::kernel(device, uuid, "edge_detect");

    xrt::bo bo_in  = xrt::bo(device, SIZE, kernel.group_id(0));
    xrt::bo bo_out = xrt::bo(device, SIZE, kernel.group_id(1));

    // -------------- VIDEO SETUP ---------------------
    VideoCapture cap(input_video);
    if (!cap.isOpened())
    {
        cerr << "Cannot open video: " << input_video << endl;
        return -1;
    }

    VideoWriter writer;
    writer.open(
        output_video,
        VideoWriter::fourcc('a','v','c','1'),
        cap.get(CAP_PROP_FPS),
        Size(WIDTH, HEIGHT)
    );

    if (!writer.isOpened())
    {
        cerr << "Cannot write output video\n";
        return -1;
    }

    cout << "Processing video..." << endl;

    Mat frame, gray, roi_frame, edge_map(HEIGHT, WIDTH, CV_8UC1);

    while (cap.read(frame))
    {
        resize(frame, frame, Size(WIDTH, HEIGHT));
        cvtColor(frame, gray, COLOR_BGR2GRAY);

        roi_frame = gray.clone();
        apply_roi(roi_frame);

        // Send to FPGA
        memcpy(bo_in.map<void*>(), roi_frame.data, SIZE);
        bo_in.sync(XCL_BO_SYNC_BO_TO_DEVICE);

        auto run = kernel(bo_in, bo_out, HEIGHT, WIDTH, 50, 150);
        run.wait();

        bo_out.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
        memcpy(edge_map.data, bo_out.map<void*>(), SIZE);

        // Hough transform
        vector<Vec4i> lines;
        HoughLinesP(edge_map, lines, 1, CV_PI/180, 40, 30, 200);

        Mat output = frame.clone();
        draw_lane_overlay(output, lines);

        writer.write(output);
    }

    cout << "Saved → " << output_video << endl;
    return 0;
}

