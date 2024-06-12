// Code your design here
module calculator(
  input logic [3:0] data_a_in,
  input logic [3:0] data_b_in,
  input logic [1:0] function_in,
  output logic [7:0] out
);
  reg [7:0] out_sum,out_sub,out_mul,out_div;
  assign out = out_sum|out_sub|out_mul|out_div; // defining the overall output
  always @(data_a_in or data_b_in)
    begin
      case(function_in)
        
        2'b00 : begin //o for sum
          out_sum<= data_a_in + data_b_in;
          out_sub<=7'd0;
          out_mul<=7'd0;
          out_div<=7'd0;
        end
        2'b01 : begin // 1 for subtraction
          out_sub<=data_a_in - data_b_in;
          out_sum<= 7'd0;
          out_mul<=7'd0;
          out_div<=7'd0;
        end
        2'b10 : begin // 2 for multiplication
          out_mul<=data_a_in*data_b_in;
          out_sum<= 7'd0;
          out_sub<=7'd0;
          out_div<=7'd0;
        end
        2'b11 : begin // 3 for division
          out_div<=data_a_in/data_b_in;
          out_sum<= 7'd0;
          out_sub<=7'd0;
          out_mul<=7'd0;
        end
      endcase
    end
endmodule
