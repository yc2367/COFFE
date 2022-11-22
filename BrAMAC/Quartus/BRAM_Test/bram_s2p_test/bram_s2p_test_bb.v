module bram_s2p_test (
		input  wire [39:0] data,      //      data.datain
		output wire [39:0] q,         //         q.dataout
		input  wire [8:0]  wraddress, // wraddress.wraddress
		input  wire [8:0]  rdaddress, // rdaddress.rdaddress
		input  wire        wren,      //      wren.wren
		input  wire        clock      //     clock.clk
	);
endmodule

