`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: sevenSegDisplay
// 
//////////////////////////////////////////////////////////////////////////////////


module sevenSegDisplay(
    input [3:0] sw,
    output logic [6:0] disp
    );
    
    // When the power is off -> 7-seg display will be 0.
    // When the power is on and all sensors are not activated -> 7-seg display will be A (stands for Alarm)
    
    always_comb begin
    case(sw)
        0:  disp = 7'b0000001;  
        1:  disp = 7'b1001111; 
        2:  disp = 7'b0010010;
        3:  disp = 7'b0000110;
        4:  disp = 7'b1001100;
        5:  disp = 7'b0100100;
        6:  disp = 7'b0100000;
        7:  disp = 7'b0001111;
        8:  disp = 7'b0000000;
        9:  disp = 7'b0000100;
        10: disp = 7'b0001000; // A
        11: disp = 7'b1100000;
        12: disp = 7'b0110001;
        13: disp = 7'b1000010;
        14: disp = 7'b0110000;
        15: disp = 7'b0111000;    
    endcase
    end
    
    
endmodule
