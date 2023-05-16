module LUT(input [3:0]addr,input clk,output [15:0]w);
       reg [15:0] data;
       always @(addr,clk)begin
          case(addr)
              0: data=16'hFFFF; //1
              1: data=16'h8000; //1/2
              2: data=16'h5555; //1/3
              3: data=16'h4000; //1/4
              4: data=16'h3333; //1/5
              5: data=16'h2AAA; //1/6
              6: data=16'h2492; //1/7
              7: data=16'h2000; //1/8
              8: data=16'h1C71; //1/9
              9: data=16'h1999; //1/10
              10: data=16'h1745; //1/11
              11: data=16'h1555; //1/12
              12: data=16'h13B1; //1/13
              13: data=16'h1249; //1/14
              14: data=16'h1111; //1/15
              15: data=16'h1000; //1/16
          endcase
       end
       assign w=data;
endmodule
