`timescale 1ns / 1ps

module FSM(
    input clk, reset, a, b,
    output reg entry, exit
    );
    localparam [1:0] 
        unblocked_both = 2'b00,
        blocked_A = 2'b10,
        blocked_B = 2'b01,
        blocked_both = 2'b11; 

    reg [1:0] present_state, next_state;

  
    always @(posedge clk, posedge reset)
        begin
            if (reset) 
                present_state <= unblocked_both;
            else 
                present_state <= next_state;
        end
    
    always @(*)
        begin        
            case (present_state)
                //Better described in Logic Diagram attached
                unblocked_both:
                    if (~a & ~b) begin next_state = unblocked_both; entry = 0; exit = 0; end
                    else if (a & ~b) begin next_state = blocked_A; entry = 0; exit = 0;  end
                    else if (~a & b) begin next_state = blocked_B; entry = 0; exit = 0; end
                blocked_A:
                    if (~a & ~b) begin next_state = unblocked_both; entry = 0; exit = 0; end
                    else if (a & ~b) begin next_state = blocked_A; entry = 0; exit = 0;  end
                    else if (a & b) begin next_state = blocked_both; entry = 0; exit = 0; end
                blocked_B:
                    if (a & ~b) begin next_state = blocked_A; entry = 0; exit = 0; end
                    else if (~a & b) begin next_state = blocked_B; entry = 0; exit = 0;  end
                    else if (a & b) begin next_state = blocked_both; entry = 0; exit = 0; end
                blocked_both:
                    if (a & ~b) begin next_state = blocked_A; entry = 0; exit = 1; end //exit
                    else if (~a & b) begin next_state = blocked_B; entry = 1; exit = 0;  end //entry
                    else if (a & b) begin next_state = blocked_both; entry = 0; exit = 0; end 
                
            endcase
        end    

endmodule
