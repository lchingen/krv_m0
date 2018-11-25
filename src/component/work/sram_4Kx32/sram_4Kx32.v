//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Nov 16 02:09:07 2018
// Version: v11.9 SP1 11.9.1.0
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// sram_4Kx32
module sram_4Kx32(
    // Inputs
    CLK,
    RADDR,
    WADDR,
    WD,
    WEN,
    // Outputs
    RD
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CLK;
input  [11:0] RADDR;
input  [11:0] WADDR;
input  [31:0] WD;
input         WEN;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [31:0] RD;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK;
wire   [11:0] RADDR;
wire   [31:0] RD_0;
wire   [11:0] WADDR;
wire   [31:0] WD;
wire          WEN;
wire   [31:0] RD_0_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign RD_0_net_0 = RD_0;
assign RD[31:0]   = RD_0_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------sram_4Kx32_sram_4Kx32_0_TPSRAM   -   Actel:SgCore:TPSRAM:1.0.101
sram_4Kx32_sram_4Kx32_0_TPSRAM sram_4Kx32_0(
        // Inputs
        .WD    ( WD ),
        .WADDR ( WADDR ),
        .RADDR ( RADDR ),
        .WEN   ( WEN ),
        .CLK   ( CLK ),
        // Outputs
        .RD    ( RD_0 ) 
        );


endmodule
