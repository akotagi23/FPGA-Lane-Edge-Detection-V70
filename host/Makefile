host: host.cpp
	g++ host.cpp -o host -std=c++17 -O2 \
	`pkg-config --cflags opencv4` `pkg-config --libs opencv4` \
	-I/opt/xilinx/xrt/include -L/opt/xilinx/xrt/lib \
	-lxrt_coreutil -lxrt_core -lxrt++
