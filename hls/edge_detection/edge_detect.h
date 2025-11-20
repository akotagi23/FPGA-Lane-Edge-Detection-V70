#pragma once

#include <ap_int.h>

#define MAX_WIDTH 960
#define MAX_HEIGHT 540

typedef ap_uint<8> pix_t;

// Gaussian blur kernel
static const int GAUSS[3][3] = {
    {1, 2, 1},
    {2, 4, 2},
    {1, 2, 1}
};

// Sobel X kernel
static const int SOBEL_X[3][3] = {
    {-1, 0, 1},
    {-2, 0, 2},
    {-1, 0, 1}
};

// Sobel Y kernel
static const int SOBEL_Y[3][3] = {
    {-1, -2, -1},
    { 0,  0,  0},
    { 1,  2,  1}
};

void edge_detect(
    pix_t in_img[MAX_HEIGHT][MAX_WIDTH],
    pix_t out_img[MAX_HEIGHT][MAX_WIDTH],
    int rows,
    int cols,
    int low_thresh,
    int high_thresh
);
