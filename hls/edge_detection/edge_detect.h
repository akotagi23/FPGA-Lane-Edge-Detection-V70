#pragma once
#include <ap_int.h>

#define MAX_WIDTH 960
#define MAX_HEIGHT 540

typedef ap_uint<8> pix_t;

void edge_detect(
    unsigned char *in_img,
    unsigned char *out_img,
    int rows,
    int cols,
    int low_thresh,
    int high_thresh
);
