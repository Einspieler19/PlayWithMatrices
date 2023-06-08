#ifndef _LOOP_PIPELINE_H_
#define _LOOP_PIPELINE_H_

#include <iostream>
#include <fstream>
using namespace std;

#include "ap_int.h"
#define N 128
#define M 4
#define NUM_TRANS 20

typedef ap_uint<4>  din_t;
typedef ap_uint<4> dout_t;

void loop_pipeline(din_t A[N], din_t B[N], dout_t C[N]);

#endif


#include "loop_pipeline.h"

void loop_pipeline(din_t A[N], din_t B[N], dout_t C[N]) {
//
//#pragma HLS ARRAY_PARTITION dim=0 factor=2 type=cyclic variable=A
//#pragma HLS ARRAY_PARTITION dim=0 factor=2 type=cyclic variable=B
//#pragma HLS ARRAY_PARTITION dim=0 factor=2 type=cyclic variable=C

#pragma HLS ARRAY_PARTITION dim=0 factor=8 type=block variable=A
#pragma HLS ARRAY_PARTITION dim=0 factor=8 type=block variable=B
#pragma HLS ARRAY_PARTITION dim=0 factor=8 type=block variable=C


  int i;
//	static dout_t acc;
  
//#pragma HLS PIPELINE
	LOOP_I:for(i=0; i < N; i++){

//#pragma HLS UNROLL factor=4
			C[i] = A[i] + B[i];
		}
}
