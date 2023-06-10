/*
 * Copyright 2022 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "loop_pipeline.h"
 
int main () {
  din_t A[N];
  din_t B[N];
  dout_t C[N];
  dout_t C_REF[N];
	
  int i, j, retval=0;
  ofstream FILE;

  // Create input data
  for(i=0; i<N;++i) {
    A[i]=i;
    B[i]=2*i;
    C_REF[i]=A[i]+B[i];
  }

  // Save the results to a file
  FILE.open ("result.golden.dat");
  for(i=0; i<N;++i) {
	  FILE << C_REF[i] << endl;
  }
  FILE.close();


  // Save the results to a file
  FILE.open ("result.dat");
  
  // Call the function
//  for(j=0; j<NUM_TRANS;++j) {
    loop_pipeline(A,B,C);

    // New input data
    for(i=0; i<N;++i) {
      FILE << C[i] << endl;
    }
//  }
  FILE.close();
  
  // Compare the results file with the golden results
  retval = system("diff --brief -w result.dat result.golden.dat");
  if (retval != 0) {
    cout << "Test failed  !!!" << endl; 
    retval=1;
  } else {
    cout << "Test passed !" << endl;
  }

  // Return 0 if the test
  return retval;
}

