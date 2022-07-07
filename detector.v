`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2022 08:51:41 PM
// Design Name: 
// Module Name: detector
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


module detector(

    input clk,
    input rst,
    input seq,
    input wire[11:0] addra,

    output reg detect_o
);
    ////////
    reg [5:0] current_state,next_state;
    reg [3:0] counter;
blk_mem_gen_0 your_instance_name (
      .clka(clk),    // input wire clka
      .addra(addra),  // input wire [11 : 0] addra
      .douta(seq)  // output wire [0 : 0] douta
    );
    ///////
    localparam  S0=6'b000001 ,
                S1=6'b000010 ,
                S2=6'b000100 ,
                S3=6'b001000 ,
                S4=6'b010000 ,
                S5=6'b100000 ;

    ///////
    always @(posedge clk) begin
        if(!rst) begin
            current_state<= S0;
        end else begin
            current_state <= next_state;
        end
    end
    ///////
    always @(posedge clk ) begin
        case(current_state)
        S0: if(seq == 0 ) next_state <=S0; else next_state<=S1;
        S1: if(seq == 0 ) next_state <=S2; else next_state<=S1;
        S2: if(seq == 0 ) next_state <=S0; else next_state<=S3;
        S3: if(seq == 0 ) next_state <=S1; else next_state<=S4;
        S4: if(seq == 0 ) next_state <=S1; else next_state<=S5;
        S5: if(seq == 0 ) next_state <=S1; else next_state<=S0;
        endcase
    end

    ///////
    always @(posedge clk ) begin
        if(!rst)
            detect_o<=1'b0;
        else
            case(current_state)
                S0, S1, S2, S3, S4: detect_o <= 1'b0;
                                S5: detect_o <= 1'b1;
            endcase
        if (detect_o<=1'b1)
        counter=counter+1;

    end
endmodule
