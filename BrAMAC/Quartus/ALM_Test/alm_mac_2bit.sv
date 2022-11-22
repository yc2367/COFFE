module alm_mac_2bit (
		input  logic signed [1:0]  a, 
		input  logic signed [1:0]  b, 
		input  logic               clk, 
		input  logic               acc_en,
		input  logic               reset,

		output logic signed [7:0]  result
	);

	alm_mac #(.OWIDTH(2), .AWIDTH(8)) mac (
		.*
	);
	
endmodule