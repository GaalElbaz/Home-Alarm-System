`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: simAlarm
//////////////////////////////////////////////////////////////////////////////////


module simAlarm();
    logic [3:0] sw;
    logic power;
    logic [3:0] an;
    logic [6:0] disp;
    logic led;
    
top_module U0(.sw(sw),.power(power),.an(an),.disp(disp),.led(led));

initial begin
    sw = 4'b0000;
    power = 1'b0;
    #20
    power = 1'b1;
    #100
    sw = 4'b0001;
    #40
    sw = 4'b0000;
    #30
    sw = 4'b1010;
    #100
    $finish;
end

endmodule
