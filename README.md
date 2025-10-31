This project builds a real-time lane and road-edge detection system with FPGA acceleration. The aim is to detect lane markings and road boundaries from dashcam video quickly and reliably, with a path toward use in driver-assistance and autonomous systems. The workflow starts in software and then moves the compute-heavy parts—primarily edge detection—to hardware using Vitis HLS on an AMD Alveo U280.

The first phase is a software-only baseline written in Python and OpenCV. This version is used to prove that the lane-detection logic is correct before touching hardware. The pipeline applies a trapezoidal region of interest, a light Gaussian blur, Canny edge detection, and Hough-based line finding, followed by simple left/right averaging to keep the lanes stable. The outputs include diagnostic images and videos that clearly show the detected lanes over the original footage. "Open python_simulation.md for further instructions."

After the CPU version is solid, the edge-detection stage is moved onto the FPGA. That block is rewritten in C/C++ for Vitis HLS and synthesized for the U280 so the hardware can handle the fast pixel work. The target is straightforward: lower latency and higher frames per second. Post-processing—such as lane averaging and drawing the overlays—stays on the CPU to keep iteration quick and the overall flow balanced.

The design is intentionally modular. The host manages I/O, light preprocessing, and visualization, while the FPGA accelerates the heavy computation. This split makes development simple on a single machine today and leaves room to scale to a larger or cloud setup later without rewriting the entire pipeline.

By the end of the project, the full flow demonstrates how FPGA acceleration can speed up a vision workload without sacrificing correctness. Deliverables include the CPU “golden” results, side-by-side comparisons of original and processed video, a four-panel clip showing each stage of the pipeline, and an FPGA-accelerated run that highlights the performance gains.



