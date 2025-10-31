# Introduction
This document explains how to reproduce the software-only (“golden”) pipeline for lane and road-edge detection using Python and OpenCV. It describes the environment requirements (Python version, packages, and FFmpeg), the expected repository layout, and how dashcam video is prepared as input (either as an MP4 file or as frames extracted at a fixed frame rate). It then outlines the sequence of scripts that implement the reference pipeline—region-of-interest selection, Gaussian smoothing, Canny edge detection, Hough line fitting, and lane averaging—and how each script produces artifacts used for verification. Generated outputs include per-frame diagnostics, a four-panel stage visualization, edges-only clips, side-by-side comparisons, and a lane-overlay video that serves as the golden reference for later hardware work.

# Step1 - Environment Bring-Up

Option A — OCT/Cloud node (simulation and FPGA): reserve a node with an Alveo board (e.g., U280), open a shell on the node, and use the preinstalled toolchain (Python/OpenCV for simulation; XRT/Vitis for emulation and on-board runs).

Option B — Local PC terminal (software-only): use a standard macOS or Ubuntu machine to run the Python/OpenCV pipeline and generate the golden outputs.

The following steps set up the tools needed to run the Python/OpenCV simulation on a macOS machine. If already setup can skip installation. 

1) Install Homebrew (if not already installed):
   
  ```/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"```
  
2) Add Homebrew to the PATH (Apple Silicon default path shown):

  ```echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile```

  ```eval "$(/opt/homebrew/bin/brew shellenv)"```

3) Install Python:

  ```brew install python```

4) Install utilities::

  ```brew install wget```

  ```brew install ffmpeg```

5) Install Python packages:

  ```pip3 install --upgrade pip```

  ```pip3 install numpy opencv-python```

# Step2 - File Creation

Create three top-level folders to keep the project organized:

```mkdir -p lane_detect/{src,data,out}```








