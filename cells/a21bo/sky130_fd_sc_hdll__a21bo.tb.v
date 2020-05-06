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

`ifndef SKY130_FD_SC_HDLL__A21BO_TB_V
`define SKY130_FD_SC_HDLL__A21BO_TB_V

/**
 * a21bo: 2-input AND into first input of 2-input OR,
 *        2nd input inverted.
 *
 *        X = ((A1 & A2) | (!B1_N))
 *
 * Autogenerated test bench.
 *
 * WARNING: This file is autogenerated, do not modify directly!
 */

`timescale 1ns / 1ps
`default_nettype none

`include "sky130_fd_sc_hdll__a21bo.v"

module top();

    // Inputs are registered
    reg A1;
    reg A2;
    reg B1_N;
    reg VPWR;
    reg VGND;
    reg VPB;
    reg VNB;

    // Outputs are wires
    wire X;

    initial
    begin
        // Initial state is x for all inputs.
        A1   = 1'bX;
        A2   = 1'bX;
        B1_N = 1'bX;
        VGND = 1'bX;
        VNB  = 1'bX;
        VPB  = 1'bX;
        VPWR = 1'bX;

        #20   A1   = 1'b0;
        #40   A2   = 1'b0;
        #60   B1_N = 1'b0;
        #80   VGND = 1'b0;
        #100  VNB  = 1'b0;
        #120  VPB  = 1'b0;
        #140  VPWR = 1'b0;
        #160  A1   = 1'b1;
        #180  A2   = 1'b1;
        #200  B1_N = 1'b1;
        #220  VGND = 1'b1;
        #240  VNB  = 1'b1;
        #260  VPB  = 1'b1;
        #280  VPWR = 1'b1;
        #300  A1   = 1'b0;
        #320  A2   = 1'b0;
        #340  B1_N = 1'b0;
        #360  VGND = 1'b0;
        #380  VNB  = 1'b0;
        #400  VPB  = 1'b0;
        #420  VPWR = 1'b0;
        #440  VPWR = 1'b1;
        #460  VPB  = 1'b1;
        #480  VNB  = 1'b1;
        #500  VGND = 1'b1;
        #520  B1_N = 1'b1;
        #540  A2   = 1'b1;
        #560  A1   = 1'b1;
        #580  VPWR = 1'bx;
        #600  VPB  = 1'bx;
        #620  VNB  = 1'bx;
        #640  VGND = 1'bx;
        #660  B1_N = 1'bx;
        #680  A2   = 1'bx;
        #700  A1   = 1'bx;
    end

    sky130_fd_sc_hdll__a21bo dut (.A1(A1), .A2(A2), .B1_N(B1_N), .VPWR(VPWR), .VGND(VGND), .VPB(VPB), .VNB(VNB), .X(X));

endmodule

`default_nettype wire
`endif  // SKY130_FD_SC_HDLL__A21BO_TB_V
