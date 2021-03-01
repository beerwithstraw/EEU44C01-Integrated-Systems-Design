`timescale 1ns / 1ps

module Parking(
    //variables declaration
    input clk, reset, a, b,
    output [2:0] condition,
    output entry, exit
    );
    
    localparam [2:0] //all possible FSM states
        state_idle = 3'b000,
        state_1 = 3'b001,
        state_2 = 3'b010,
        state_3 = 3'b011,
        state_4 = 3'b100,
        state_5 = 3'b101,
        state_6 = 3'b110,
        state_reset = 3'b111;
        
    reg entry_count, entry_update, exit_count, exit_update;
    reg [2:0] present_state, next_state;
     
    //Combinational Block
    always @(*) begin
        case(present_state)
        
            state_reset: begin //invalid state
                entry_update = 1'b0; exit_update  = 1'b0; //setting default values as 0 in every possible state until updated
                if (~a & ~b) begin next_state = state_idle; end //Moving to idle state
                else begin next_state = present_state; end //Else state remains same
            end

            state_idle: begin //idle state or 00
                entry_update = 1'b0; exit_update  = 1'b0;
                if (a & ~b) begin next_state = state_1; end // 00 -> 10 while Entering
                else if (~a & b) begin next_state = state_4; end // 00 -> 01 exiting
                else begin next_state = present_state; end //Else not moving so state remains same
            end

            state_1: begin //A blocked or 10 but entering
                entry_update = 1'b0; exit_update  = 1'b0;
                if (a & b) begin next_state = state_5; end // 10 -> 11 while Entering
                else if (~a & ~b) begin next_state = state_idle; end // 10 -> 00 reversing back
                else if (~a & b) begin next_state = state_reset; end // invalid state
                else begin next_state = present_state; end //Else not moving so state remains same
            end
            
            state_2: begin //A blocked or 10 but exiting
                entry_update = 1'b0; exit_update  = 1'b0;
                if (a & b) begin next_state = state_6; end // 10 -> 11 reversing back
                else if (~a & ~b) begin next_state = state_idle; exit_update  = 1'b1; end // 10 -> 00 car exited
                else if (~a & b) begin next_state = state_reset; end // invalid state
                else begin next_state = present_state; end //Else not moving so state remains same
            end

            state_3: begin //B blocked or 01 but entering
                exit_update  = 1'b0; entry_update = 1'b0;
                if (a & b) begin next_state = state_5; end // 01 -> 11 reversing back
                else if (a & ~b) begin next_state = state_reset; end //invalid state
                else if (~a & ~b) begin next_state = state_idle; entry_update = 1'b1; end // 01 -> 00 car entered
                else begin next_state = present_state; end //Else not moving so state remains same
            end
            
            state_4: begin //B blocked or 01 but exiting  
                entry_update = 1'b0; exit_update  = 1'b0;
                if (a & b) begin next_state = state_6; end // 01 -> 11 moving forward
                else if (a & ~b) begin next_state = state_reset; end // invalid state
                else if (~a & ~b) begin next_state = state_idle; end // 01 -> 00 reversing back
                else begin next_state = present_state; end //Else not moving so state remains same
            end
            
            state_5: begin //AB blocked or 11 but entering 
                entry_update = 1'b0; exit_update  = 1'b0; 
                if (~a & b) begin next_state = state_3; end // 11 -> 01 moving forward 
                else if (a & ~b) begin next_state = state_1; end // 11 -> 10 reversing back
                else begin next_state = present_state; end //Else not moving so state remains same
            end 
            
            state_6: begin //AB blocked or 11 but exiting
                entry_update = 1'b0; exit_update  = 1'b0;  
                if (a & ~b) begin next_state = state_2; end // 11 -> 10 moving forward 
                else if (~a & b) begin next_state = state_3; end // 11 -> 01 reversing back 
                else begin next_state = present_state; end //Else not moving so state remains same
            end

            default: begin // default condition
                entry_update = 1'b0; exit_update  = 1'b0;
                next_state = state_reset; 
            end        
        endcase
    end
    
    //Sequential Block
    always @(posedge clk, posedge reset)
        begin
            if (reset == 1'b1 ) begin // on reset, set all variables to default
                present_state <= state_reset;
                entry_count <= 1'b0; exit_count <= 1'b0;
            end
            
            else begin // else update registers and values 
                present_state <= next_state;
                entry_count <= entry_update; exit_count <= entry_update;      
            end
        end
   
   //assigning all the variables thier updated values
    assign condition = present_state;      
    assign entry = entry_count;
    assign exit = exit_count;       
   
endmodule
