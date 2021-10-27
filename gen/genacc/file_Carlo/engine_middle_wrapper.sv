// this is level K loop wrapper with associated max_lK parameter in ctrl_i (overall number of iterations for inputs and outputs)

module engine_middle_wrapper (
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

	// lower level control
	ctrl_engine_t            ctrl_i_low;
	flags_engine_t           flags_o_low;

	// lower level signals
	logic ap_done, ap_ready, ap_idle, ap_start;

	// control from/to fsm
	assign ap_start = ctrl_i.start;
	assign flags_o.done = ap_done;
	assign flags_o.ready = ap_ready;
	assign flags_o.idle = ap_idle;
	// assign clear = ctrl_i.clear;		// don't know if it has to be kept or not

	always_ff @(posedge clk_i or negedge rst_ni)
  	begin: ap_idle
		if(~rst_ni)
      		ap_idle = 1'b1;
    	else if(ap_start)
			ap_idle = 1'b0;
		else if(ap_done)
			ap_idle = 1'b1;
		else
			ap_idle = ap_idle;
	assign ctrl_i_low.ap_start = !ap_idle && !ap_done; // start can be left high up to computation end according to Vivado HLS documentation

	// Lower readys counter and upper ready generation
	always_ff @(posedge clk_i or negedge rst_ni)
  	begin: cnt_ready_lK
    	if(~rst_ni)
      		cnt_ready_lK = 1'b0;
    	else if(!ap_idle)
			if(flags_o_low.ap_ready)
      			cnt_ready_lK = cnt_ready_lK + 1;
			else
				cnt_ready_lK = cnt_ready_lK;
    	else
      		cnt_ready_lK = 1'b0;
	end	
	assign ap_ready = cnt_ready_lK == ctrl_i.max_lK;

	// Lower dones counter and upper done generation
	always_ff @(posedge clk_i or negedge rst_ni)
  	begin: cnt_done_lK
    	if(~rst_ni)
      		cnt_done_lK = 1'b0;
    	else if(!ap_idle)
			if(flags_o_low.ap_done)
      			cnt_done_lK = cnt_done_lK + 1;
			else
				cnt_done_lK = cnt_done_lK;
    	else
      		cnt_done_lK = 1'b0;
	end	
	assign ap_done = cnt_done_lK == ctrl_i.max_lK;

	engine_middle_wrapper i_middle_wrapper ( // or engine_lowest_wrapper or engine_dpath from Vivadl HSL with internal ctrl/flag signals
          // Global signals
          .ap_clk             ( clk_i            ),
          .ap_rst_n           ( rst_ni           ),
	  	  // Sink ports (N+1)
          .in0_i  ( in0_i ),
		  ...
          .inN_i  ( inN_i  ),
	  	  // Source ports (M+1)
          .out0_o  ( out0_o ),
		  ...
          .outM_o  ( outM_o ),
	  		// Control channel
	  	  .ctrl_i  ( ctrl_i_low ),
	  	  .flags_o  ( flags_o_low )
	);

	// copy parameters to lower level control
	// inner loops max
	ctrl_i_low.max_lL = ctrl_i.max_lL;
	ctrl_i_low.max_lZ = ctrl_i.max_lZ;
	// lowest loop max
	ctrl_i_low.max_in0 = ctrl_i.max_in0;
	...
	ctrl_i_low.max_inN = ctrl_i.max_inN;
	ctrl_i_low.max_out0 = ctrl_i.max_out0;
	...
	ctrl_i_low.max_outM = ctrl_i.max_outM;
    // Algorithm parameters
	...

endmodule
