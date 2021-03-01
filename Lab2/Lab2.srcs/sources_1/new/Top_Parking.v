`timescale 1ns / 1ps

module TOP(
    input clk, reset, 
    input switch_A, switch_B, 
    output [3:0] counter,
    output [2:0] fsm_state
    );
    
    wire entry, exit;

    Parking FSM(.a(switch_A), .b(switch_B), .clk(clk), .reset(reset), .entry(entry), .exit(exit), .condition(fsm_state));
    occupancyCounter COUNTER (.clk(clk), .reset(reset), .inc(entry), .dec(exit), .total(counter));
endmodule
