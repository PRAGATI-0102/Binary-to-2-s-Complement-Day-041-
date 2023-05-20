`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2023 08:40:11 PM
// Design Name: 
// Module Name: tb_bcd_to_excess3
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_bcd_to_excess3();
        
        reg [3:0] bcd_code;
        wire [3:0] ex3_code;

        bcd_to_excess3 dut (.in(bcd_code),.out(ex3_code));

        initial 
        begin
            $monitor ("bcd code=%b, excess-3 code=%b",bcd_code,ex3_code);
            bcd_code=4'b0;
            #5  bcd_code=4'b1;
            #5  bcd_code=4'b10;
            #5  bcd_code=4'b11;
            #5  bcd_code=4'b100;
            #5  bcd_code=4'b101;
            #5  bcd_code=4'b110;
            #5  bcd_code=4'b111;
            #5  bcd_code=4'b1000;
            #5  bcd_code=4'b1001;
            $finish;
        end
endmodule
