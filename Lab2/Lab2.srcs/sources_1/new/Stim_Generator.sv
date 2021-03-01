`timescale 1ns / 1ps

module Stim_Generator #(parameter T=2, D=4)(
    input  [31:0]    logs,
    output reg clk, reset, A, B,      
    output reg count_check, stop_task,
    output reg [3:0] exp_count
    );
    // Always Clock
    always begin
        clk = 1'b0; #(T/2);
        clk = 1'b1; #(T/2);
    end
    //Begin testing
    initial begin
        $fdisplay(logs, "Beginning Checks\n");
        start_func();
        reset_func();

        $fdisplay(logs, "Check-1: Exiting when 0 Cars are present\n");
        five_state_parking(5'b01100, 5'b00110); 
        count_check_func(); 
        
        $fdisplay(logs, "Check-2: Count from 0 -> 5 car entries using 5-STATE-PARKING\n");
        while (exp_count < 4'b1111) begin
            five_state_parking(5'b00110, 5'b01100);
        end
        count_check_func();  
        
        $fdisplay(logs, "Check-3: Count from 6 -> 15 car entries using 6-STATE-PARKING\n");
        while (exp_count < 4'b1111) begin
            six_state_parking(6'b000110, 6'b011100);
        end
        count_check_func();       
   
        $fdisplay(logs, "Check-4: Count for more than 15 car entries\n");
            five_state_parking(5'b00110, 5'b01100);
        count_check_func(); 
            six_state_parking(5'b00110, 5'b01100);
        count_check_func();     

        $fdisplay(logs, "Check-5: Count from 15 -> 10 car exits using 6-STATE-PARKING\n");
        while (exp_count > 1'b0) begin
            six_state_parking(6'b011100, 6'b001110);
        end
        count_check_func();  

        $fdisplay(logs, "Check-6: Count from 10 -> 5 car exits using 5-STATE-PARKING\n");
        while (exp_count > 3'b101) begin
            five_state_parking(5'b01100, 5'b00110);
        end
        count_check_func();   
               
        reset_func(); #(D*2);
                
        stop_func(); #(D*2);
        $stop;
    end
    
    
    //======================================
    // task definitions
    //======================================
 
    task start_func(); //Start Function
    begin   
        // Setting variables to default
        A = 0; B = 0;
        exp_count = 0; 
        count_check = 0;
        stop_task = 0;   
        $fdisplay(logs, "----Advanced Testbench----"); //Display message
    end
    endtask

    task count_check_func(); //checking count with scoreboard
    begin   
        count_check = 1; #(D/2);
        count_check = 0; #(D/2);
    end
    endtask
    
    task reset_func(); //Reset Function
    begin   
        A = 0; B = 0;
        exp_count = 0;
        reset = 1; #D;;
        reset = 0;
    end
    endtask
    
    task stop_func(); // Stop function
        begin   
            stop_task = 1; #(D/2);
            stop_task = 0; #(D/2);
        end
    endtask     
        
    task five_state_parking( input [4:0] a, b ); 
        begin
            $fdisplay(logs, "5-State Parking");
            // Assigning stimulus outputs
            A = a[0]; B = b[0]; #D;
            A = a[1]; B = b[1]; #D;
            A = a[2]; B = b[2]; #D;
            A = a[3]; B = b[3]; #D;
            A = a[4]; B = b[4];

            #(D/2); // Syncing stimulus with Parking DUT

            if (a==5'b00110 && b==5'b01100) begin // Parking Entry Sequence
                if (exp_count < 4'b1111) begin exp_count = exp_count + 1; end //Increment Count
                else begin exp_count = exp_count; end
            end
            else if (a==5'b01100 && b==5'b00110) begin // Parking Exit Sequence
                if (exp_count > 1'b0) begin exp_count = exp_count - 1; end // Decrement Count
                else begin exp_count = exp_count; end
            end
            else begin exp_count = exp_count; end // Else no change

            #(D*2); // Delay to visualize changes
        end
    endtask

    task six_state_parking( input [5:0] a, b );
        begin
            $fdisplay(logs, "6-State-Parking");
            // Assigning stimulus outputs
            A = a[0]; B = b[0]; #D;
            A = a[1]; B = b[1]; #D;
            A = a[2]; B = b[2]; #D;
            A = a[3]; B = b[3]; #D;
            A = a[4]; B = b[4]; #D;
            A = a[5]; B = b[5];       
                 
            #(D/2); // Syncing stimulus with Parking DUT

            if ((a == 6'b000110 && b == 6'b011100) || (a == 6'b001110 && b == 6'b011100) || (a == 6'b001110 && b == 6'b011000)) begin // Parking Entry Sequence
                if (exp_count < 4'b1111) begin exp_count = exp_count + 1; end //Increment Count
                else begin exp_count = exp_count; end
            end
            else if ((a == 6'b011000 && b == 6'b001110) || (a == 6'b011100 && b == 6'b001110) || (a == 6'b011100 && b == 6'b000110)) begin // Parking Exit Sequence
                if (exp_count > 1'b0) begin exp_count = exp_count - 1; end // Decrement Count
                else begin exp_count = exp_count; end
            end
            else begin exp_count = exp_count; end // Else no change

            #(D*2); // Delay to visualize changes
        end
    endtask   
    
endmodule