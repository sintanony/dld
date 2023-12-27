module alu_tb ( );
reg [2:0] S;
reg [3:0] A,B;
wire [3:0] F;
alu g1 (S,A,B, F);
initial 
begin
#0 A=4'b0101; B=4'b1001; S=3'b000;
#10 S=3'b001;
#10 S=3'b010;
#10 S=3'b011;
#10 S=3'b100;
#10 S=3'b101;
#10 S=3'b110;
#10 S=3'b111;
#30 A=4'b0100; B=4'b0010; S=3'b000;
#10 S=3'b001;
#10 S=3'b010;
#10 S=3'b011;
#10 S=3'b100;
#10 S=3'b101;
#10 S=3'b110;
#10 S=3'b111;
end
initial 
begin 
$monitor ($time, "S=%b, A=%b, B=%b, F=%b", S,A,B,F); 
end 
initial
#220 $finish;
endmodule