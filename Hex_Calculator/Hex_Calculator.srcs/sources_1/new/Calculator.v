`timescale 1ns / 1ps

module Calculator #(

    parameter input_A = 4'b0001,
              input_B = 4'b0010,
              last_value = 4'b0100,
              answer  = 4'b1000, 
              addition = 3'b001,
              subtract = 3'b010,
              equal    = 3'b100
    )
    
   (    input clk, reset,
        input [2:0] button,
        output [3:0] func,
        output [3:0] state    
    );
    
    reg [3:0] present_state, next_state, present_func, next_func;
    assign func = present_func;
    assign state = present_state;

    always @ (*) begin
        case (present_state)
            input_A: begin
                case (button)
                    addition: begin next_func = addition; next_state = input_B; end
                    subtract: begin next_func = subtract; next_state = input_B; end
                    default: begin next_func = present_func; next_state = present_state; end
                endcase
            end
            
            input_B: begin
                next_func = present_func;
                if (button == equal) begin next_state = answer; end
                else begin next_state = input_B; end                    
            end
            
            answer: begin // Display Answer
                case (button)
                    addition: begin next_func = addition; next_state = last_value; end
                    subtract: begin next_func = subtract; next_state = last_value; end                        
                    default: begin next_func = present_func; next_state = present_state; end                    
                endcase
            end
            
            last_value: begin next_func = present_func; next_state = input_B; end
            
            default: begin next_func = present_func; next_state = input_A; end
            
        endcase
    end

    always @ (posedge clk) begin
        if (reset) begin present_func <= 'b0; present_state <= input_A; end
        else begin present_func <= next_func; present_state <= next_state; end
    end
    

endmodule
