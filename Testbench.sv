// Code your testbench here
// or browse Examples
module calculator_tb;
  
  logic [3:0] data_a_in;
  logic [3:0] data_b_in;
  logic [1:0] function_in;
  logic [7:0] out;
  
  calculator UUT (.data_a_in(data_a_in) , .data_b_in(data_b_in) , .function_in(function_in) , .out(out));
  
  initial
    begin
      
      function_in =0;
      data_a_in = 2;
      data_b_in = 2;
      #20;
      $display("the addition of %d and %d is %d", data_a_in,data_b_in,out);
      
      function_in =1;
      data_a_in = 8;
      data_b_in = 2;
      #20;
      $display("the subtraction of %d and %d is %d", data_a_in,data_b_in,out);
      
      function_in =2;
      data_a_in = 4;
      data_b_in = 2;
      #20;
      $display("the multiplication of %d and %d is %d", data_a_in,data_b_in,out);
      
      function_in =3;
      data_a_in = 8;
      data_b_in = 2;
      #20;
      $display("the division of %d and %d is %d", data_a_in,data_b_in,out);
      
    end
endmodule
