`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////



module trafic_light(clk,r,m1,m2,mt,s);
output reg [2:0]m1,m2,mt,s;
input clk,r;
parameter t1=7,t2=5,t3=3,t4=2,t5=4,t6=1;
parameter s1=0,s2=1,s3=2,s4=3,s5=4,s6=5;
reg [2:0] ns;
reg [3:0] count;

always@(posedge clk or posedge r)begin
if(r==1)begin
ns<=s1;
count<=count+1;
end
else
    case(ns)
    s1: if(count<t1)begin
        ns<=s1;
        count<=count+1;
        end
        else
        begin
            ns<=s2;
            count<=0;
            end
     s2: if(count<t2)begin
        ns<=s2;
        count<=count+1;
        end
        else
        begin
            ns<=s3;
            count<=0;
            end
  s3: if(count<t3)begin
        ns<=s3;
        count<=count+1;
        end
        else
        begin
            ns<=s4;
            count<=0;
            end
  s4: if(count<t4)begin
        ns<=s4;
        count<=count+1;
        end
        else
        begin
            ns<=s5;
            count<=0;
            end
  s5: if(count<t5)begin
        ns<=s5;
        count<=count+1;
        end
        else
        begin
            ns<=s1;
            count<=0;
            end
    default:begin
            ns<=s1;
            count<=0;
            end
endcase
end
always@(ns)
begin
case(ns)
        s1: begin
        m1<=001;
        m2<=001;
        mt<=100;
        s<=100;
        end
 s2: begin
        m1<=001;
        m2<=010;
        mt<=100;
        s<=100;
        end
 s3: begin
        m1<=001;
        m2<=100;
        mt<=001;
        s<=100;
        end
 s4: begin
        m1<=010;
        m2<=100;
        mt<=010;
        s<=100;
        end
 s5: begin
        m1<=100;
        m2<=100;
        mt<=100;
        s<=001;
        end
 s6: begin
        m1<=100;
        m2<=100;
        mt<=100;
        s<=010;
        end
  default:  begin
        m1<=000;
        m2<=000;
        mt<=000;
        s<=000;
        end
       endcase
       end

endmodule
