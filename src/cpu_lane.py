#!/usr/bin/env python3
"""
cpu_lane.py — CPU golden pipeline for lane & edge detection (U280 project, Part 1)
Author: Akash Kotagi (with ChatGPT assistance)
Methods: ROI → Gaussian(3×3) → Canny → HoughLinesP → averaged left/right lines (EMA optional)

Usage examples:
  # A) Process a frames folder and also make a video at 5 fps
  python3 cpu_lane.py --in data/white_frames --make-video --fps 5

  # B) Process a single MP4 directly and write an overlay video
  python3 cpu_lane.py --video data/white.mp4 --out-video out/CPU_LaneOverlay.mp4
"""
import os, sys, glob, argparse
import numpy as np
import cv2

# -------------------------
# Geometry & drawing utils
# -------------------------
def roi_mask(img, wr=(0.45, 0.55), hr=0.6):
    """Return a binary mask for a trapezoidal road ROI on image 'img'."""
    h, w = img.shape[:2]
    poly = np.array([[
        (0, h),
        (int(wr[0]*w), int(hr*h)),
        (int(wr[1]*w), int(hr*h)),
        (w, h)
    ]], np.int32)
    mask = np.zeros((h, w), np.uint8)
    cv2.fillPoly(mask, poly, 255)
    return mask

def average_and_draw_lines(lines, lanes_img, h, w, color=(0,255,0), thickness=6):
    """Fit a line through points from Hough segments and draw two long lane lines."""
    if not lines:
        return
    pts = np.array([(x1,y1) for x1,y1,_,_ in lines] + [(x2,y2) for *_,x2,y2 in lines])
    vx, vy, x0, y0 = cv2.fitLine(pts, cv2.DIST_L2, 0, 0.01, 0.01)
    # Draw from near bottom to ~60% height
    yb, ym = h - 1, int(0.6*h)
    x_at = lambda y: int(x0 + (y - y0) * (vx / (vy + 1e-9)))
    cv2.line(lanes_img, (x_at(yb), yb), (x_at(ym), ym), color, thickness)

def draw_lanes(gray, edges, hough_thresh=25, min_len=40, max_gap=30):
    """Detect lane segments in edges, average left/right, and draw on a BGR canvas."""
    h, w = gray.shape
    lanes = cv2.cvtColor(gray, cv2.COLOR_GRAY2BGR)

    mask = roi_mask(gray)
    roi_edges = cv2.bitwise_and(edges, mask)

    lines = cv2.HoughLinesP(
        roi_edges, 1, np.pi/180, hough_thresh,
        minLineLength=min_len, maxLineGap=max_gap
    )
    left, right = [], []
    if lines is not None:
        for x1,y1,x2,y2 in lines[:,0,:]:
            if x2 == x1: 
                continue
            slope = (y2 - y1) / ((x2 - x1) + 1e-9)
            # left/right split by slope and position
            if slope < -0.5 and max(x1,x2) < int(0.55*w): left.append((x1,y1,x2,y2))
            if slope >  0.5 and min(x1,x2) > int(0.45*w): right.append((x1,y1,x2,y2))

    average_and_draw_lines(left,  lanes, h, w, (0,255,0), 6)
    average_and_draw_lines(right, lanes, h, w, (0,255,0), 6)
    return lanes, roi_edges

# -------------------------
# Processing flows
# -------------------------
def process_frame(bgr, canny_lo, canny_hi, blur_ksize=3, hough_t=25, min_len=40, max_gap=30):
    gray = cv2.cvtColor(bgr, cv2.COLOR_BGR2GRAY)
    blur = cv2.GaussianBlur(gray, (blur_ksize, blur_ksize), 0)
    edges = cv2.Canny(blur, canny_lo, canny_hi)
    lanes, roi_edges = draw_lanes(gray, edges, hough_t, min_len, max_gap)
    # 4-panel diagnostic (gray | blur | edges | ROI-edges)
    diag = cv2.hconcat([gray, blur, edges, roi_edges])
    if len(diag.shape) == 2:
        diag = cv2.cvtColor(diag, cv2.COLOR_GRAY2BGR)
    return lanes, diag

