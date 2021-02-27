`timescale 1ns / 1ps

module FSM(
    input clk, reset, a, b,
    output entry, exit
    );
    localparam [2:0] 
        state_idle = 3'b000,
        state_1 = 3'b001,
        state_2 = 3'b010,
        state_3 = 3'b011,
        state_4 = 3'b100,
        state_5 = 3'b101,
        state_6 = 3'b110,
        state_invalid = 3'b111;
        
    reg [2:0] present_state, next_state;
    reg entry_count, entry_update, exit_count, exit_update;
    

    
    always @(*)
        begin        
        
            entry_update <= 1'b0;
            exit_update <= 1'b0;
            
            case (present_state)
                //Better described in Logic Diagram attached
                state_idle:
                    if (~a & ~b) begin next_state = state_idle; end
                    else if (a & ~b) begin next_state = state_1; end
                    else if (~a & b) begin next_state = state_4; end
                    else if (a & b) begin next_state = state_invalid; end
     
                state_1:
                    if (~a & ~b) begin next_state = state_idle; end
                    else if (a & ~b) begin next_state = state_1; end
                    else if (a & b) begin next_state = state_2; end
                    else if (~a & b) begin next_state = state_invalid; end                  
   
                state_2:
                    if (~a & ~b) begin next_state = state_invalid; end
                    else if (a & ~b) begin next_state = state_1; end
                    else if (~a & b) begin next_state = state_3; end
                    else if (a & b) begin next_state = state_2; end

                state_3:
                    if (~a & ~b) begin next_state = state_idle; entry_update <= 1'b1; end
                    else if (a & ~b) begin next_state = state_invalid; end
                    else if (~a & b) begin next_state = state_3; end
                    else if (a & b) begin next_state = state_2; end

                state_4:
                    if (~a & ~b) begin next_state = state_idle; end
                    else if (a & ~b) begin next_state = state_invalid; end
                    else if (~a & b) begin next_state = state_4; end
                    else if (a & b) begin next_state = state_5; end

                state_5:
                    if (~a & ~b) begin next_state = state_invalid; end
                    else if (a & ~b) begin next_state = state_6; end
                    else if (~a & b) begin next_state = state_4; end
                    else if (a & b) begin next_state = state_5; end

                state_6:
                    if (~a & ~b) begin next_state = state_idle; exit_update <= 1'b1; end
                    else if (a & ~b) begin next_state = state_6; end
                    else if (~a & b) begin next_state = state_invalid; end
                    else if (a & b) begin next_state = state_5; end

                state_invalid:
                    next_state <= state_idle;
                            
            endcase
        end    
        
    always @(posedge clk, posedge reset)
        begin
            if (reset) begin
                present_state <= state_idle;
                entry_count <= 1'b0;
                exit_count <= 1'b0;
            end
            
            else begin
                present_state <= next_state;
                entry_count <= entry_update;
                exit_count <= entry_update;               
            end
        end
        
    assign entry = entry_count;
    assign exit = exit_count;
    
    
endmodule
