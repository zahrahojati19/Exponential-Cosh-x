module Register(input [15:0] Sin,input ld,clk,rst,set1,set0,output reg [15:0]Sout);
       always @(posedge clk,posedge rst)begin
          if(rst) Sout<=16'b0;
          else if(set0) Sout<=16'b0;
          else if(set1) Sout<=16'hFFFF;
          else if(ld) Sout<=Sin;
       end
endmodule
