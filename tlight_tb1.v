`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Create Date: 04/16/2024 03:16:29 PM
// Design Name: 
// Module Name: tlight_tb1



module tlight_tb1;
reg clk,r;
wire [2:0]m1;
wire [2:0]m2;
wire [2:0] mt;
wire [2:0] s;
trafic_light dut(clk,r,m1,m2,mt,s);

initial
begin
clk=1'b0;
forever #(1000000000/2) clk=~clk;
end

initial
begin r=1'b0;
#1000000000;
r=1'b1;
#1000000000;
r=1'b0;
#100000000000;
$finish;
end
endmodule
