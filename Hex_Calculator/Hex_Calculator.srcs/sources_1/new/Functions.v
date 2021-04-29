`timescale 1ns / 1ps

module Functions #(

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
        input [3:0] func,
        input [3:0] state,
        input [15:0] sw,
        
        output [15:0] display, value);
    
    reg [15:0] present_value, next_value;
    reg [15:0] present_display, next_display;         
    reg signed [15:0] present_A, next_A, present_B, next_B;
    reg signed [31:0] present_answer, next_answer;

    assign value = present_value;
    assign display = present_display;

    always @ (*) begin
        case(state)
            input_A: begin next_answer = 1'b0; end
            input_B: begin next_answer = 1'b0; end
            
            answer: begin
                case(func)
                    addition: begin next_answer = present_A + present_B; end
                    subtract: begin next_answer = present_A - present_B; end                        
                    default: begin next_answer = present_answer; end                    
                endcase
            end
            
            last_value: begin next_answer = present_answer; end
 
            default: begin next_answer = 1'b0; end
            
        endcase
    end

    always @ (*) begin
        case (state)
            input_A: begin
                next_A = sw; next_B = present_B;
                next_value = present_A[15:8]; next_display = {present_A[7:0], 8'h00};
            end
            input_B: begin 
                next_A = present_A; next_B = sw;
                next_value  = present_B[15:8]; next_display = {present_B[7:0], 8'h00};       
            end     
            answer: begin 
                next_A = present_A; next_B = present_B;
                
                case (func)
                    addition: begin 
                        next_value = present_answer[31:8];
                        next_display = {present_answer[7:0], 8'h00};
                    end
                    subtract: begin
                        next_value = present_answer[31:8];
                        next_display   = {present_answer[7:0], 8'h00};
                    end                        
                    default: begin
                        next_value = present_value;
                        next_display   = present_display;
                    end                    
                endcase
            end
            
            last_value: begin 
                next_value = present_value; next_display   = present_display;
                case (func)
                    addition: begin                    
                        next_A = present_answer[15:0]; next_B = sw;
                    end
                    subtract: begin 
                        next_A = present_answer[15:0]; next_B = sw;          
                    end                        
                    default: begin
                        next_A = present_A; next_B = present_B;
                    end                    
                endcase
            end
            
            default: begin
                next_A = present_A; next_B = present_B;
                next_value = present_value; next_display = present_display;                        
            end
            
        endcase
    end

    always @ (posedge clk) begin
        if (reset) begin     
            present_A <= 1'b0; present_B <= 1'b0;
            present_value <= 1'b0; present_display <= 1'b0; present_answer <= 1'b0;
        end
        else begin
            present_A <= next_A; present_B <= next_B;
            present_value <= next_value; present_display <= next_display; present_answer <= next_answer;
        end
    end

    
endmodule
