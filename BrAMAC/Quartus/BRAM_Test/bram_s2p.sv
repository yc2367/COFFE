module bram_s2p (
		input  logic [39:0]  din,     //  datain
		input  logic [8:0]   waddr,   //  write address
		input  logic [8:0]   raddr,   //  read address
		input  logic         wen,     //  write enable
		input  logic         reset,   //  reset
		input  logic         clk,     //  clock

		output logic [39:0]  dout     //  dataout
	);

	logic [8:0]  wraddress;
	logic [39:0] data; 

	logic [8:0]  rdaddress;
	logic [39:0] q;  

	logic        wren;

	assign rdaddress = raddr;
	assign wraddress = waddr;
	assign data      = din;
	
	always @( posedge clk ) begin
		if ( reset ) begin
			dout <= 40'd0;
			wren <= 1'b0;
		end else begin
			dout <= q;
			wren <= wen;
		end
	end
	
	bram_s2p_test bram (
		.clock  (clk),
		.*
	);

	endmodule
		
		