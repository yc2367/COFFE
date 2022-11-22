module dsp_mac_8bit_test (
		input  logic [7:0]  a2,         //         ay.ay
		input  logic [7:0]  b2,         //         by.by
		input  logic [7:0]  a1,         //         ax.ax
		input  logic [7:0]  b1,         //         bx.bx
		output logic [26:0] resulta,    //    resulta.resulta
		input  logic        clk,        //       
		input  logic        reset       //       
	);
	
	logic accumulate, aclr0, aclr1; 
	logic [7:0] ax, ay, bx, by;
	
	assign aclr0 = reset;
	assign aclr1 = reset;

	always @( posedge clk ) begin
		if ( reset ) begin
			accumulate <= 1'b0;
			ax <= 7'd0;
			ay <= 7'd0;
			bx <= 7'd0;
			by <= 7'd0;
		end else begin
			accumulate <= 1'b1;
			ax <= a1;
			ay <= a2;
			bx <= b1;
			by <= b2;
		end
	end
	
	dsp_mac_8bit dsp (
		.clk0  (clk),
		.clk1  (clk),
		.clk2  (clk),
		.ena   ({3'b111}),
		.*
	);

	endmodule
		
		