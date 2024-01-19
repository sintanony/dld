module counter_tb();
reg Clock, Resetn; 
reg E; 
wire [3:0] Q;
counter dut(Resetn, Clock, E, Q);
initial
begin 
Clock=0;
forever #1 Clock=~Clock;
end
initial 
begin
#0 Resetn=1; E=1;
#10 Resetn=0; E=1;
end
endmodule