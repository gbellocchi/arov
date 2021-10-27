module engine_lowest_wrapper (
	  // Global signals
	  input  logic          clk_i,
	  input  logic          rst_ni,
	  input  logic          test_mode_i,

	  // Sink ports (N+1)
	  hwpe_stream_intf_stream.sink    in0_i,
	  ...
	  hwpe_stream_intf_stream.sink    inN_i,
	  // Source ports (M+1)
	  hwpe_stream_intf_stream.source  out0_o,
	  ...
	  hwpe_stream_intf_stream.source  outM_o,
	  // Control channel
	  input  ctrl_engine_t            ctrl_i,
	  output flags_engine_t           flags_o
);


	// auxiliary signals
	logic ap_done, ap_ready, ap_idle, ap_start;
	logic in0_done, ..., inN_done;
	logic out0_done, ..., outM_done;
	logic unsigned [$clog2(MAX_LEN):0] in0_cnt, ..., inN_cnt;
	logic unsigned [$clog2(MAX_LEN):0] out0_cnt, ..., outM_cnt;

	// control from/to fsm
	assign ap_start = ctrl_i.start;
	assign flags_o.done = ap_done;
	assign flags_o.ready = ap_ready;
	assign flags_o.idle = ap_idle;
	// assign clear = ctrl_i.clear;		// don't know if it has to be kept or not

	// done, ready, idle generation
	assign ap_done = done_out0 & ... & done_outM;
	assign ap_ready = done_in0 & ... & done_inN;

	always_ff @(posedge clk_i or negedge rst_ni)
  	begin: ap_idle_reg
		if(~rst_ni)
      		ap_idle = 1'b0;
    	else if(ap_start)
			ap_idle = 1'b1;
		else if(ap_done)
			ap_idle = 1'b0;
		else
			ap_idle = ap_idle;

	// Sink ports (N+1) counters and dones
	always_ff @(posedge clk_i or negedge rst_ni)
  	begin: cnt_in0
    	if(~rst_ni)
      		cnt_in0 = 1'b0;
    	else if(!ap_idle)
			if(in0.valid && in0.ready)
      			cnt_in0 = cnt_in0 + 1;
			else
				cnt_in0 = cnt_in0;
    	else
      		cnt_in0 = 1'b0;
	end	
	assign done_in0 = cnt_in0 == ctrl_i.max_in0;

	...

	always_ff @(posedge clk_i or negedge rst_ni)
  	begin: cnt_inN
    	if(~rst_ni)
      		cnt_inN = 1'b0;
    	else if(!ap_idle)
			if(inN.valid && inN.ready)
      			cnt_inN = cnt_inN + 1;
			else
				cnt_inN = cnt_inN;
    	else
      		cnt_inN = 1'b0;;
	end
	assign done_inN = cnt_inN == ctrl_i.max_inN;


	// Source ports (M+1) counters and dones
	always_ff @(posedge clk_i or negedge rst_ni)
  	begin: cnt_out0
    	if(~rst_ni)
      		cnt_out0 = 1'b0;
    	else if(!ap_idle)
			if(out0.valid && out0.ready)
      			cnt_out0 = cnt_out0 + 1;
			else
				cnt_out0 = cnt_out0;
    	else
      		cnt_out0 = 1'b0;
	end
	assign done_out0 = cnt_out0 == ctrl_i.max_out0;

	...

	always_ff @(posedge clk_i or negedge rst_ni)
  	begin: cnt_outM
    	if(~rst_ni)
      		cnt_outM = 1'b0;
    	else if(!ap_idle)
			if(outM.valid && outM.ready)
      			cnt_outM = cnt_outM + 1;
			else
				cnt_outM = cnt_outM;
    	else
      		cnt_outM = 1'b0;
	end
	assign done_outM = cnt_outM == ctrl_i.max_outM;

	
	engine_dpath i_engine_dpath (
          // Global signals
          .ap_clk             ( clk_i            ),
          .ap_rst_n           ( rst_ni           ),
          // Input data (to-hwpe)
          .in0_V_TDATA  ( in0_i.data  ), .in0_V_TVALID ( in0_i.valid ), .in0_V_TREADY ( in0_i.ready ),
		  ...
          .inN_V_TDATA  ( inN_i.data  ), .inN_V_TVALID ( inN_i.valid ), .inN_V_TREADY ( inN_i.ready ),
          // Output data (from-hwpe)
          .out0_V_TDATA  ( out0_o.data  ), .out0_V_TVALID ( out0_o.valid ), .out0_V_TREADY ( out0_o.ready ),
		  ...
          .outM_V_TDATA  ( outM_o.data  ), .outM_V_TVALID ( outM_o.valid ), .y_V_TREADY ( outM_o.ready ),
          // Algorithm parameters
		  ...   
	);

endmodule