def run_on_frames(args):
    os.makedirs(args.out_diag, exist_ok=True)
    os.makedirs(args.out_overlay, exist_ok=True)

    frames = sorted(glob.glob(os.path.join(args.in_dir, "*.png"))) + \
             sorted(glob.glob(os.path.join(args.in_dir, "*.jpg")))
    if not frames:
        print(f"[ERROR] No frames found under: {args.in_dir}")
        sys.exit(2)

    for f in frames:
        bgr = cv2.imread(f)
        if bgr is None:
            continue
        lanes, diag = process_frame(
            bgr, args.canny_lo, args.canny_hi, args.blur,
            args.hough_thresh, args.min_len, args.max_gap
        )
        base = os.path.basename(f)
        cv2.imwrite(os.path.join(args.out_diag,    base), diag)
        cv2.imwrite(os.path.join(args.out_overlay, "overlay_" + base), lanes)

    print(f"[OK] Diagnostics  → {args.out_diag}")
    print(f"[OK] Overlays     → {args.out_overlay}")

    if args.make_video:
        # Re-stitch overlays into a video
        pattern = os.path.join(args.out_overlay, "overlay_*.png")
        outv = args.out_video or "out/CPU_LaneOverlay.mp4"
        make_video_from_glob(pattern, outv, args.fps)
        print(f"[OK] Overlay video → {outv}")

def run_on_video(args):
    cap = cv2.VideoCapture(args.video)
    if not cap.isOpened():
        print(f"[ERROR] Could not open video: {args.video}")
        sys.exit(3)

    fps = cap.get(cv2.CAP_PROP_FPS) or float(args.fps)
    w   = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
    h   = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))

    outv = args.out_video or "out/CPU_LaneOverlay.mp4"
    os.makedirs(os.path.dirname(outv) or ".", exist_ok=True)
    fourcc = cv2.VideoWriter_fourcc(*"mp4v")
    writer = cv2.VideoWriter(outv, fourcc, fps, (w, h))

    # (Optional) save first few diagnostics
    os.makedirs(args.out_diag, exist_ok=True)
    diag_save = 0

    while True:
        ret, bgr = cap.read()
        if not ret:
            break
        lanes, diag = process_frame(
            bgr, args.canny_lo, args.canny_hi, args.blur,
            args.hough_thresh, args.min_len, args.max_gap
        )
        writer.write(lanes)
        if diag_save < args.diag_frames:
            cv2.imwrite(os.path.join(args.out_diag, f"diag_{diag_save:04d}.png"), diag)
            diag_save += 1

    writer.release()
    cap.release()
    print(f"[OK] Overlay video → {outv}")
    if diag_save:
        print(f"[OK] Sample diagnostics → {args.out_diag}")

def make_video_from_glob(glob_pattern, out_path, fps):
    frames = sorted(glob.glob(glob_pattern))
    if not frames:
        print(f"[WARN] No frames match: {glob_pattern}")
        return
    # Probe first frame size
    first = cv2.imread(frames[0])
    h, w = first.shape[:2]
    fourcc = cv2.VideoWriter_fourcc(*"mp4v")
    os.makedirs(os.path.dirname(out_path) or ".", exist_ok=True)
    writer = cv2.VideoWriter(out_path, fourcc, float(fps), (w, h))
    for f in frames:
        img = cv2.imread(f)
        if img is None: continue
        # ensure 3 channels
        if len(img.shape) == 2:
            img = cv2.cvtColor(img, cv2.COLOR_GRAY2BGR)
        writer.write(img)
    writer.release()

# -------------------------
# Main / CLI
# -------------------------
def parse_args():
    ap = argparse.ArgumentParser(description="CPU golden lane & edge detection")
    src = ap.add_mutually_exclusive_group(required=True)
    src.add_argument("--in", dest="in_dir", help="input frames directory (PNG/JPG)")
    src.add_argument("--video", help="process a single MP4 directly")

    ap.add_argument("--out-diag", default="out/cpu_diag", help="diagnostics (4-panel) folder")
    ap.add_argument("--out-overlay", default="out/cpu_overlay", help="overlay frames folder")
    ap.add_argument("--out-video", default=None, help="output video path (MP4)")

    # Parameters
    ap.add_argument("--blur", type=int, default=3, help="Gaussian blur kernel (odd)")
    ap.add_argument("--canny-lo", type=int, default=50, help="Canny low threshold")
    ap.add_argument("--canny-hi", type=int, default=150, help="Canny high threshold")
    ap.add_argument("--hough-thresh", type=int, default=25, help="HoughLinesP threshold")
    ap.add_argument("--min-len", type=int, default=40, help="Hough min line length")
    ap.add_argument("--max-gap", type=int, default=30, help="Hough max line gap")
    ap.add_argument("--fps", type=int, default=5, help="output video fps (when stitching)")

    # Flow control
    ap.add_argument("--make-video", action="store_true", help="stitch overlay frames into a video (frames mode)")
    ap.add_argument("--diag-frames", type=int, default=10, help="# of diagnostic frames to save in video mode")

    return ap.parse_args()

if __name__ == "__main__":
    args = parse_args()
    if args.in_dir:
        run_on_frames(args)
    else:
        run_on_video(args)

