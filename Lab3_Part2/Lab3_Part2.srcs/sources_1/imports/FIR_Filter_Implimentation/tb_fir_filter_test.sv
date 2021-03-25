`timescale 1ns / 1ps

module tb_fir_filter_test();  
logic clk;
logic reset;
logic enable;
logic signed  [15:0] fcw; // Frequency Control Word
logic signed [15:0] amplitude_out;
logic  signed [15:0] test_sig_sine;
logic  signed [15:0] fir_out;

fir_filter_test  Ifir_test(
    .clk            (clk    ),
    .reset          (reset  ),
    .enable         (enable ),
    .fcw            (fcw    ),
    .amplitude_out  (amplitude_out),
    .test_sig_sine  (test_sig_sine),
    .fir_out        (fir_out)
    );

initial begin
    clk = 0;
    forever begin
        #20 clk = ~clk;
    end
end

initial begin
    reset  = 0;
    enable = 0;
    repeat(10) @(posedge clk);
    reset = 1;
    repeat(2)  @(posedge clk);
    reset = 0;
    repeat(20)  @(posedge clk);
    enable = 1;
    
    //Value of Fcw in the passband range 0-0.43
    fcw_values(8192); // at 0.25
    //Value of Fcw at passband cut-off
    fcw_values(14090); // at 0.43
    //Value of Fcw in the transition range 0.43-0.53
    fcw_values(15728); // at 0.48
    //Value of Fcw at stopband cut-off 
    fcw_values(17367); // at 0.53
    //Value of Fcw in the stopband range 0.53-1
    fcw_values(26214); // at 0.8
end

initial begin
    repeat(5000) @(posedge clk);
    $stop;
end

//======================================
// task definitions
//======================================

//for new values of fcw

task fcw_values(
    input [15:0] fcw_new
    );
   
    begin
        reset = 1;
        repeat(2)  @(posedge clk);
        reset = 0;
        fcw = fcw_new; 
        repeat(200) @(posedge clk);
        $display("Test Case:");
        $display("FCW = %d ", fcw);
        $display("Amplitude: %d\n",amplitude_out);
        repeat(100) @(posedge clk);
    end
    
endtask

endmodule