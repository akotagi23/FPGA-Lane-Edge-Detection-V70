#include "edge_detect.h"
#include <hls_math.h>

void edge_detect(
    pix_t in_img[MAX_HEIGHT][MAX_WIDTH],
    pix_t out_img[MAX_HEIGHT][MAX_WIDTH],
    int rows,
    int cols,
    int low_thresh,
    int high_thresh
) {
    // Interface pragmas
    #pragma HLS INTERFACE m_axi port=in_img offset=slave bundle=gmem
    #pragma HLS INTERFACE m_axi port=out_img offset=slave bundle=gmem
    #pragma HLS INTERFACE s_axilite port=rows bundle=control
    #pragma HLS INTERFACE s_axilite port=cols bundle=control
    #pragma HLS INTERFACE s_axilite port=low_thresh bundle=control
    #pragma HLS INTERFACE s_axilite port=high_thresh bundle=control
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    // Internal buffer
    int blur[MAX_HEIGHT][MAX_WIDTH];
    int grad_mag[MAX_HEIGHT][MAX_WIDTH];

    // Pass 1: Gaussian blur
    gauss_loop:
    for(int r = 1; r < rows-1; r++){
        for(int c = 1; c < cols-1; c++){
            int sum = 0;
            for(int i=0; i<3; i++){
                for(int j=0; j<3; j++){
                    sum += GAUSS[i][j] * in_img[r+i-1][c+j-1];
                }
            }
            blur[r][c] = sum >> 4; // divide by 16
        }
    }

    // Pass 2: Sobel gradients
    sobel_loop:
    for(int r = 1; r < rows-1; r++){
        for(int c = 1; c < cols-1; c++){
            int gx = 0, gy = 0;
            for(int i=0; i<3; i++){
                for(int j=0; j<3; j++){
                    int v = blur[r+i-1][c+j-1];
                    gx += SOBEL_X[i][j] * v;
                    gy += SOBEL_Y[i][j] * v;
                }
            }
            grad_mag[r][c] = hls::abs(gx) + hls::abs(gy);
        }
    }

    // Pass 3: Double threshold + output
    thresh_loop:
    for(int r = 1; r < rows-1; r++){
        for(int c = 1; c < cols-1; c++){
            int m = grad_mag[r][c];
            if(m >= high_thresh)
                out_img[r][c] = 255;
            else if(m >= low_thresh)
                out_img[r][c] = 100;
            else
                out_img[r][c] = 0;
        }
    }
}
