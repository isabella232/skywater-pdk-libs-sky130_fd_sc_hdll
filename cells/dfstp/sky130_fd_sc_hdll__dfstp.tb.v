/**
 * Copyright 2020 The SkyWater PDK Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

`ifndef SKY130_FD_SC_HDLL__DFSTP_TB_V
`define SKY130_FD_SC_HDLL__DFSTP_TB_V

/**
 * dfstp: Delay flop, inverted set, single output.
 *
 * Autogenerated test bench.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`include "sky130_fd_sc_hdll__dfstp.v"

module top();

    // Inputs are registered
    reg D;
    reg SET_B;
    reg VPWR;
    reg VGND;
    reg VPB;
    reg VNB;

    // Outputs are wires
    wire Q;

    initial
    begin
        // Initial state is x for all inputs.
        D     = 1'bX;
        SET_B = 1'bX;
        VGND  = 1'bX;
        VNB   = 1'bX;
        VPB   = 1'bX;
        VPWR  = 1'bX;

        #20   D     = 1'b0;
        #40   SET_B = 1'b0;
        #60   VGND  = 1'b0;
        #80   VNB   = 1'b0;
        #100  VPB   = 1'b0;
        #120  VPWR  = 1'b0;
        #140  D     = 1'b1;
        #160  SET_B = 1'b1;
        #180  VGND  = 1'b1;
        #200  VNB   = 1'b1;
        #220  VPB   = 1'b1;
        #240  VPWR  = 1'b1;
        #260  D     = 1'b0;
        #280  SET_B = 1'b0;
        #300  VGND  = 1'b0;
        #320  VNB   = 1'b0;
        #340  VPB   = 1'b0;
        #360  VPWR  = 1'b0;
        #380  VPWR  = 1'b1;
        #400  VPB   = 1'b1;
        #420  VNB   = 1'b1;
        #440  VGND  = 1'b1;
        #460  SET_B = 1'b1;
        #480  D     = 1'b1;
        #500  VPWR  = 1'bx;
        #520  VPB   = 1'bx;
        #540  VNB   = 1'bx;
        #560  VGND  = 1'bx;
        #580  SET_B = 1'bx;
        #600  D     = 1'bx;
    end

    // Create a clock
    reg CLK;
    initial
    begin
        CLK = 1'b0;
    end

    always
    begin
        #5 CLK = ~CLK;
    end

    sky130_fd_sc_hdll__dfstp dut (.D(D), .SET_B(SET_B), .VPWR(VPWR), .VGND(VGND), .VPB(VPB), .VNB(VNB), .Q(Q), .CLK(CLK));

endmodule

`default_nettype wire
`endif  // SKY130_FD_SC_HDLL__DFSTP_TB_V
