
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2024 07:41:58 PM
// Design Name: 
// Module Name: tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb;
reg [3:0]b;
reg clk = 0;
reg s1,s0,r_in,l_in;

wire [3:0]y,q;

usr u1 (.b(b), .clk(clk),.s1(s1),.s0(s0),.r_in(r_in),.l_in(l_in), .y(y),.q(q));

always # 50 clk = ~clk;

initial begin
b = 4'b0101;
s1 = 1;
s0 =1 ;
r_in = 1;
l_in = 1;

  #100; s1 = 0; s0 =0;
  $display("y = %b",y);
   #100; s1 = 0; s0 =0; r_in =1; l_in =1;
  $display("y = %b",y);
  
   #100; r_in = 0; l_in =1;
  $display("y = %b",y);
  
   #100; s1 = 0; s0 =1;
  $display("y = %b",y);
  
   #100; s1 = 0; s0 =0;
  $display("y = %b",y);
  
   #100; r_in = 1; l_in =1;
  $display("y = %b",y);
  
   #100; s1 = 1; s0 =0;
  $display("y = %b",y); 
  
  #100; s1 = 0; s0 =0;
  $display("y = %b",y);
   #100; s1 = 0; s0 =1;
  $display("y = %b",y);
   #100; s1 = 0; s0 =1;
  $display("y = %b",y);
   #100; s1 = 1; s0 =0;
  $display("y = %b",y);
   #100; s1 = 1; s0 =0;
  $display("y = %b",y);
   #100; s1 = 1; s0 =1;
  $display("y = %b",y);
  
#100;
  $finish;
end

endmodule







