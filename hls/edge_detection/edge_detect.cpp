#include "edge_detect.h"
#include <hls_math.h>

void edge_detect(
    unsigned char *in_img,
    unsigned char *out_img,
    int rows,
    int cols,
    int low_thresh,
    int high_thresh
) {
#pragma HLS INTERFACE m_axi port=in_img offset=slave bundle=gmem0 depth=518400
#pragma HLS INTERFACE m_axi port=out_img offset=slave bundle=gmem1 depth=518400

#pragma HLS INTERFACE s_axilite port=in_img  bundle=control
#pragma HLS INTERFACE s_axilite port=out_img bundle=control
#pragma HLS INTERFACE s_axilite port=rows    bundle=control
#pragma HLS INTERFACE s_axilite port=cols    bundle=control
#pragma HLS INTERFACE s_axilite port=low_thresh bundle=control
#pragma HLS INTERFACE s_axilite port=high_thresh bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

    // Line buffer for 3 rows
    unsigned char linebuf[3][MAX_WIDTH];
#pragma HLS ARRAY_PARTITION variable=linebuf complete dim=1

ROW_LOOP:
    for(int r = 0; r < rows; r++){
        COL_LOOP:
        for(int c = 0; c < cols; c++){
#pragma HLS PIPELINE II=1

            // shift line buffer
            linebuf[0][c] = linebuf[1][c];
            linebuf[1][c] = linebuf[2][c];

            // new pixel
            unsigned char pix = in_img[r*cols + c];
            linebuf[2][c] = pix;

            // border
            if(r < 2 || c < 1 || c >= cols-1){
                out_img[r*cols + c] = 0;
                continue;
            }

            int p00 = linebuf[0][c-1];
            int p01 = linebuf[0][c];
            int p02 = linebuf[0][c+1];

            int p10 = linebuf[1][c-1];
            int p11 = linebuf[1][c];
            int p12 = linebuf[1][c+1];

            int p20 = linebuf[2][c-1];
            int p21 = linebuf[2][c];
            int p22 = linebuf[2][c+1];

            int gx = -p00 - 2*p10 - p20 + p02 + 2*p12 + p22;
            int gy = -p00 - 2*p01 - p02 + p20 + 2*p21 + p22;

            int mag = (gx<0?-gx:gx) + (gy<0?-gy:gy);
            if(mag > 255) mag = 255;

            out_img[r*cols + c] = (mag > high_thresh ? 255 :
                                   mag > low_thresh  ? 100 : 0);
        }
    }
}
