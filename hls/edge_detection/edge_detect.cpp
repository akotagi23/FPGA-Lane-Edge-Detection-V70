#include <iostream>
#include <fstream>
#include <vector>
#include <xrt/xrt_device.h>
#include <xrt/xrt_kernel.h>
#include <xrt/xrt_bo.h>
#include <opencv2/opencv.hpp>

#define WIDTH 960
#define HEIGHT 540

int main(int argc, char** argv)
{
    if(argc < 3) {
        std::cerr << "Usage: ./host <xclbin> <video>" << std::endl;
        return 1;
    }

    std::string xclbin_path = argv[1];
    std::string video_path = argv[2];

    // Load xclbin
    auto device = xrt::device(0);
    auto uuid = device.load_xclbin(xclbin_path);
    auto kernel = xrt::kernel(device, uuid, "edge_detect");

    cv::VideoCapture cap(video_path);
    if (!cap.isOpened()) {
        std::cerr << "Failed to open video" << std::endl;
        return 1;
    }

    cv::VideoWriter writer(
        "out_edge.mp4",
        cv::VideoWriter::fourcc('m','p','4','v'),
        cap.get(cv::CAP_PROP_FPS),
        cv::Size(WIDTH, HEIGHT),
        false
    );

    cv::Mat frame, gray;
    size_t img_size = WIDTH * HEIGHT;

    auto bo_in = xrt::bo(device, img_size, XRT_BO_FLAGS_NONE, kernel.group_id(0));
    auto bo_out = xrt::bo(device, img_size, XRT_BO_FLAGS_NONE, kernel.group_id(1));

    uint8_t* in_ptr = bo_in.map<uint8_t*>();
    uint8_t* out_ptr = bo_out.map<uint8_t*>();

    while (cap.read(frame)) {

        cv::cvtColor(frame, gray, cv::COLOR_BGR2GRAY);

        if (gray.rows != HEIGHT || gray.cols != WIDTH) {
            std::cerr << "Frame size mismatch" << std::endl;
            return 1;
        }

        memcpy(in_ptr, gray.data, img_size);
        bo_in.sync(XCL_BO_SYNC_BO_TO_DEVICE);

        auto run = kernel(
            bo_in, bo_out,
            HEIGHT, WIDTH,
            50, 150
        );

        run.wait();

        bo_out.sync(XCL_BO_SYNC_BO_FROM_DEVICE);

        cv::Mat out_img(HEIGHT, WIDTH, CV_8UC1, out_ptr);
        writer.write(out_img);
    }

    std::cout << "Done. Saved -> out_edge.mp4" << std::endl;
    return 0;
}
