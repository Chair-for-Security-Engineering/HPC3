////////////////////////////////////////////////////////////////////////////
// COMPANY : Ruhr University Bochum
// AUTHOR  : David Knichel david.knichel@rub.de and Amir Moradi amir.moradi@rub.de 
// DOCUMENT: [Low-Latency Hardware Private Circuits] https://eprint.iacr.org/2022/507
// /////////////////////////////////////////////////////////////////
//
// Copyright c 2022, David Knichel and  Amir Moradi
//
// All rights reserved.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTERS BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// INCLUDING NEGLIGENCE OR OTHERWISE ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// Please see LICENSE and README for license and further instructions.
//
/* modified netlist. Source: module sbox in file /AGEMA/Designs/SkinnySbox/AGEMA/sbox_opt_correct/sbox.v */
/* clock gating is added to the circuit, the latency increased 4 time(s)  */

module sbox_HPC2_ClockGating_d1 (X_s0, clk, X_s1, Fresh, rst, Y_s0, Y_s1, Synch);
    input [3:0] X_s0 ;
    input clk ;
    input [3:0] X_s1 ;
    input rst ;
    input [3:0] Fresh ;
    output [3:0] Y_s0 ;
    output [3:0] Y_s1 ;
    output Synch ;
    wire Q0 ;
    wire Q1 ;
    wire T0 ;
    wire Q2 ;
    wire T1 ;
    wire Q4 ;
    wire T2 ;
    wire L0 ;
    wire Q6 ;
    wire L1 ;
    wire Q7 ;
    wire T3 ;
    wire L2 ;
    wire L2_T1 ;
    wire L3 ;
    wire n2 ;
    wire [2:1] XX ;
    wire [3:0] YY ;
    wire new_AGEMA_signal_38 ;
    wire new_AGEMA_signal_40 ;
    wire new_AGEMA_signal_42 ;
    wire new_AGEMA_signal_44 ;
    wire new_AGEMA_signal_45 ;
    wire new_AGEMA_signal_46 ;
    wire new_AGEMA_signal_47 ;
    wire new_AGEMA_signal_48 ;
    wire new_AGEMA_signal_49 ;
    wire new_AGEMA_signal_50 ;
    wire new_AGEMA_signal_51 ;
    wire new_AGEMA_signal_52 ;
    wire new_AGEMA_signal_53 ;
    wire new_AGEMA_signal_54 ;
    wire new_AGEMA_signal_55 ;
    wire new_AGEMA_signal_56 ;
    wire new_AGEMA_signal_57 ;
    wire new_AGEMA_signal_58 ;
    wire new_AGEMA_signal_59 ;
    wire new_AGEMA_signal_60 ;
    wire new_AGEMA_signal_61 ;
    wire new_AGEMA_signal_62 ;
    wire clk_gated ;

    /* cells in depth 0 */
    not_masked #(.security_order(1), .pipeline(0)) U5 ( .a ({X_s1[2], X_s0[2]}), .b ({new_AGEMA_signal_38, n2}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_i1_U1 ( .a ({X_s1[2], X_s0[2]}), .b ({X_s1[3], X_s0[3]}), .c ({new_AGEMA_signal_40, XX[1]}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_i2_U1 ( .a ({X_s1[0], X_s0[0]}), .b ({X_s1[2], X_s0[2]}), .c ({new_AGEMA_signal_42, XX[2]}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR0_U1 ( .a ({X_s1[1], X_s0[1]}), .b ({new_AGEMA_signal_42, XX[2]}), .c ({new_AGEMA_signal_44, Q0}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR1_U1 ( .a ({X_s1[1], X_s0[1]}), .b ({new_AGEMA_signal_40, XX[1]}), .c ({new_AGEMA_signal_45, Q1}) ) ;
    xnor_HPC2 #(.security_order(1), .pipeline(0)) XOR3_U1 ( .a ({X_s1[1], X_s0[1]}), .b ({new_AGEMA_signal_38, n2}), .c ({new_AGEMA_signal_46, Q4}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR5_U1 ( .a ({new_AGEMA_signal_42, XX[2]}), .b ({new_AGEMA_signal_38, n2}), .c ({new_AGEMA_signal_47, Q6}) ) ;
    xnor_HPC2 #(.security_order(1), .pipeline(0)) XOR6_U1 ( .a ({new_AGEMA_signal_45, Q1}), .b ({new_AGEMA_signal_47, Q6}), .c ({new_AGEMA_signal_51, L1}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR8_U1 ( .a ({X_s1[1], X_s0[1]}), .b ({new_AGEMA_signal_38, n2}), .c ({new_AGEMA_signal_48, L2}) ) ;
    

    /* cells in depth 1 */

    /* cells in depth 2 */
    and_HPC2 #(.security_order(1), .pipeline(0)) AND1_U1 ( .a ({new_AGEMA_signal_38, n2}), .b ({new_AGEMA_signal_45, Q1}), .clk (clk), .r (Fresh[0]), .c ({new_AGEMA_signal_49, T0}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR2_U1 ( .a ({new_AGEMA_signal_44, Q0}), .b ({new_AGEMA_signal_49, T0}), .c ({new_AGEMA_signal_52, Q2}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND3_U1 ( .a ({new_AGEMA_signal_38, n2}), .b ({new_AGEMA_signal_46, Q4}), .clk (clk), .r (Fresh[1]), .c ({new_AGEMA_signal_50, T2}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR7_U1 ( .a ({new_AGEMA_signal_51, L1}), .b ({new_AGEMA_signal_50, T2}), .c ({new_AGEMA_signal_53, Q7}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR11_U1 ( .a ({new_AGEMA_signal_42, XX[2]}), .b ({new_AGEMA_signal_49, T0}), .c ({new_AGEMA_signal_54, L3}) ) ;
    xnor_HPC2 #(.security_order(1), .pipeline(0)) XOR12_U1 ( .a ({new_AGEMA_signal_54, L3}), .b ({new_AGEMA_signal_50, T2}), .c ({new_AGEMA_signal_58, YY[1]}) ) ;
    xnor_HPC2 #(.security_order(1), .pipeline(0)) XOR13_U1 ( .a ({new_AGEMA_signal_40, XX[1]}), .b ({new_AGEMA_signal_50, T2}), .c ({new_AGEMA_signal_55, YY[0]}) ) ;

    /* cells in depth 3 */

    /* cells in depth 4 */
    and_HPC2 #(.security_order(1), .pipeline(0)) AND2_U1 ( .a ({X_s1[1], X_s0[1]}), .b ({new_AGEMA_signal_52, Q2}), .clk (clk), .r (Fresh[2]), .c ({new_AGEMA_signal_56, T1}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR4_U1 ( .a ({new_AGEMA_signal_56, T1}), .b ({new_AGEMA_signal_50, T2}), .c ({new_AGEMA_signal_59, L0}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND4_U1 ( .a ({new_AGEMA_signal_47, Q6}), .b ({new_AGEMA_signal_53, Q7}), .clk (clk), .r (Fresh[3]), .c ({new_AGEMA_signal_57, T3}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR81_U1 ( .a ({new_AGEMA_signal_48, L2}), .b ({new_AGEMA_signal_56, T1}), .c ({new_AGEMA_signal_60, L2_T1}) ) ;
    xnor_HPC2 #(.security_order(1), .pipeline(0)) XOR9_U1 ( .a ({new_AGEMA_signal_60, L2_T1}), .b ({new_AGEMA_signal_54, L3}), .c ({new_AGEMA_signal_61, YY[3]}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR10_U1 ( .a ({new_AGEMA_signal_59, L0}), .b ({new_AGEMA_signal_57, T3}), .c ({new_AGEMA_signal_62, YY[2]}) ) ;

    /* register cells */
    assign {Y_s1[3], Y_s0[3]} = {new_AGEMA_signal_58, YY[1]};
    assign {Y_s1[2], Y_s0[2]} = {new_AGEMA_signal_55, YY[0]};
    assign {Y_s1[1], Y_s0[1]} = {new_AGEMA_signal_61, YY[3]};
    assign {Y_s1[0], Y_s0[0]} = {new_AGEMA_signal_62, YY[2]};
endmodule
