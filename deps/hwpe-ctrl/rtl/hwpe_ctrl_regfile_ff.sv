/* 
 * hwpe_ctrl_regfile_ff.sv
 * Francesco Conti <fconti@iis.ee.ethz.ch>
 *
 * Contribute: Gianluca Bellocchi <gianluca.bellocchi@unimore.it>
 *
 * Copyright (C) 2014-2018 ETH Zurich, University of Bologna
 * Copyright and related rights are licensed under the Solderpad Hardware
 * License, Version 0.51 (the "License"); you may not use this file except in
 * compliance with the License.  You may obtain a copy of the License at
 * http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
 * or agreed to in writing, software, hardware and materials distributed under
 * this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
 * CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 */

module hwpe_ctrl_regfile_ff
#(
   parameter ADDR_WIDTH    = 5,
   parameter DATA_WIDTH    = 32,
   parameter NUM_BYTE      = DATA_WIDTH/8
)
(
   input  logic                                clk,
   input  logic                                rst_n,
   input  logic                                clear,

   // Read port
   input  logic                                ReadEnable,
   input  logic [ADDR_WIDTH-1:0]               ReadAddr,
   output logic [DATA_WIDTH-1:0]               ReadData,

   // Write port
   input  logic                                WriteEnable,
   input  logic [ADDR_WIDTH-1:0]               WriteAddr,
   input  logic [NUM_BYTE-1:0][7:0]            WriteData,
   input  logic [NUM_BYTE-1:0]                 WriteBE,

   // Memory content (false paths!)
   output logic [2**ADDR_WIDTH-1:0][DATA_WIDTH-1:0] MemContent
);
   
   localparam    NUM_WORDS = 2**ADDR_WIDTH;
   
   // Read address register, located at the input of the address decoder
   logic [ADDR_WIDTH-1:0]                       RAddrRegxDP;
   logic [NUM_WORDS-1:0]                        RAddrOneHotxD;
   
   logic [NUM_BYTE-1:0][7:0]                    MemContentxDP[NUM_WORDS];
   
   logic [NUM_WORDS-1:0][NUM_BYTE-1:0]          WAddrOneHotxD;
  //  logic [NUM_WORDS-1:0][NUM_BYTE-1:0]          ClocksxC;
   logic [NUM_BYTE-1:0][7:0]                    WDataIntxD;
   
  //  logic                                        clk_int;
   
   int                                          unsigned i;
   int                                          unsigned j;
   int                                          unsigned k;
   int                                          unsigned l;
   int                                          unsigned m;
   
   genvar                                       x;
   genvar                                       y;

   //-----------------------------------------------------------------------------
   //-- READ : Read address register
   //-----------------------------------------------------------------------------

   always_ff @(posedge clk)
     begin : p_RAddrReg
        if (~rst_n | clear)
          RAddrRegxDP <= '0;
        else if(ReadEnable)
          RAddrRegxDP <= ReadAddr;
        else
          RAddrRegxDP <= '0;
     end
   
   //-----------------------------------------------------------------------------
   //-- READ : Read address decoder RAD
   //----------------------------------------------------------------------------- 

   always_comb
     begin : p_RAD
        RAddrOneHotxD = '0;
        RAddrOneHotxD[RAddrRegxDP] = 1'b1;
     end
   assign ReadData = MemContentxDP[RAddrRegxDP];
   
   always_ff @(posedge clk)
     begin : _wdata
        for(k=0; k<NUM_WORDS; k++)
          begin : w_WordIter
             for(l=0; l<NUM_BYTE; l++)
               begin : w_ByteIter
                  if (~rst_n | clear)
                    MemContentxDP[k][l] <= '0;
                  else if( (WriteEnable == 1'b1 ) && (WriteBE[j] == 1'b1) && (WriteAddr == k) )
                    MemContentxDP[k][l] <= WriteData[l];
                  else
                    MemContentxDP[k][l] <= MemContentxDP[k][l];
               end
          end
     end
   
   // false paths!!!
   genvar p;
   generate
     for(p=0; p<NUM_WORDS; p++) begin : MemContentOut_Iter
       assign MemContent[p] = MemContentxDP[p];
     end
   endgenerate

endmodule // hwpe_ctrl_regfile_fpga
