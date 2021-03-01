`timescale 1ns / 1ps

module occupancyCounter(
    //variables declaration
    input clk, reset, inc, dec,
    output [3:0] total
    );
    //registers
    reg [3:0] present_count, next_count;
   //Combinational Block
    always @(*) begin
        if ((inc) && (present_count < 4'b1111)) begin //Counter increments only when count is less than 15.
            next_count = present_count + 1'b1;
        end
        else if ((dec) && (present_count > 1'b0)) begin //Counter decrements only when count is greater than 0.
            next_count = present_count - 1'b1;
        end
        
        else begin next_count = present_count; end
    end    
    //Sequential Block
    always @(posedge clk, posedge reset) begin
        if(reset == 1'b1) begin 
            present_count <= 1'b0; //Count sets to 0 when reset
        end
        else begin
            present_count <= next_count; //Else count updates
        end
    end
    
    assign total = present_count; //Set total count as the updated present count
   
endmodule
