module Controller(input start,cout,clk,rst,output reg cnt,initC,ROM,ld,ldT,initT,initRfinal,ldRfinal,busy,ready);
	parameter [3:0]idle=0,init=1,Begin=2,Mult1=3,Mult2=4,Mult3=5,Add=6,Mult4=7;
	reg [3:0]ps,ns;

	always@(ps,start,cout)begin
		{initC,cnt,ld,ROM,ldT,initT,ldRfinal,initRfinal,busy,ready}=10'b0;
		case(ps)
			idle: begin
				ns=start?init:idle;
				ready=1'b1;
			end
			init: begin
				ns=start?init:Begin;
				initRfinal=1'b1; initT=1'b1;initC=1'b1;
			end
			Begin: begin
				ns=Mult1;
				ld=1'b1;
			end
			Mult1: begin
				ns=Mult2;
				busy=1'b1;ldT=1'b1;
			end
			Mult2: begin
				ns=Mult3;
				busy=1'b1;ldT=1'b1;ROM=1'b1;
			end
			Mult3: begin
				ns=Add;
				busy=1'b1;ldT=1'b1;ROM=1'b1;
			end
			Add: begin
				ns=cout?idle:Mult4;
				busy=1'b1;ldRfinal=1'b1;cnt=1'b1;
			end
			Mult4: begin
				ns=Mult1;
				busy=1'b1;ldT=1'b1;
			end
			default: ns=idle;
		endcase
	end
	always @(posedge clk,posedge rst)begin
		if (rst) ps<=idle;
		else ps<=ns;
	end
endmodule
