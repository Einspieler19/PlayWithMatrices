#include "Subsystem.h"


void printStreamElements(hls::stream<data_QRInv>& stream) {
    // 逐个读取并打印每个元素
    while (!stream.empty()) {
    	data_QRInv data = stream.read();
        std::cout << data << " ";
    }
    std::cout << std::endl;
}


int main(){


    MATRIX_IN_T A[ROWS_1][COLS_1]; // The input array.  Cast from A_generated
    MATRIX_OUT_T InverseA[ROWS_1][COLS_1];          // The inverse result from the DUT

    MATRIX_IN_T B[ROWS_1][COLS_1]; // The Hermitian array.

    MATRIX_IN_T C[ROWS_1][COLS_1]; // The Mult array 1

    MATRIX_IN_T D[ROWS_2][COLS_2]; // The Mult array 2


    int A_size = ROWS_1 * COLS_1;
    int InverseA_size = ROWS_1 * COLS_1;


    MATRIX_IN_T* A_ptr = reinterpret_cast<MATRIX_IN_T*>(A);
    MATRIX_OUT_T* InverseA_ptr = reinterpret_cast<MATRIX_OUT_T*>(InverseA);

    std::string data_path = std::string("/home/dian/ModelComposer/MyProject/HLS_Trials/0_MyDatas/Test_Matrices0/");
    std::string base_path;

    int imat = 8;
    int i = 1;

	std::string file_A =
    	data_path + "A_matType_" + "Inv" + "_" + std::to_string(i) + ".txt";
    std::string file_B =
    	data_path + "A_matType_" + "Hermitian" + "_" + std::to_string(i) + ".txt";
    std::string file_C =
    	data_path + "A_matType_" + "MultA" + "_" + std::to_string(i) + ".txt";
    std::string file_D =
    	data_path + "A_matType_" + "MultB" + "_" + std::to_string(i) + ".txt";


    std::cout<<file_A<<std::endl;

    readTxt(file_A, A_ptr, A_size);

//    float Real_or_imagPart;
//
//    // 文件 --> 信号
//    std::ifstream inFile;
//    inFile.open(file_A);
//
// 	for (int i = 0; i < ROWS_1; i++) {
// 	    for (int j = 0; j < COLS_1; j++) {
//
// 	    inFile >> Real_or_imagPart;
//		A[i][j].real(Real_or_imagPart);
//
//		inFile >> Real_or_imagPart;
//        A[i][j].imag(Real_or_imagPart);
//
// 	    }
//    }
//    inFile.close();    // 关闭文件


 	for (int i = 0; i < ROWS_1; i++) {
 	    for (int j = 0; j < COLS_1; j++) {
        std::cout<<A[i][j]<<" ";
 	    }
 	    std::cout << std::endl;
    }

	    std::cout << std::endl;
 	    std::cout << std::endl;





    //    readTxt(file_InverseA, InverseA_ptr, InverseA_size);

//    data_QRInv Constant_c_out[ROWS_1][COLS_1] = {1.000000000e+00f, 0.000000000e+00f,
//        2.000000000e+00f, -1.000000000e+00f, 5.000000000e+00f, 0.000000000e+00f
//        , 0.000000000e+00f, 3.000000000e+00f, -9.000000000e+00f};


//	data_QRInv Constant_c_out[ROWS_1][COLS_1] = {3.0,3.5,3.2,3.6};
//
//	data_QRInv Constant_c_out[3][3] = {
//	    {{1.0, 0.0}, {2.0, -1.0}, {1.0, 1.0}},
//	    {{0.0, 1.0}, {1.0, 1.0}, {1.0, 2.0}},
//	    {{-1.0, 1.0}, {1.0, 0.0}, {1.0, 0.0}}
//	};


    hls::stream<data_QRInv> matrixAStrm;
    hls::stream<data_QRInv> matrixInverseAStrm;


 	for (int i = 0; i < ROWS_1; i++) {
 	            for (int j = 0; j < COLS_1; j++) {
 	            	matrixAStrm.write(A[i][j]);
 	               std::cout<<A[i][j]<<" ";
 	        	    }
 	        std::cout << std::endl;
 	        }

	Subsystem(matrixAStrm,matrixInverseAStrm);
	printStreamElements(matrixInverseAStrm);


return 0;
}
