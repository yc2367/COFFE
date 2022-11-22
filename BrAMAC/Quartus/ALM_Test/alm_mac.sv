module alm_mac #(parameter OWIDTH=8, parameter AWIDTH=27) (
		input  logic signed [OWIDTH-1:0]  a, 
		input  logic signed [OWIDTH-1:0]  b, 
		input  logic                      clk, 
		input  logic                      acc_en,
		input  logic                      reset,

		output logic signed [AWIDTH-1:0]  result
	);
	
	logic signed [OWIDTH-1:0]   ax, bx;
	logic signed [OWIDTH*2-1:0] product;
	logic signed [AWIDTH-1:0]   old_result;
	
	assign product = ax * bx;
	
	always @( posedge clk ) begin
		if ( reset ) begin
			ax <= 0;
			bx <= 0;
			old_result <= 0;
		end else if ( acc_en ) begin
			ax <= a;
			bx <= b;
			old_result <= result;
		end
	end
	
	assign result = old_result + product;
	
endmodule