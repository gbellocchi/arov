// Author: Gianluca Bellocchi 
#include <omp.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>

#include "def.h" // Defines
#include "../stim/stim_input.h"  // Artificial stimuli
#include "../stim/arti_stim.h"  // Artificial stimuli
#include "../stim/stim_coeff.h" // Transfer function coefficients

#define TEST

int32_t *fir_filter(
		int32_t *instream,
		int32_t *coeffs
) {
	int32_t *_instream = instream;
	int32_t *_coeffs = coeffs;
	static int32_t _outstream[NUM_UNFILTERED];

	#ifdef TEST

		int32_t x_fir[2*(COEFFS_DIM-1)+NUM_UNFILTERED], y_conv;
		
		for (int i = 0; i < (2*(COEFFS_DIM-1)+NUM_UNFILTERED-1); i++){
			if (i<COEFFS_DIM-2){
				x_fir[i]=0;
			}
			else if (i>((COEFFS_DIM-1)+NUM_UNFILTERED-1)){
				x_fir[i]=0;
			}
			else{
				x_fir[i]=_instream[i-COEFFS_DIM+1];
			}	
			// printf("x_fir: %x\n",x_fir[i]);
		}

		for (int i = 0; i < (NUM_UNFILTERED+COEFFS_DIM-2); i++) {
			y_conv = 0;
			for (int j = 0; j < COEFFS_DIM; j++){
				y_conv += x_fir[i+j] * _coeffs[j];
			}
			printf("y_conv: %x\n", y_conv);
			_outstream[i] = y_conv;
		}

	#endif

	#ifdef HLS

		int32_t x_pipe[COEFFS_DIM];
		int32_t y_conv = 0;

		for (int j=0; j < COEFFS_DIM-1; j++){
			x_pipe[j+1]
		}

		for (int j = 0; j < COEFFS_DIM; j++){
			y_conv += _instream[i+COEFFS_DIM-j-1] * _coeffs[COEFFS_DIM-j-1];
		}
		printf("y_conv: %x\n", y_conv);
		_outstream[i] = y_conv;

	#endif

	return _outstream;
}

int main() {

	int32_t *test_inputs = stim_input;
	int32_t *test_coeffs = stim_coeff;

	for (int i=0; i<COEFFS_DIM; i++){
		printf("Coeff.%d = %d\n",i+1,*(test_coeffs+i));
	}

	int32_t *outstream = fir_filter(test_inputs, test_coeffs); 

	return 0;
}

#ifdef HLS
void create_window(hls::stream<uint32_t> &instream, hls::stream<uint32_t> &outstream, int rows, int cols)

#pragma HLS INTERFACE axis port=instream
#pragma HLS INTERFACE axis port=outstream
#pragma HLS interface ap_fifo port=stim_input


#endif
