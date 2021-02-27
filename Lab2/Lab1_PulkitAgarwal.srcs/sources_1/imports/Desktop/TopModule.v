`timescale 1ns / 1ps

module TopModule(
    input clk, reset, 
    input switch_A, switch_B, 
    output [6:0] seven_segment,
    output [3:0] anode
    );
    
    wire a, b, entry, exit;
    wire [3:0] counter;

    debouncer DB_1 (.button(switch_A), .button_db(a), .clk(clk), .reset(reset));
    debouncer DB_2 (.button(switch_B), .button_db(b), .clk(clk), .reset(reset));
    FSM Parking(.a(a), .b(b), .clk(clk), .reset(reset), .entry(entry), .exit(exit));
    occupancyCounter COUNTER (.clk(clk), .reset(reset), .inc(entry), .dec(exit), .total(counter));
    seven_seg_ctrl LED(.clk(clk), .reset(reset), .led_out(seven_segment), .anode_activate(anode), .number({counter}));
endmodule
