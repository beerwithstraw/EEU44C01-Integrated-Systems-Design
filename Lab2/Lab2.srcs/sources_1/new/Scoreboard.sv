`timescale 1ns / 1ps

module Scoreboard(
    //variables declaration
    input clk, reset, a, b,
    input [3:0] obs_count, exp_count, //observed and expected count
    input count_check,
    input stop_task,
    output integer logs // file to store logs
    );
    
    integer total_checks; 
    integer correct_checks, failed_checks;
    
    initial 
        begin // initialising variabled from 0
            logs = $fopen("advanced_testbench.txt", "w"); //creating a file to store logs
            total_checks = 0; correct_checks = 0; failed_checks = 0;
            task_stop_func();
        end      
        
    //comparing Stimulus with logs and Parking DUT
    always @(posedge count_check)
        begin
            $fdisplay(logs, "Check No. %d ---- ", (total_checks+1)); //check number
        
            total_checks <= total_checks + 1;
            if (obs_count == exp_count)
                begin 
                    correct_checks <= correct_checks + 1; // incrementing correct checks count
                    $fdisplay(logs, "PASSED\n");             
                end
            else
                begin
                    failed_checks <= failed_checks + 1; // incrementing failed checks count
                    $fdisplay(logs, "FAILED\n");   
                end  
            $fdisplay(logs, "Observed Count: %d\n Expected Count: %d\n\n", obs_count, exp_count);  
        end
        
    //======================================
    // task definitions
    //======================================
        
        // task handler in case the stimulus is stopped    
        task task_stop_func();
            begin
                @(posedge stop_task); 
                // displaying all the results stored
                $fdisplay(logs, "Total Checks conducted: %d\n", total_checks);
                $fdisplay(logs, "Total Checks passed: %d\n", correct_checks);
                $fdisplay(logs, "Total Checks failed: %d\n", failed_checks);   
                $fclose(logs);                             
            end
        endtask     
endmodule
