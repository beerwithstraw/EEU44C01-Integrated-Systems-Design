`timescale 1ns / 1ps

module Top(
    input clk,
    input [2:0] button,
    input [15:0] sw,
`ifdef SIM
    output [32:0] board_display,
`endif
    output [3:0] an,
    output [6:0] seven_seg,
    output [15:0] LED    
    );
    
    wire reset; 
    wire [3:0] func;
    wire [3:0] state;
    wire [15:0] value;
    
    parameter input_A = 4'b0001,
              input_B = 4'b0010,
              answer = 4'b0100,
              last_value = 4'b1000,
              addition = 3'b001,
              subtract = 3'b010,
              equal = 3'b100;
    
    
`ifdef SIM parameter threshold = 32'd100;
`else parameter threshold = 32'd100_000_000;
`endif
`ifdef SIM assign board_display = {value, LED};
`endif

    debouncer #(
        .threshold(threshold)) debouncer( .clk(clk), .button(button), .reset(reset));

    Calculator #(
        .input_A(input_A), .input_B(input_B), .answer(answer), .last_value(last_value),
        .addition(addition), .subtract(subtract), .equal(equal))
    Calculator( .clk(clk), .reset(reset), .button(button), .func(func), .state(state));

    Functions #(
        .input_A(input_A), .input_B(input_B), .answer(answer), .last_value(last_value),
        .addition(addition), .subtract(subtract), .equal(equal))       
    Functions( .clk(clk), .reset(reset), .sw(sw), .state(state), .button(button), .func(func), .value(value), .display(LED));
    
    seven_seg_ctrl seven_segment( .clk(clk), .reset(reset), .number(value), .LED_out(seven_seg), .Anode_Activate(an));
    
endmodule
