`timescale 1ns / 1ps

module Testbench();

    logic clk;
    logic [2:0]  button;
    logic [3:0]  an;
    logic [6:0]  seven_seg;
    logic [15:0] LED, sw;

    Top Top( .clk(clk), .button(button), .seven_seg(seven_seg), .LED(LED), .sw(sw), .an(an));
    
    initial begin
        clk = 0;
        forever begin #10 clk = ~clk; end
    end
    
    initial begin
        sw = 0;
        //addition
        clear();
        logic_test(4'b0010, 4'b0110, 3'b001); //2+6
        clear();
        logic_test(4'b0010, 4'b1001, 3'b001); //2+(-6)
        clear();
        logic_test(4'b1101, 4'b1001, 3'b001); //(-2)+(-6)
        clear();
        //subtraction 
        logic_test(4'b0010, 4'b0110, 3'b010); //2-6
        clear();
        logic_test(4'b0010, 4'b1001, 3'b010); //2-(-6)
        clear();
        logic_test(4'b1101, 4'b1001, 3'b010); //(-2)-(-6)
        clear();
    end
    
    
    //======================================
    // task definitions
    //======================================

    task clear();
        begin button  = 3'b100; repeat(150) 
            @(posedge clk); button  = 3'b000;
        end
    endtask

    // task to perfom operation
    task logic_test(
        input [3:0] func,
        input [15:0] input_A, input_B);
        begin
            sw = input_A; repeat(10) @(posedge clk);
            button = func; repeat(10) @(posedge clk);
            sw = input_B; repeat(10) @(posedge clk);
            button = 3'b100; repeat(10) @(posedge clk); 
        end
    endtask
    
endmodule
