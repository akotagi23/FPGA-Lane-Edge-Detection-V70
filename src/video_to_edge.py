import cv2, argparse, os
import numpy as np

def roi_mask(img, wr=(0.45, 0.55), hr=0.6):
    """Trapezoid ROI mask on a single-channel image."""
    h, w = img.shape[:2]
    poly = np.array([[
        (0, h),
        (int(wr[0]*w), int(hr*h)),
        (int(wr[1]*w), int(hr*h)),
        (w, h)
    ]], np.int32)
    m = np.zeros((h, w), np.uint8)
    cv2.fillPoly(m, poly, 255)
    return m

def to_bgr(img):
    """Ensure 3-channel BGR for hstack."""
    return cv2.cvtColor(img, cv2.COLOR_GRAY2BGR) if len(img.shape) == 2 else img

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--video", required=True, help="input video (mp4)")
    ap.add_argument("--out",   default="out/FourPanel.mp4", help="output mp4")
    ap.add_argument("--blur",  type=int, default=3, help="Gaussian kernel (odd)")
    ap.add_argument("--canny_lo", type=int, default=50)
    ap.add_argument("--canny_hi", type=int, default=150)
    ap.add_argument("--roi_left",  type=float, default=0.45, help="ROI left x ratio")
    ap.add_argument("--roi_right", type=float, default=0.55, help="ROI right x ratio")
    ap.add_argument("--roi_h",     type=float, default=0.60, help="ROI top y ratio")
    args = ap.parse_args()

    cap = cv2.VideoCapture(args.video)
    if not cap.isOpened():
        raise SystemExit(f"[ERROR] Cannot open {args.video}")

    fps = cap.get(cv2.CAP_PROP_FPS) or 25.0
    w   = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
    h   = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))

    os.makedirs(os.path.dirname(args.out) or ".", exist_ok=True)
    fourcc = cv2.VideoWriter_fourcc(*"mp4v")
    writer = cv2.VideoWriter(args.out, fourcc, fps, (w*4, h))  # 4 panels side-by-side

    mask = None  # reuse ROI mask for speed

    while True:
        ok, bgr = cap.read()
        if not ok: break

        gray = cv2.cvtColor(bgr, cv2.COLOR_BGR2GRAY)
        blur = cv2.GaussianBlur(gray, (args.blur, args.blur), 0)
        edges = cv2.Canny(blur, args.canny_lo, args.canny_hi)

        if mask is None or mask.shape[:2] != gray.shape[:2]:
            mask = roi_mask(gray, wr=(args.roi_left, args.roi_right), hr=args.roi_h)
        roi_edges = cv2.bitwise_and(edges, mask)

        # Convert all to BGR for clean concatenation
        p1 = to_bgr(gray)
        p2 = to_bgr(blur)
        p3 = to_bgr(edges)
        p4 = to_bgr(roi_edges)

        panel = np.hstack([p1, p2, p3, p4])
        writer.write(panel)

    writer.release()
    cap.release()
    print(f"[OK] Wrote 4-panel video → {args.out}")

if __name__ == "__main__":
    main()
