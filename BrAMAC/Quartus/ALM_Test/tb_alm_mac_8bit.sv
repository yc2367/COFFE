module tb_alm_mac_8bit;

  logic clk = 1;
  always #5 clk = ~clk;

  logic acc_en = 1;  
  logic reset = 1;  

	logic signed [7:0]   a; 
	logic signed [7:0]   b; 
	logic signed [26:0]  result; 

  alm_mac_8bit mac (
    .*
  );

  initial begin
    #11  reset = 1'b0;
         a =  4;   b =  7;
    #10  a =  8;   b =  9;
    #10  a = -99;  b = -70;
    #10  a =  65;  b = -121;

    #10  acc_en = 0;

    $stop;
  end  


endmodule