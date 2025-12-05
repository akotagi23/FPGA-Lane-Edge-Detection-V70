# ============================================================
# Makefile for FPGA Lane Detection Host Application
# CloudLab safe — no GTK, no GUI dependencies
# ============================================================

CXX = g++
CXXFLAGS = -std=c++17 -O2

# Xilinx XRT paths
XRT_INC = /opt/xilinx/xrt/include
XRT_LIB = /opt/xilinx/xrt/lib

# OpenCV flags (pkg-config preferred)
OPENCV_FLAGS = $(shell pkg-config --cflags --libs opencv4 2>/dev/null)

# If pkg-config fails, fallback to manual libs
ifeq ($(OPENCV_FLAGS),)
OPENCV_FLAGS = -lopencv_core -lopencv_imgproc -lopencv_videoio -lopencv_imgcodecs -lopencv_highgui
endif

INCLUDES = -I$(XRT_INC)
LIBS     = -L$(XRT_LIB) -lxrt_core -lxrt_coreutil $(OPENCV_FLAGS)

SRC = host.cpp
TARGET = host

# ============================================================
# Build rules
# ============================================================

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET) $(INCLUDES) $(LIBS)

clean:
	rm -f $(TARGET)
	rm -f *.o

.PHONY: all clean


