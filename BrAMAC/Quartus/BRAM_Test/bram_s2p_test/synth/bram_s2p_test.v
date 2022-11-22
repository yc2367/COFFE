// bram_s2p_test.v

// Generated using ACDS version 22.3 104

`timescale 1 ps / 1 ps
module bram_s2p_test (
		input  wire [39:0] data,      //      data.datain
		output wire [39:0] q,         //         q.dataout
		input  wire [8:0]  wraddress, // wraddress.wraddress
		input  wire [8:0]  rdaddress, // rdaddress.rdaddress
		input  wire        wren,      //      wren.wren
		input  wire        clock      //     clock.clk
	);

	bram_s2p_test_ram_2port_2021_agfsrzi ram_2port_0 (
		.data      (data),      //   input,  width = 40,      data.datain
		.q         (q),         //  output,  width = 40,         q.dataout
		.wraddress (wraddress), //   input,   width = 9, wraddress.wraddress
		.rdaddress (rdaddress), //   input,   width = 9, rdaddress.rdaddress
		.wren      (wren),      //   input,   width = 1,      wren.wren
		.clock     (clock)      //   input,   width = 1,     clock.clk
	);

endmodule
