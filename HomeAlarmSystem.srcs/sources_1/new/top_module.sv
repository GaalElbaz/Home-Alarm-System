`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: top_module
// 
//////////////////////////////////////////////////////////////////////////////////


module top_module(
    input [3:0] sw, // sw[0] - sw[3] are the sensors.
    input power,
    output logic [3:0] an,
    output logic [6:0] disp,
    output logic led
    );
    
    // Only left 7-seg display is active
    assign an = 4'b1110;
    
    // (A)16 = (1010)2
    // (0)16 = (0000)2 
    logic [3:0] state;
    assign state =  {power, 1'b0, power, 1'b0};
    
    // Instianting modules.
    home_alarm_system U0(.sw(sw), .enable(power), .led(led));
    sevenSegDisplay U1(.sw(state), .disp(disp));
    
endmodule
