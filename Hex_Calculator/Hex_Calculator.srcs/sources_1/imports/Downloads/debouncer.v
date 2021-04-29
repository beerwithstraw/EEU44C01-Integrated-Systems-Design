`timescale 1ns / 1ps

module debouncer #(parameter threshold = 32'd100_000_000 )// set parameter thresehold to guage how long button pressed
(
input clk, //clock signal
output reset,
input [2:0] button //input button
);

reg button_reset; //debounced signal to logic analyzer
reg [31:0] count; //31 bits count for increment & decrement when button is pressed or released.
assign reset = button_reset;

// When the push-button is pushed or released, we increment or decrement the counter
// The counter has to reach threshold before we decide that the push-button state has changed
always @(posedge clk) begin 
    if (button == 3'b100) begin //if button is 1
        if (~&count)//if it isn't at the count limit. Make sure won't count up at the limit. First AND all count and then not the AND
           count <= count+1;
    end else begin
           count <= 1'b0; //when btn relesed, count down
    end
    
    if (count > threshold)//if the count is greater the threshold 
        button_reset <= 1; //debounced signal is 1
    else
        button_reset <= 0; //debounced signal is 0
end


endmodule
