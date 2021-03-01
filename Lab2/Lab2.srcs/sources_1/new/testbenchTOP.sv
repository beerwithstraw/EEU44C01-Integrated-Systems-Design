`timescale 1ns / 1ps

module Testbench_TOP;

    wire clk, reset, Led_A, Led_B;
    wire [2:0] fsm_state;
    wire [3:0] obs_count, exp_count;
    wire count_check;
    wire stop_task;
    wire [31:0] logs;
    
    
    Stim_Generator Stim_Gen(.logs(logs), .clk(clk), .reset(reset),
        .A(Led_A), .B(Led_B), .exp_count(exp_count),
        .count_check(count_check), .stop_task(stop_task)
    );

    Scoreboard Scoreboard(.clk(clk), .reset(reset), .a(Led_A), .b(Led_B),
                            .exp_count(exp_count), .obs_count(obs_count), 
                            .count_check(count_check),
                            .stop_task(stop_task), .logs(logs));

    TOP TopModule_DUT(.clk(clk), .reset(reset), .switch_A(Led_A), .switch_B(Led_B), 
                        .counter(obs_count), .fsm_state(fsm_state));
    

endmodule
