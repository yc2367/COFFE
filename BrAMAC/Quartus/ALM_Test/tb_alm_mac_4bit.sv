module tb_alm_mac_4bit;

  logic clk = 1;
  always #5 clk = ~clk;

  logic acc_en = 1;  
  logic reset = 1;  

	logic signed [3:0]   a; 
	logic signed [3:0]   b; 
	logic signed [15:0]  result; 

  alm_mac_4bit mac (
    .*
  );

  initial begin
    #11  reset = 1'b0;
         a =  6;  b =  4;
    #10  a = -5;  b =  3;
    #10  a = -8;  b = -2;
    #10  a =  7;  b = -1;

    #10  acc_en = 0;

    $stop;
  end  


endmodule