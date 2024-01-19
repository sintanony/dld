module counter (Resetn, Clock, E, Q); 
input Resetn, Clock, E; 
output reg [3:0] Q;
always @(posedge Resetn or posedge Clock) 
begin
if (Resetn) 
Q <=4'b0000;
else if (E) 
Q <=Q+1;
end
endmodule