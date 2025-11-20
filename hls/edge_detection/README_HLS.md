# FPGA Canny Edge Detection (HLS Module)

This folder contains the Vitis HLS implementation of the edge-detection
block for the lane detection project. It replaces the software Canny in:

    src/video_to_edge.py

## What is accelerated?

1. Gaussian Blur (3×3)
2. Sobel Gradient (Gx, Gy)
3. Magnitude + Direction
4. Non-Maximum Suppression
5. Double Threshold

This produces the same edges used by edge_to_lane.py on CPU.

## Files

- edge_detect.cpp – HLS kernel
- edge_detect.h – definitions
- tb_edge_detect.cpp – testbench
- script.tcl – fully automated HLS build script

## Build Instructions

Run:

vitis_hls -f script.tcl


Outputs:
- C simulation
- Synthesis
- C/RTL Cosimulation
- Exported IP core

## Next Step

Integrate exported kernel into a host program (`host.cpp`)
and call it to accelerate the pipeline.
