module ThreeStagePipeline (
  input wire clk, // Clock signal
  input wire rst, // Reset signal
  input wire [7:0] in_data,
  output reg [7:0] out_stage1,
  output reg [7:0] out_stage2,
  output reg [7:0] out_stage3
);

  reg [7:0] stage1_data, stage2_data, stage3_data;

  // Stage 1
  always @(posedge clk or posedge rst)
  begin
    if (rst)
    begin
      stage1_data <= 8'b0; // Reset stage 1 data
    end
    else
    begin
      stage1_data <= in_data; // Load data into stage 1
    end
  end

  // Stage 2
  always @(posedge clk or posedge rst)
  begin
    if (rst)
    begin
      stage2_data <= 8'b0; // Reset stage 2 data
    end
    else
    begin
      stage2_data <= stage1_data; // Load data from stage 1 to stage 2
    end
  end

  // Stage 3
  always @(posedge clk or posedge rst)
  begin
    if (rst)
    begin
      stage3_data <= 8'b0; // Reset stage 3 data
    end
    else
    begin
      stage3_data <= stage2_data; // Load data from stage 2 to stage 3
    end
  end

  // Output signals from each stage
  assign out_stage1 = stage1_data;
  assign out_stage2 = stage2_data;
  assign out_stage3 = stage3_data;

endmodule