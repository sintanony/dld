module ThreeStagePipeline_tb;
  // Define parameters
  parameter CLK_PERIOD = 10; // Clock period in simulation cycles

  // Declare signals for the test bench
  reg clk;
  reg rst;
  reg [7:0] in_data;
  wire [7:0] out_stage1, out_stage2, out_stage3;

  // Instantiate the module under test
  ThreeStagePipeline dut (
    .clk(clk),
    .rst(rst),
    .in_data(in_data),
    .out_stage1(out_stage1),
    .out_stage2(out_stage2),
    .out_stage3(out_stage3)
  );

  // Clock generation
  always #((CLK_PERIOD / 2)) clk = ~clk; // Toggle clock every half period

  // Test stimulus
  initial begin
    // Initialize inputs
    clk = 0;
    rst = 1;
    in_data = 8'b10101010; // Example input data

    // Reset the module
    #10 rst = 0;
    #20 rst = 1;

    // Provide input data
    #30 in_data = 8'b11001100; // Change input data

    // Add more test scenarios here...

    // Finish simulation
    #100 $finish;
  end

  // Display output values
  always @(posedge clk) begin
    $display("Input: %h, Stage 1: %h, Stage 2: %h, Stage 3: %h", in_data, out_stage1, out_stage2,
              out_stage3);
  end
endmodule