import cv2, argparse, os, numpy as np

def roi_mask(img, wr=(0.45, 0.55), hr=0.60):
    h, w = img.shape[:2]
    poly = np.array([[(0,h),(int(wr[0]*w),int(hr*h)),(int(wr[1]*w),int(hr*h)),(w,h)]], np.int32)
    m = np.zeros((h,w), np.uint8); cv2.fillPoly(m, poly, 255); return m

def draw_avg(lines, canvas, h, w, color=(0,255,0), th=6):
    if not lines: return
    pts = np.array([(x1,y1) for x1,y1,_,_ in lines] + [(x2,y2) for *_,x2,y2 in lines])
    vx,vy,x0,y0 = cv2.fitLine(pts, cv2.DIST_L2, 0, 0.01, 0.01)
    yb,ym = h-1, int(0.6*h); x = lambda yy: int(x0 + (yy-y0)*vx/(vy+1e-9))
    cv2.line(canvas, (x(yb), yb), (x(ym), ym), color, th)

def lane_overlay(bgr, blur_k=3, c_lo=50, c_hi=150, ht=25, min_len=40, max_gap=30,
                 roi=(0.45,0.55,0.60)):
    gray = cv2.cvtColor(bgr, cv2.COLOR_BGR2GRAY)
    blur = cv2.GaussianBlur(gray, (blur_k, blur_k), 0)
    edges = cv2.Canny(blur, c_lo, c_hi)
    mask = roi_mask(gray, (roi[0], roi[1]), roi[2])
    roi_edges = cv2.bitwise_and(edges, mask)
    lines = cv2.HoughLinesP(roi_edges, 1, np.pi/180, ht, minLineLength=min_len, maxLineGap=max_gap)
    h, w = gray.shape
    canvas = bgr.copy()
    L, R = [], []
    if lines is not None:
        for x1,y1,x2,y2 in lines[:,0,:]:
            if x2 == x1: continue
            s = (y2-y1)/((x2-x1)+1e-9)
            if s < -0.5 and max(x1,x2) < int(0.55*w): L.append((x1,y1,x2,y2))
            if s >  0.5 and min(x1,x2) > int(0.45*w): R.append((x1,y1,x2,y2))
    draw_avg(L, canvas, h, w); draw_avg(R, canvas, h, w)
    return canvas

def main():
    ap = argparse.ArgumentParser(description="Side-by-side original | lane overlay")
    ap.add_argument("--video", required=True, help="input mp4")
    ap.add_argument("--out", default="out/Orig_vs_Lanes.mp4", help="output mp4")
    ap.add_argument("--blur", type=int, default=3)
    ap.add_argument("--canny_lo", type=int, default=50)
    ap.add_argument("--canny_hi", type=int, default=150)
    ap.add_argument("--hough", type=int, default=25)
    ap.add_argument("--minlen", type=int, default=40)
    ap.add_argument("--maxgap", type=int, default=30)
    ap.add_argument("--roi_left", type=float, default=0.45)
    ap.add_argument("--roi_right", type=float, default=0.55)
    ap.add_argument("--roi_h", type=float, default=0.60)
    args = ap.parse_args()

    cap = cv2.VideoCapture(args.video)
    if not cap.isOpened(): raise SystemExit(f"[ERROR] Cannot open {args.video}")
    fps = cap.get(cv2.CAP_PROP_FPS) or 25.0
    w   = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH)); h = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))

    os.makedirs(os.path.dirname(args.out) or ".", exist_ok=True)
    writer = cv2.VideoWriter(args.out, cv2.VideoWriter_fourcc(*"mp4v"), fps, (w*2, h))

    while True:
        ok, frame = cap.read()
        if not ok: break
        lanes = lane_overlay(
            frame, args.blur, args.canny_lo, args.canny_hi,
            args.hough, args.minlen, args.maxgap,
            (args.roi_left, args.roi_right, args.roi_h)
        )
        side = np.hstack([frame, lanes])
        writer.write(side)

    writer.release(); cap.release()
    print(f"[OK] Wrote side-by-side lanes → {args.out}")

if __name__ == "__main__":
    main()
