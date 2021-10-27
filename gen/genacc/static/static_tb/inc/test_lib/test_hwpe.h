/*
 * 
 * Authors:     Gianluca Bellocchi <gianluca.bellocchi@unimore.it>
 * 
 * Simple C functions to aid the baremetal simulation phase.
 *
 */

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>

inline static __attribute__((used)) void  check_tcdm_content          (int32_t * l1_base, int32_t num_read);

void check_tcdm_content(int32_t * l1_base, int32_t num_read){
  int i,j,cnt;
  char hex=1;
  char bin=0;

  // Write TCDM in hex
  if(hex){
    // printf("START\n");
    for(i=0;i<(num_read);i++){
      printf("%p [%x]\n",(l1_base+i),*(l1_base+i));
    }
    // printf("END\n\n");
  }

  // Write TCDM in bin
  if(bin){
    // printf("START\n");
    for(i=0;i<(num_read);i++){
      int32_t n = *(l1_base+i);
      int32_t n_width = 32-1;
      char n_bin [n_width-1];
      j = 0;
      printf("%p [",(l1_base+i));
      // Conversion
      while (j!=n_width) {
        if (n & 1)
          n_bin[j]=1;
        else
          n_bin[j]=0;
        n >>= 1;
        j++;
      }
      // Big-endian print
      j = n_width-1;
      while (j>=0) {
        if (n_bin[j])
          printf("1");
        else
          printf("0");
        j--;
      }
      printf("]\n");
    }
    // printf("END\n\n");
  }
}