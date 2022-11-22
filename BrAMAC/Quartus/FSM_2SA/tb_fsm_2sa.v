`include "defines.v" // Define key parameters
module tb_fsm_2sa;

  logic clk = 1;
  always #5 clk = ~clk;

  logic comp_en = 1;  
  logic reset_bram = 1;                 // Global BRAM reset

  logic [`DWIDTH-1:0] inst;             // BrAMAC instruction

  logic               carry_in;         // Adder carry in, '0' for addition, '1' for subtraction
  logic               ren_1_dummy;      // Dummy array read port 1 enable
  logic               ren_2_dummy;      // Dummy array read port 2 enable
  logic               wen_1_dummy;      // Dummy array write port 1 enable
  logic               wen_2_dummy;      // Dummy array write port 2 enable
  logic [2:0]         raddr_1_dummy;    // Dummy array 1 read address 1
  logic [2:0]         raddr_2_dummy;    // Dummy array 1 read address 2
  logic [2:0]         waddr_1_dummy;    // Dummy array write address 1
  logic [2:0]         waddr_2_dummy;    // Dummy array write address 2
  logic [1:0]         wsel_1_dummy;     // Dummy array write mux sel 1
  logic               wsel_2_dummy;     // Dummy array write mux sel 2
  logic               readout_dummy;    // Whether read out dummy array accumulator

  fsm_2sa fsm (
    .*
  );

//  <DUMMY> <Reset> <Start> <Done> <copy_en> <Mode>  <BRAM_ROW_ADDR>  <BRAM_COL_ADDR_1> <BRAM_COL_ADDR_2> <Input>  
//  15 bits  1 bit   1 bit  1 bit    1 bit   2 bits       7 bits           2 bits             2 bits       8 bits   
//  39:25     24      23      22      21     20:19        18:12            11:10               9:8          7:0 

  initial begin
    #10 reset_bram = 1'b0;
    #1  inst = { {15{1'b0}}, 1'b0, 1'b1, 1'b0, 1'b0, 2'b10, 7'd0, 2'b00, 2'b01, 8'b00000000}; // initialize accumulator
    #20 inst = { {15{1'b0}}, 1'b0, 1'b0, 1'b0, 1'b1, 2'b10, 7'd0, 2'b00, 2'b01, 8'b01010000}; // initialize W1 and input_1
    #10 inst = { {15{1'b0}}, 1'b0, 1'b0, 1'b0, 1'b1, 2'b10, 7'd1, 2'b00, 2'b01, 8'b00110000}; // initialize W2 and input_2

    #60 inst = { {15{1'b0}}, 1'b0, 1'b0, 1'b0, 1'b1, 2'b10, 7'd2, 2'b00, 2'b01, 8'b10100000};
    #10 inst = { {15{1'b0}}, 1'b0, 1'b0, 1'b0, 1'b1, 2'b10, 7'd3, 2'b00, 2'b01, 8'b11000000};

    #60 inst = { {15{1'b0}}, 1'b0, 1'b0, 1'b0, 1'b1, 2'b10, 7'd4, 2'b00, 2'b01, 8'b10100000};
    #10 inst = { {15{1'b0}}, 1'b0, 1'b0, 1'b0, 1'b1, 2'b10, 7'd5, 2'b00, 2'b01, 8'b00110000};
    
    #60 inst = { {15{1'b0}}, 1'b0, 1'b0, 1'b0, 1'b1, 2'b10, 7'd6, 2'b00, 2'b01, 8'b10100000};
    #10 inst = { {15{1'b0}}, 1'b0, 1'b0, 1'b0, 1'b1, 2'b10, 7'd7, 2'b00, 2'b01, 8'b11110000};
    
    #60 inst = { {15{1'b0}}, 1'b0, 1'b0, 1'b0, 1'b1, 2'b10, 7'd8, 2'b00, 2'b01, 8'b01010000};
    #10 inst = { {15{1'b0}}, 1'b0, 1'b0, 1'b0, 1'b1, 2'b10, 7'd9, 2'b00, 2'b01, 8'b00000000};

    #60 inst = { {15{1'b0}}, 1'b0, 1'b0, 1'b1, 1'b0, 2'b10, 7'd0, 2'b00, 2'b00, 8'b00000000};
    #10 inst = { {15{1'b0}}, 1'b0, 1'b0, 1'b1, 1'b0, 2'b10, 7'd0, 2'b00, 2'b00, 8'b00000000};

    $stop;
  end  


endmodule