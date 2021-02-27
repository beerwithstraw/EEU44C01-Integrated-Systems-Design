`timescale 1ns / 1ps

module occupancyCounter(
    input clk, reset, inc, dec,
    output [3:0] total
    );
    
    reg [3:0] present_count;
    reg [3:0] next_count;
        
    always @* begin    
        if ((present_count < 4'b1111) && (inc)) begin
            next_count <= present_count + 1'b1;
        end
        
        else if ((present_count > 1'b0) && (dec)) begin
            next_count <= present_count - 1'b1;
        end
        
        else begin 
            next_count = present_count;
        end
    end 

  
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            present_count <= 1'b0;
        end   
          
        else begin 
            present_count <= next_count;
        end        
    end 
    
    assign total = present_count;

endmodule
