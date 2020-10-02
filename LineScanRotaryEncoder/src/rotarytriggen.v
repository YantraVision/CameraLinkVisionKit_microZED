//`timescale 1ns / 1ps


module Triggen(fclk, rstn, quadA, quadB, progAmplFactor,  pulseOut/*,minValue, pulseOut, realPulseWidth, pulseGenCount, amplFactor, pulseGenCountMatchConfigRatio_internal, quadA_delayed, countEst, amplFactorDelayed*/);
input fclk;
input rstn;
input quadA;
input quadB;
input [15:0]progAmplFactor;
//input [31:0]minValue;

output reg pulseOut;

reg [31:0] realPulseWidth;
reg [31:0] countEst;
reg [31:0]  pulseGenCount;
reg [2:0] quadA_delayed;
reg [2:0]quadB_delayed;
reg [31:0]amplFactorDelayed;

wire [31:0]amplFactor;
//wire pulseGenCountMatchConfigRatio;

reg pulseGenCountMatchConfigRatio_internal;
wire pulseGenCountMatchConfigRatio;
//assign quadEn = quadA_delayed[1] ^ quadA_delayed[2] ^ quadB_delayed[1] ^ quadB_delayed[2];

wire quadADebounced;
wire quadBDebounced;

reg [1:0]quadADebouncedDelayed;
reg [1:0]quadBDebouncedDelayed;

reg [6:0]runADeCnt;
reg [6:0]runBDeCnt;

reg [3:0]latchCount;

assign amplFactor = realPulseWidth/progAmplFactor;

always @(posedge fclk) quadA_delayed <= {quadA_delayed[1:0], quadA};
always @(posedge fclk) quadB_delayed <= {quadB_delayed[1:0], quadB};

always @(posedge fclk) quadADebouncedDelayed <= {quadADebouncedDelayed[0], quadADebounced};
always @(posedge fclk) quadBDebouncedDelayed <= {quadBDebouncedDelayed[0], quadBDebounced};


always @(posedge fclk)
begin
   if (!rstn)
   begin
      runADeCnt <= 'h0;
   end else begin
	   if (quadA_delayed[2] == quadA_delayed[1]) begin // Dont Change
		  if (runADeCnt <= 50) begin
                     runADeCnt <= runADeCnt + 1;
	          end else begin
		     runADeCnt <= runADeCnt;
	          end 
           end else begin
             runADeCnt <= 'h0;
           end
   end
end

always @(posedge fclk)
begin
   if (!rstn)
   begin
      runBDeCnt <= 'h0;
   end else begin
	   if (quadB_delayed[2] == quadB_delayed[1]) begin // Dont Change
		  if (runBDeCnt <= 50) begin
                     runBDeCnt <= runBDeCnt + 1;
	          end else begin
		     runBDeCnt <= runBDeCnt;
	          end 
           end else begin
             runBDeCnt <= 'h0;
           end
   end
end

assign quadADebounced = (runADeCnt == 50 ) ? quadA_delayed[2] :  quadADebounced; // Dont Change
assign quadBDebounced = (runBDeCnt == 50 ) ? quadB_delayed[2] :  quadBDebounced; // Dont Change

always @(posedge fclk)                      //Added for the 10 cycle delay in latching division result
begin
	if(!rstn)
	begin
		latchCount <= 0;
	end
	else
	begin if((quadADebouncedDelayed[1] == 1 && quadADebouncedDelayed[0] == 0)) begin
		latchCount <= 'h0;
              end
	      else if(latchCount  > 4'hA) begin
		      latchCount <= latchCount;
	      end
	      else if(quadADebouncedDelayed[1] == 0) begin
		      latchCount <= latchCount + 1;
	      end
	      else begin
		      latchCount <= latchCount;
	      end
         end
end



always @(posedge fclk)						//division result is latched with 10 cycles delay
begin
	if(!rstn)
	begin
		amplFactorDelayed <= 0;
	end
	else if(latchCount == 4'hA) begin
		amplFactorDelayed <= amplFactor;
	end 
	else begin
		amplFactorDelayed <= amplFactorDelayed;
	end
end


always @(posedge fclk)
begin
	if(!rstn) 
	begin
		countEst <= 0;
	end
	else if (quadADebouncedDelayed[1] == 0 && quadADebouncedDelayed[0] == 1) begin
                countEst <= 0;
	end
	else if(quadADebouncedDelayed[1] == 1) begin
		countEst <= countEst + 1;
	end else begin
		countEst <= countEst;
	end
end

always @(posedge fclk)
begin
	if(!rstn ) 
	begin
		realPulseWidth <= 0;
	end else begin
		if(quadADebouncedDelayed[1] == 1 && quadADebouncedDelayed[0] == 0 /*&& countEst > minValue*/)
		begin
			realPulseWidth <= countEst;
		end else begin
			realPulseWidth <= realPulseWidth;
		end
        end
end


always @ (posedge fclk)
begin
	if(!rstn ) 
	begin
		pulseGenCount <= 0;
	end else begin
              if (pulseGenCountMatchConfigRatio_internal == 1) begin
		  pulseGenCount <= 0;
	  end else begin
		  pulseGenCount <= pulseGenCount + 1;
	  end
	end

end

// Toggle out at 2wise the freq
always @ (posedge fclk) 
begin
     if (!rstn)
     begin
        pulseOut <= 0;
     end else begin
	     if (pulseGenCountMatchConfigRatio_internal == 0 && pulseGenCountMatchConfigRatio == 1) begin // Added to get the raising edge of pulseGenCountMatchConfigRatio so that pulseOut toggle occurs once
                 pulseOut <= !pulseOut;
	     end else begin
                 pulseOut <= pulseOut;
             end
     end
end

assign pulseGenCountMatchConfigRatio = (pulseGenCount > amplFactorDelayed) ? 1'b1 : 1'b0;

always @ (posedge fclk) 
begin
    pulseGenCountMatchConfigRatio_internal <= pulseGenCountMatchConfigRatio;
end

endmodule



