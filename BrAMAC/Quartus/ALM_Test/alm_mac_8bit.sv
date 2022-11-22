module alm_mac_8bit (
		input  logic signed [7:0]   a, 
		input  logic signed [7:0]   b, 
		input  logic                clk, 
		input  logic                acc_en,
		input  logic                reset,

		output logic signed [26:0]  result
	);

	alm_mac #(.OWIDTH(8), .AWIDTH(27)) mac (
		.*
	);
	
endmodule