module tb_alm_mac_2bit;

  logic clk = 1;
  always #5 clk = ~clk;

  logic acc_en = 1;  
  logic reset = 1;  

	logic signed [1:0]  a; 
	logic signed [1:0]  b; 
	logic signed [7:0]  result; 

  alm_mac_2bit mac (
    .*
  );

  initial begin
    #11  reset = 1'b0;
         a = -2;  b =  1;
    #10  a = -1;  b =  0;
    #10  a =  0;  b = -2;
    #10  a =  1;  b = -1;

    #10  acc_en = 0;

    $stop;
  end  


endmodule