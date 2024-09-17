`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 10:36:35
// Design Name: 
// Module Name: stardelta
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
// ``
//////////////////////////////////////////////////////////////////////////////////


module stardelta(
   
    input logic [3:0] star_in[2:0],
    output logic [3:0] delta_out[2:0]
);

    // Delta configuration outputs
    logic [3:0] delta_out_internal[2:0];

    // Perform the star to delta transformation
    assign delta_out_internal[0][3:0] = star_in[0][3:0] + star_in[1][3:0] + (star_in[0][3:0]*star_in[1][3:0]/star_in[2][3:0]);
    assign delta_out_internal[1][3:0] = star_in[1][3:0] + star_in[2][3:0] + (star_in[1][3:0]*star_in[2][3:0]/star_in[0][3:0]);
    assign delta_out_internal[2][3:0] = star_in[2][3:0] + star_in[0][3:0] + (star_in[2][3:0]*star_in[0][3:0]/star_in[1][3:0]);

    // Output the delta configuration values
    assign delta_out = delta_out_internal;

endmodule
