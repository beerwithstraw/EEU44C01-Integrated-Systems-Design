`timescale 1ns / 1ps

module occupancyCounter(
    input clk, reset, inc, dec,
    output reg [3:0] occupied
    );
    
    reg [3:0] count = 4'b0000;

    always @(posedge clk, posedge reset) begin
        if (reset) 
            count <= 4'b0000;
               
        else if (inc & (count < 4'b1110)) 
            count <= count + 1'b1;
        
        else if (dec & (count > 4'b0000)) 
            count <= count - 1'b1;
        
    end 
        
    always @* begin    
        occupied = count;
       
    end 
endmodule
