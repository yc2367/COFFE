module alm_mac_4bit (
		input  logic signed [3:0]   a, 
		input  logic signed [3:0]   b, 
		input  logic                clk, 
		input  logic                acc_en,
		input  logic                reset,

		output logic signed [15:0]  result
	);

	alm_mac #(.OWIDTH(4), .AWIDTH(16)) mac (
		.*
	);
	
endmodule