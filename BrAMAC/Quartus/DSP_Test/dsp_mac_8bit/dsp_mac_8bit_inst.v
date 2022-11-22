	dsp_mac_8bit u0 (
		.ay         (_connected_to_ay_),         //   input,   width = 8,         ay.ay
		.by         (_connected_to_by_),         //   input,   width = 8,         by.by
		.ax         (_connected_to_ax_),         //   input,   width = 8,         ax.ax
		.bx         (_connected_to_bx_),         //   input,   width = 8,         bx.bx
		.accumulate (_connected_to_accumulate_), //   input,   width = 1, accumulate.accumulate
		.resulta    (_connected_to_resulta_),    //  output,  width = 27,    resulta.resulta
		.clk0       (_connected_to_clk0_),       //   input,   width = 1,       clk0.clk
		.clk1       (_connected_to_clk1_),       //   input,   width = 1,       clk1.clk
		.clk2       (_connected_to_clk2_),       //   input,   width = 1,       clk2.clk
		.ena        (_connected_to_ena_),        //   input,   width = 3,        ena.ena
		.aclr0      (_connected_to_aclr0_),      //   input,   width = 1,      aclr0.reset
		.aclr1      (_connected_to_aclr1_)       //   input,   width = 1,      aclr1.reset
	);
