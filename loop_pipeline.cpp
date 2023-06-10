

#include "loop_pipeline.h"

void loop_pipeline(din_t A[N], din_t B[N], dout_t C[N], dout_t D[N]) {

#pragma HLS ARRAY_PARTITION dim=0 factor=128 type=cyclic variable=A
#pragma HLS ARRAY_PARTITION dim=0 factor=128 type=cyclic variable=B
#pragma HLS ARRAY_PARTITION dim=0 factor=128 type=cyclic variable=C
//
//#pragma HLS ARRAY_RESHAPE dim=0 factor=64 type=cyclic variable=A
//#pragma HLS ARRAY_RESHAPE dim=0 factor=64 type=cyclic variable=B
//#pragma HLS ARRAY_RESHAPE dim=0 factor=64 type=cyclic variable=C

//#pragma HLS ARRAY_RESHAPE dim=0 type=complete variable=A
//#pragma HLS ARRAY_RESHAPE dim=0 type=complete variable=B
//#pragma HLS ARRAY_RESHAPE dim=0 type=complete variable=C


	dout_t F[N];
  int i;

#pragma HLS ARRAY_PARTITION dim=0 factor=128 type=cyclic variable=D

for(i=0; i < N; i++){
			F[i] = 128*3-i;
			D[i] = F[i];
		}



//	static dout_t acc;
  
//#pragma HLS PIPELINE
	LOOP_I:for(i=0; i < N; i++){
//#pragma HLS PIPELINE
#pragma HLS UNROLL factor=2
			C[i] = A[i] + D[i];
		}
}
