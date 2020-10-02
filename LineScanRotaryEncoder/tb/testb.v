`timescale 1ns / 1ps

module testb;

reg fclk=0;
reg rstn=1;
reg [15:0]progAmplFactor=0;
reg quadA;
reg quadB;
integer i=0;
integer n=19;

wire PulseOut;

Triggen DUT(fclk, rstn, quadA, quadB, progAmplFactor, PulseOut);

always
begin
	fclk = #5 ~fclk;
end


initial
begin
	#2;
	rstn = 0;
	quadA = 0;
	quadB = 0;
	#4;
	progAmplFactor = 'd10;
	#1;
	rstn = 1;

	repeat (100)
	begin
	    if(i==0)
	    begin 
	      #3;
	    end 
	    
	    if(((i % 4 )!= 0) && (i != 0))
	    begin
	      quadA = ~quadA;
	      #500;
	      quadB = ~quadB;
	      #500;
	      /*quadB = ~quadB;
	      #250;
	      quadB = ~quadB;
	      #250;*/
	    end
	    else
	    begin
		repeat (n)
		begin	
		    quadA = #1 ~quadA;
	    	end
	    	    #(500-n);

		repeat(n)	
		begin	
	    	    quadB = #1 ~quadB;
		end
		    #(500-n);
	    end 
		
	    /*else
	    begin
	      quadB = ~quadB;
	      #10;
	      quadA = ~quadA;
	      #10;
	    end*/
	i=i+1;
	n = n +10;
	end




	#33350 $finish;



end




endmodule
	
