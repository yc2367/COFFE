module dsp_mac_8bit_stratix (
		input  wire [7:0]  ay,         //         ay.ay
		input  wire [7:0]  by,         //         by.by
		input  wire [7:0]  ax,         //         ax.ax
		input  wire [7:0]  bx,         //         bx.bx
		input  wire        accumulate, // accumulate.accumulate
		output wire [26:0] resulta,    //    resulta.resulta
		input  wire        clk0,       //       clk0.clk
		input  wire        clk1,       //       clk1.clk
		input  wire        clk2,       //       clk2.clk
		input  wire [2:0]  ena,        //        ena.ena
		input  wire        clr0,       //       clr0.reset
		input  wire        clr1        //       clr1.reset
	);
endmodule

