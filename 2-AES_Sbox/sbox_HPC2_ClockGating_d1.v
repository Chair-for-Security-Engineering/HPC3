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
/* modified netlist. Source: module sbox in file Designs/AESSbox/optBP2/AGEMA/sbox.v */
/* clock gating is added to the circuit, the latency increased 8 time(s)  */

module sbox_HPC2_ClockGating_d1 (X_s0, clk, X_s1, Fresh, rst, Y_s0, Y_s1, Synch);
    input [7:0] X_s0 ;
    input clk ;
    input [7:0] X_s1 ;
    input rst ;
    input [33:0] Fresh ;
    output [7:0] Y_s0 ;
    output [7:0] Y_s1 ;
    output Synch ;
    wire T1 ;
    wire T2 ;
    wire T3 ;
    wire T4 ;
    wire T5 ;
    wire T6 ;
    wire T7 ;
    wire T8 ;
    wire T9 ;
    wire T10 ;
    wire T11 ;
    wire T12 ;
    wire T13 ;
    wire T14 ;
    wire T15 ;
    wire T16 ;
    wire T17 ;
    wire T18 ;
    wire T19 ;
    wire T20 ;
    wire T21 ;
    wire T22 ;
    wire T23 ;
    wire T24 ;
    wire T25 ;
    wire T26 ;
    wire T27 ;
    wire M1 ;
    wire M2 ;
    wire M3 ;
    wire M4 ;
    wire M5 ;
    wire M6 ;
    wire M7 ;
    wire M8 ;
    wire M9 ;
    wire M10 ;
    wire M11 ;
    wire M12 ;
    wire M13 ;
    wire M14 ;
    wire M15 ;
    wire M16 ;
    wire M17 ;
    wire M18 ;
    wire M19 ;
    wire M20 ;
    wire M21 ;
    wire M22 ;
    wire M23 ;
    wire M24 ;
    wire M25 ;
    wire M26 ;
    wire M27 ;
    wire M28 ;
    wire M29 ;
    wire M30 ;
    wire M31 ;
    wire M32 ;
    wire M33 ;
    wire M34 ;
    wire M35 ;
    wire M36 ;
    wire M37 ;
    wire M38 ;
    wire M39 ;
    wire M40 ;
    wire M41 ;
    wire M42 ;
    wire M43 ;
    wire M44 ;
    wire M45 ;
    wire M46 ;
    wire M47 ;
    wire M48 ;
    wire M49 ;
    wire M50 ;
    wire M51 ;
    wire M52 ;
    wire M53 ;
    wire M54 ;
    wire M55 ;
    wire M56 ;
    wire M57 ;
    wire M58 ;
    wire M59 ;
    wire M60 ;
    wire M61 ;
    wire M62 ;
    wire M63 ;
    wire L0 ;
    wire L1 ;
    wire L2 ;
    wire L3 ;
    wire L4 ;
    wire L5 ;
    wire L6 ;
    wire L7 ;
    wire L8 ;
    wire L9 ;
    wire L10 ;
    wire L11 ;
    wire L12 ;
    wire L13 ;
    wire L14 ;
    wire L15 ;
    wire L16 ;
    wire L17 ;
    wire L18 ;
    wire L19 ;
    wire L20 ;
    wire L21 ;
    wire L22 ;
    wire L23 ;
    wire L24 ;
    wire L25 ;
    wire L26 ;
    wire L27 ;
    wire L28 ;
    wire L29 ;
    wire [7:0] O ;
    wire new_AGEMA_signal_153 ;
    wire new_AGEMA_signal_155 ;
    wire new_AGEMA_signal_157 ;
    wire new_AGEMA_signal_158 ;
    wire new_AGEMA_signal_160 ;
    wire new_AGEMA_signal_163 ;
    wire new_AGEMA_signal_164 ;
    wire new_AGEMA_signal_165 ;
    wire new_AGEMA_signal_167 ;
    wire new_AGEMA_signal_168 ;
    wire new_AGEMA_signal_169 ;
    wire new_AGEMA_signal_170 ;
    wire new_AGEMA_signal_171 ;
    wire new_AGEMA_signal_172 ;
    wire new_AGEMA_signal_173 ;
    wire new_AGEMA_signal_174 ;
    wire new_AGEMA_signal_175 ;
    wire new_AGEMA_signal_176 ;
    wire new_AGEMA_signal_177 ;
    wire new_AGEMA_signal_178 ;
    wire new_AGEMA_signal_179 ;
    wire new_AGEMA_signal_180 ;
    wire new_AGEMA_signal_181 ;
    wire new_AGEMA_signal_182 ;
    wire new_AGEMA_signal_183 ;
    wire new_AGEMA_signal_184 ;
    wire new_AGEMA_signal_185 ;
    wire new_AGEMA_signal_186 ;
    wire new_AGEMA_signal_187 ;
    wire new_AGEMA_signal_188 ;
    wire new_AGEMA_signal_189 ;
    wire new_AGEMA_signal_190 ;
    wire new_AGEMA_signal_191 ;
    wire new_AGEMA_signal_192 ;
    wire new_AGEMA_signal_193 ;
    wire new_AGEMA_signal_194 ;
    wire new_AGEMA_signal_195 ;
    wire new_AGEMA_signal_196 ;
    wire new_AGEMA_signal_197 ;
    wire new_AGEMA_signal_198 ;
    wire new_AGEMA_signal_199 ;
    wire new_AGEMA_signal_200 ;
    wire new_AGEMA_signal_201 ;
    wire new_AGEMA_signal_202 ;
    wire new_AGEMA_signal_203 ;
    wire new_AGEMA_signal_204 ;
    wire new_AGEMA_signal_205 ;
    wire new_AGEMA_signal_206 ;
    wire new_AGEMA_signal_207 ;
    wire new_AGEMA_signal_208 ;
    wire new_AGEMA_signal_209 ;
    wire new_AGEMA_signal_210 ;
    wire new_AGEMA_signal_211 ;
    wire new_AGEMA_signal_212 ;
    wire new_AGEMA_signal_213 ;
    wire new_AGEMA_signal_214 ;
    wire new_AGEMA_signal_215 ;
    wire new_AGEMA_signal_216 ;
    wire new_AGEMA_signal_217 ;
    wire new_AGEMA_signal_218 ;
    wire new_AGEMA_signal_219 ;
    wire new_AGEMA_signal_220 ;
    wire new_AGEMA_signal_221 ;
    wire new_AGEMA_signal_222 ;
    wire new_AGEMA_signal_223 ;
    wire new_AGEMA_signal_224 ;
    wire new_AGEMA_signal_225 ;
    wire new_AGEMA_signal_226 ;
    wire new_AGEMA_signal_227 ;
    wire new_AGEMA_signal_228 ;
    wire new_AGEMA_signal_229 ;
    wire new_AGEMA_signal_230 ;
    wire new_AGEMA_signal_231 ;
    wire new_AGEMA_signal_232 ;
    wire new_AGEMA_signal_233 ;
    wire new_AGEMA_signal_234 ;
    wire new_AGEMA_signal_235 ;
    wire new_AGEMA_signal_236 ;
    wire new_AGEMA_signal_237 ;
    wire new_AGEMA_signal_238 ;
    wire new_AGEMA_signal_239 ;
    wire new_AGEMA_signal_240 ;
    wire new_AGEMA_signal_241 ;
    wire new_AGEMA_signal_242 ;
    wire new_AGEMA_signal_243 ;
    wire new_AGEMA_signal_244 ;
    wire new_AGEMA_signal_245 ;
    wire new_AGEMA_signal_246 ;
    wire new_AGEMA_signal_247 ;
    wire new_AGEMA_signal_248 ;
    wire new_AGEMA_signal_249 ;
    wire new_AGEMA_signal_250 ;
    wire new_AGEMA_signal_251 ;
    wire new_AGEMA_signal_252 ;
    wire new_AGEMA_signal_253 ;
    wire new_AGEMA_signal_254 ;
    wire new_AGEMA_signal_255 ;
    wire new_AGEMA_signal_256 ;
    wire new_AGEMA_signal_257 ;
    wire new_AGEMA_signal_258 ;
    wire new_AGEMA_signal_259 ;
    wire new_AGEMA_signal_260 ;
    wire new_AGEMA_signal_261 ;
    wire new_AGEMA_signal_262 ;
    wire new_AGEMA_signal_263 ;
    wire new_AGEMA_signal_264 ;
    wire new_AGEMA_signal_265 ;
    wire new_AGEMA_signal_266 ;
    wire new_AGEMA_signal_267 ;
    wire new_AGEMA_signal_268 ;
    wire new_AGEMA_signal_269 ;
    wire new_AGEMA_signal_270 ;
    wire new_AGEMA_signal_271 ;
    wire new_AGEMA_signal_272 ;
    wire new_AGEMA_signal_273 ;
    wire new_AGEMA_signal_274 ;
    wire new_AGEMA_signal_275 ;
    wire new_AGEMA_signal_276 ;
    wire new_AGEMA_signal_277 ;
    wire new_AGEMA_signal_278 ;
    wire new_AGEMA_signal_279 ;
    wire new_AGEMA_signal_280 ;
    wire new_AGEMA_signal_281 ;
    wire new_AGEMA_signal_282 ;
    wire new_AGEMA_signal_283 ;
    wire new_AGEMA_signal_284 ;
    wire new_AGEMA_signal_285 ;
    wire new_AGEMA_signal_286 ;
    wire clk_gated ;

    /* cells in depth 0 */
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T1_U1 ( .a ({X_s1[7], X_s0[7]}), .b ({X_s1[4], X_s0[4]}), .c ({new_AGEMA_signal_153, T1}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T2_U1 ( .a ({X_s1[7], X_s0[7]}), .b ({X_s1[2], X_s0[2]}), .c ({new_AGEMA_signal_155, T2}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T3_U1 ( .a ({X_s1[7], X_s0[7]}), .b ({X_s1[1], X_s0[1]}), .c ({new_AGEMA_signal_157, T3}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T4_U1 ( .a ({X_s1[4], X_s0[4]}), .b ({X_s1[2], X_s0[2]}), .c ({new_AGEMA_signal_158, T4}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T5_U1 ( .a ({X_s1[3], X_s0[3]}), .b ({X_s1[1], X_s0[1]}), .c ({new_AGEMA_signal_160, T5}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T6_U1 ( .a ({new_AGEMA_signal_153, T1}), .b ({new_AGEMA_signal_160, T5}), .c ({new_AGEMA_signal_169, T6}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T7_U1 ( .a ({X_s1[6], X_s0[6]}), .b ({X_s1[5], X_s0[5]}), .c ({new_AGEMA_signal_163, T7}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T8_U1 ( .a ({X_s1[0], X_s0[0]}), .b ({new_AGEMA_signal_169, T6}), .c ({new_AGEMA_signal_177, T8}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T9_U1 ( .a ({X_s1[0], X_s0[0]}), .b ({new_AGEMA_signal_163, T7}), .c ({new_AGEMA_signal_170, T9}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T10_U1 ( .a ({new_AGEMA_signal_169, T6}), .b ({new_AGEMA_signal_163, T7}), .c ({new_AGEMA_signal_178, T10}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T11_U1 ( .a ({X_s1[6], X_s0[6]}), .b ({X_s1[2], X_s0[2]}), .c ({new_AGEMA_signal_164, T11}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T12_U1 ( .a ({X_s1[5], X_s0[5]}), .b ({X_s1[2], X_s0[2]}), .c ({new_AGEMA_signal_165, T12}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T13_U1 ( .a ({new_AGEMA_signal_157, T3}), .b ({new_AGEMA_signal_158, T4}), .c ({new_AGEMA_signal_171, T13}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T14_U1 ( .a ({new_AGEMA_signal_169, T6}), .b ({new_AGEMA_signal_164, T11}), .c ({new_AGEMA_signal_179, T14}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T15_U1 ( .a ({new_AGEMA_signal_160, T5}), .b ({new_AGEMA_signal_164, T11}), .c ({new_AGEMA_signal_172, T15}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T16_U1 ( .a ({new_AGEMA_signal_160, T5}), .b ({new_AGEMA_signal_165, T12}), .c ({new_AGEMA_signal_173, T16}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T17_U1 ( .a ({new_AGEMA_signal_170, T9}), .b ({new_AGEMA_signal_173, T16}), .c ({new_AGEMA_signal_180, T17}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T18_U1 ( .a ({X_s1[4], X_s0[4]}), .b ({X_s1[0], X_s0[0]}), .c ({new_AGEMA_signal_167, T18}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T19_U1 ( .a ({new_AGEMA_signal_163, T7}), .b ({new_AGEMA_signal_167, T18}), .c ({new_AGEMA_signal_174, T19}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T20_U1 ( .a ({new_AGEMA_signal_153, T1}), .b ({new_AGEMA_signal_174, T19}), .c ({new_AGEMA_signal_181, T20}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T21_U1 ( .a ({X_s1[1], X_s0[1]}), .b ({X_s1[0], X_s0[0]}), .c ({new_AGEMA_signal_168, T21}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T22_U1 ( .a ({new_AGEMA_signal_163, T7}), .b ({new_AGEMA_signal_168, T21}), .c ({new_AGEMA_signal_175, T22}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T23_U1 ( .a ({new_AGEMA_signal_155, T2}), .b ({new_AGEMA_signal_175, T22}), .c ({new_AGEMA_signal_182, T23}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T24_U1 ( .a ({new_AGEMA_signal_155, T2}), .b ({new_AGEMA_signal_178, T10}), .c ({new_AGEMA_signal_190, T24}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T25_U1 ( .a ({new_AGEMA_signal_181, T20}), .b ({new_AGEMA_signal_180, T17}), .c ({new_AGEMA_signal_191, T25}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T26_U1 ( .a ({new_AGEMA_signal_157, T3}), .b ({new_AGEMA_signal_173, T16}), .c ({new_AGEMA_signal_183, T26}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_T27_U1 ( .a ({new_AGEMA_signal_153, T1}), .b ({new_AGEMA_signal_165, T12}), .c ({new_AGEMA_signal_176, T27}) ) ;
    

    /* cells in depth 1 */

    /* cells in depth 2 */
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M1_U1 ( .a ({new_AGEMA_signal_171, T13}), .b ({new_AGEMA_signal_169, T6}), .clk (clk), .r (Fresh[0]), .c ({new_AGEMA_signal_184, M1}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M2_U1 ( .a ({new_AGEMA_signal_182, T23}), .b ({new_AGEMA_signal_177, T8}), .clk (clk), .r (Fresh[1]), .c ({new_AGEMA_signal_192, M2}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M3_U1 ( .a ({new_AGEMA_signal_179, T14}), .b ({new_AGEMA_signal_184, M1}), .c ({new_AGEMA_signal_193, M3}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M4_U1 ( .a ({new_AGEMA_signal_174, T19}), .b ({X_s1[0], X_s0[0]}), .clk (clk), .r (Fresh[2]), .c ({new_AGEMA_signal_185, M4}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M5_U1 ( .a ({new_AGEMA_signal_185, M4}), .b ({new_AGEMA_signal_184, M1}), .c ({new_AGEMA_signal_194, M5}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M6_U1 ( .a ({new_AGEMA_signal_157, T3}), .b ({new_AGEMA_signal_173, T16}), .clk (clk), .r (Fresh[3]), .c ({new_AGEMA_signal_186, M6}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M7_U1 ( .a ({new_AGEMA_signal_175, T22}), .b ({new_AGEMA_signal_170, T9}), .clk (clk), .r (Fresh[4]), .c ({new_AGEMA_signal_187, M7}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M8_U1 ( .a ({new_AGEMA_signal_183, T26}), .b ({new_AGEMA_signal_186, M6}), .c ({new_AGEMA_signal_195, M8}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M9_U1 ( .a ({new_AGEMA_signal_181, T20}), .b ({new_AGEMA_signal_180, T17}), .clk (clk), .r (Fresh[5]), .c ({new_AGEMA_signal_196, M9}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M10_U1 ( .a ({new_AGEMA_signal_196, M9}), .b ({new_AGEMA_signal_186, M6}), .c ({new_AGEMA_signal_199, M10}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M11_U1 ( .a ({new_AGEMA_signal_153, T1}), .b ({new_AGEMA_signal_172, T15}), .clk (clk), .r (Fresh[6]), .c ({new_AGEMA_signal_188, M11}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M12_U1 ( .a ({new_AGEMA_signal_158, T4}), .b ({new_AGEMA_signal_176, T27}), .clk (clk), .r (Fresh[7]), .c ({new_AGEMA_signal_189, M12}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M13_U1 ( .a ({new_AGEMA_signal_189, M12}), .b ({new_AGEMA_signal_188, M11}), .c ({new_AGEMA_signal_197, M13}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M14_U1 ( .a ({new_AGEMA_signal_155, T2}), .b ({new_AGEMA_signal_178, T10}), .clk (clk), .r (Fresh[8]), .c ({new_AGEMA_signal_198, M14}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M15_U1 ( .a ({new_AGEMA_signal_198, M14}), .b ({new_AGEMA_signal_188, M11}), .c ({new_AGEMA_signal_200, M15}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M16_U1 ( .a ({new_AGEMA_signal_193, M3}), .b ({new_AGEMA_signal_192, M2}), .c ({new_AGEMA_signal_201, M16}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M17_U1 ( .a ({new_AGEMA_signal_194, M5}), .b ({new_AGEMA_signal_190, T24}), .c ({new_AGEMA_signal_202, M17}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M18_U1 ( .a ({new_AGEMA_signal_195, M8}), .b ({new_AGEMA_signal_187, M7}), .c ({new_AGEMA_signal_203, M18}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M19_U1 ( .a ({new_AGEMA_signal_199, M10}), .b ({new_AGEMA_signal_200, M15}), .c ({new_AGEMA_signal_204, M19}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M20_U1 ( .a ({new_AGEMA_signal_201, M16}), .b ({new_AGEMA_signal_197, M13}), .c ({new_AGEMA_signal_205, M20}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M21_U1 ( .a ({new_AGEMA_signal_202, M17}), .b ({new_AGEMA_signal_200, M15}), .c ({new_AGEMA_signal_206, M21}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M22_U1 ( .a ({new_AGEMA_signal_203, M18}), .b ({new_AGEMA_signal_197, M13}), .c ({new_AGEMA_signal_207, M22}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M23_U1 ( .a ({new_AGEMA_signal_204, M19}), .b ({new_AGEMA_signal_191, T25}), .c ({new_AGEMA_signal_208, M23}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M24_U1 ( .a ({new_AGEMA_signal_207, M22}), .b ({new_AGEMA_signal_208, M23}), .c ({new_AGEMA_signal_212, M24}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M27_U1 ( .a ({new_AGEMA_signal_205, M20}), .b ({new_AGEMA_signal_206, M21}), .c ({new_AGEMA_signal_210, M27}) ) ;

    /* cells in depth 3 */

    /* cells in depth 4 */
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M25_U1 ( .a ({new_AGEMA_signal_207, M22}), .b ({new_AGEMA_signal_205, M20}), .clk (clk), .r (Fresh[9]), .c ({new_AGEMA_signal_209, M25}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M26_U1 ( .a ({new_AGEMA_signal_206, M21}), .b ({new_AGEMA_signal_209, M25}), .c ({new_AGEMA_signal_213, M26}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M28_U1 ( .a ({new_AGEMA_signal_208, M23}), .b ({new_AGEMA_signal_209, M25}), .c ({new_AGEMA_signal_214, M28}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M31_U1 ( .a ({new_AGEMA_signal_205, M20}), .b ({new_AGEMA_signal_208, M23}), .clk (clk), .r (Fresh[10]), .c ({new_AGEMA_signal_215, M31}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M33_U1 ( .a ({new_AGEMA_signal_210, M27}), .b ({new_AGEMA_signal_209, M25}), .c ({new_AGEMA_signal_216, M33}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M34_U1 ( .a ({new_AGEMA_signal_206, M21}), .b ({new_AGEMA_signal_207, M22}), .clk (clk), .r (Fresh[11]), .c ({new_AGEMA_signal_211, M34}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M36_U1 ( .a ({new_AGEMA_signal_212, M24}), .b ({new_AGEMA_signal_209, M25}), .c ({new_AGEMA_signal_221, M36}) ) ;

    /* cells in depth 5 */

    /* cells in depth 6 */
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M29_U1 ( .a ({new_AGEMA_signal_214, M28}), .b ({new_AGEMA_signal_210, M27}), .clk (clk), .r (Fresh[12]), .c ({new_AGEMA_signal_217, M29}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M30_U1 ( .a ({new_AGEMA_signal_213, M26}), .b ({new_AGEMA_signal_212, M24}), .clk (clk), .r (Fresh[13]), .c ({new_AGEMA_signal_218, M30}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M32_U1 ( .a ({new_AGEMA_signal_210, M27}), .b ({new_AGEMA_signal_215, M31}), .clk (clk), .r (Fresh[14]), .c ({new_AGEMA_signal_219, M32}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M35_U1 ( .a ({new_AGEMA_signal_212, M24}), .b ({new_AGEMA_signal_211, M34}), .clk (clk), .r (Fresh[15]), .c ({new_AGEMA_signal_220, M35}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M37_U1 ( .a ({new_AGEMA_signal_206, M21}), .b ({new_AGEMA_signal_217, M29}), .c ({new_AGEMA_signal_222, M37}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M38_U1 ( .a ({new_AGEMA_signal_219, M32}), .b ({new_AGEMA_signal_216, M33}), .c ({new_AGEMA_signal_223, M38}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M39_U1 ( .a ({new_AGEMA_signal_208, M23}), .b ({new_AGEMA_signal_218, M30}), .c ({new_AGEMA_signal_224, M39}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M40_U1 ( .a ({new_AGEMA_signal_220, M35}), .b ({new_AGEMA_signal_221, M36}), .c ({new_AGEMA_signal_225, M40}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M41_U1 ( .a ({new_AGEMA_signal_223, M38}), .b ({new_AGEMA_signal_225, M40}), .c ({new_AGEMA_signal_226, M41}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M42_U1 ( .a ({new_AGEMA_signal_222, M37}), .b ({new_AGEMA_signal_224, M39}), .c ({new_AGEMA_signal_227, M42}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M43_U1 ( .a ({new_AGEMA_signal_222, M37}), .b ({new_AGEMA_signal_223, M38}), .c ({new_AGEMA_signal_228, M43}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M44_U1 ( .a ({new_AGEMA_signal_224, M39}), .b ({new_AGEMA_signal_225, M40}), .c ({new_AGEMA_signal_229, M44}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_M45_U1 ( .a ({new_AGEMA_signal_227, M42}), .b ({new_AGEMA_signal_226, M41}), .c ({new_AGEMA_signal_238, M45}) ) ;

    /* cells in depth 7 */

    /* cells in depth 8 */
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M46_U1 ( .a ({new_AGEMA_signal_229, M44}), .b ({new_AGEMA_signal_169, T6}), .clk (clk), .r (Fresh[16]), .c ({new_AGEMA_signal_239, M46}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M47_U1 ( .a ({new_AGEMA_signal_225, M40}), .b ({new_AGEMA_signal_177, T8}), .clk (clk), .r (Fresh[17]), .c ({new_AGEMA_signal_230, M47}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M48_U1 ( .a ({new_AGEMA_signal_224, M39}), .b ({X_s1[0], X_s0[0]}), .clk (clk), .r (Fresh[18]), .c ({new_AGEMA_signal_231, M48}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M49_U1 ( .a ({new_AGEMA_signal_228, M43}), .b ({new_AGEMA_signal_173, T16}), .clk (clk), .r (Fresh[19]), .c ({new_AGEMA_signal_240, M49}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M50_U1 ( .a ({new_AGEMA_signal_223, M38}), .b ({new_AGEMA_signal_170, T9}), .clk (clk), .r (Fresh[20]), .c ({new_AGEMA_signal_232, M50}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M51_U1 ( .a ({new_AGEMA_signal_222, M37}), .b ({new_AGEMA_signal_180, T17}), .clk (clk), .r (Fresh[21]), .c ({new_AGEMA_signal_233, M51}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M52_U1 ( .a ({new_AGEMA_signal_227, M42}), .b ({new_AGEMA_signal_172, T15}), .clk (clk), .r (Fresh[22]), .c ({new_AGEMA_signal_241, M52}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M53_U1 ( .a ({new_AGEMA_signal_238, M45}), .b ({new_AGEMA_signal_176, T27}), .clk (clk), .r (Fresh[23]), .c ({new_AGEMA_signal_250, M53}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M54_U1 ( .a ({new_AGEMA_signal_226, M41}), .b ({new_AGEMA_signal_178, T10}), .clk (clk), .r (Fresh[24]), .c ({new_AGEMA_signal_242, M54}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M55_U1 ( .a ({new_AGEMA_signal_229, M44}), .b ({new_AGEMA_signal_171, T13}), .clk (clk), .r (Fresh[25]), .c ({new_AGEMA_signal_243, M55}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M56_U1 ( .a ({new_AGEMA_signal_225, M40}), .b ({new_AGEMA_signal_182, T23}), .clk (clk), .r (Fresh[26]), .c ({new_AGEMA_signal_234, M56}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M57_U1 ( .a ({new_AGEMA_signal_224, M39}), .b ({new_AGEMA_signal_174, T19}), .clk (clk), .r (Fresh[27]), .c ({new_AGEMA_signal_235, M57}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M58_U1 ( .a ({new_AGEMA_signal_228, M43}), .b ({new_AGEMA_signal_157, T3}), .clk (clk), .r (Fresh[28]), .c ({new_AGEMA_signal_244, M58}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M59_U1 ( .a ({new_AGEMA_signal_223, M38}), .b ({new_AGEMA_signal_175, T22}), .clk (clk), .r (Fresh[29]), .c ({new_AGEMA_signal_236, M59}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M60_U1 ( .a ({new_AGEMA_signal_222, M37}), .b ({new_AGEMA_signal_181, T20}), .clk (clk), .r (Fresh[30]), .c ({new_AGEMA_signal_237, M60}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M61_U1 ( .a ({new_AGEMA_signal_227, M42}), .b ({new_AGEMA_signal_153, T1}), .clk (clk), .r (Fresh[31]), .c ({new_AGEMA_signal_245, M61}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M62_U1 ( .a ({new_AGEMA_signal_238, M45}), .b ({new_AGEMA_signal_158, T4}), .clk (clk), .r (Fresh[32]), .c ({new_AGEMA_signal_251, M62}) ) ;
    and_HPC2 #(.security_order(1), .pipeline(0)) AND_M63_U1 ( .a ({new_AGEMA_signal_226, M41}), .b ({new_AGEMA_signal_155, T2}), .clk (clk), .r (Fresh[33]), .c ({new_AGEMA_signal_246, M63}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L0_U1 ( .a ({new_AGEMA_signal_245, M61}), .b ({new_AGEMA_signal_251, M62}), .c ({new_AGEMA_signal_260, L0}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L1_U1 ( .a ({new_AGEMA_signal_232, M50}), .b ({new_AGEMA_signal_234, M56}), .c ({new_AGEMA_signal_247, L1}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L2_U1 ( .a ({new_AGEMA_signal_239, M46}), .b ({new_AGEMA_signal_231, M48}), .c ({new_AGEMA_signal_252, L2}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L3_U1 ( .a ({new_AGEMA_signal_230, M47}), .b ({new_AGEMA_signal_243, M55}), .c ({new_AGEMA_signal_253, L3}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L4_U1 ( .a ({new_AGEMA_signal_242, M54}), .b ({new_AGEMA_signal_244, M58}), .c ({new_AGEMA_signal_254, L4}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L5_U1 ( .a ({new_AGEMA_signal_240, M49}), .b ({new_AGEMA_signal_245, M61}), .c ({new_AGEMA_signal_255, L5}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L6_U1 ( .a ({new_AGEMA_signal_251, M62}), .b ({new_AGEMA_signal_255, L5}), .c ({new_AGEMA_signal_261, L6}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L7_U1 ( .a ({new_AGEMA_signal_239, M46}), .b ({new_AGEMA_signal_253, L3}), .c ({new_AGEMA_signal_262, L7}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L8_U1 ( .a ({new_AGEMA_signal_233, M51}), .b ({new_AGEMA_signal_236, M59}), .c ({new_AGEMA_signal_248, L8}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L9_U1 ( .a ({new_AGEMA_signal_241, M52}), .b ({new_AGEMA_signal_250, M53}), .c ({new_AGEMA_signal_263, L9}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L10_U1 ( .a ({new_AGEMA_signal_250, M53}), .b ({new_AGEMA_signal_254, L4}), .c ({new_AGEMA_signal_264, L10}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L11_U1 ( .a ({new_AGEMA_signal_237, M60}), .b ({new_AGEMA_signal_252, L2}), .c ({new_AGEMA_signal_265, L11}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L12_U1 ( .a ({new_AGEMA_signal_231, M48}), .b ({new_AGEMA_signal_233, M51}), .c ({new_AGEMA_signal_249, L12}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L13_U1 ( .a ({new_AGEMA_signal_232, M50}), .b ({new_AGEMA_signal_260, L0}), .c ({new_AGEMA_signal_269, L13}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L14_U1 ( .a ({new_AGEMA_signal_241, M52}), .b ({new_AGEMA_signal_245, M61}), .c ({new_AGEMA_signal_256, L14}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L15_U1 ( .a ({new_AGEMA_signal_243, M55}), .b ({new_AGEMA_signal_247, L1}), .c ({new_AGEMA_signal_257, L15}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L16_U1 ( .a ({new_AGEMA_signal_234, M56}), .b ({new_AGEMA_signal_260, L0}), .c ({new_AGEMA_signal_270, L16}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L17_U1 ( .a ({new_AGEMA_signal_235, M57}), .b ({new_AGEMA_signal_247, L1}), .c ({new_AGEMA_signal_258, L17}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L18_U1 ( .a ({new_AGEMA_signal_244, M58}), .b ({new_AGEMA_signal_248, L8}), .c ({new_AGEMA_signal_259, L18}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L19_U1 ( .a ({new_AGEMA_signal_246, M63}), .b ({new_AGEMA_signal_254, L4}), .c ({new_AGEMA_signal_266, L19}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L20_U1 ( .a ({new_AGEMA_signal_260, L0}), .b ({new_AGEMA_signal_247, L1}), .c ({new_AGEMA_signal_271, L20}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L21_U1 ( .a ({new_AGEMA_signal_247, L1}), .b ({new_AGEMA_signal_262, L7}), .c ({new_AGEMA_signal_272, L21}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L22_U1 ( .a ({new_AGEMA_signal_253, L3}), .b ({new_AGEMA_signal_249, L12}), .c ({new_AGEMA_signal_267, L22}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L23_U1 ( .a ({new_AGEMA_signal_259, L18}), .b ({new_AGEMA_signal_252, L2}), .c ({new_AGEMA_signal_268, L23}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L24_U1 ( .a ({new_AGEMA_signal_257, L15}), .b ({new_AGEMA_signal_263, L9}), .c ({new_AGEMA_signal_273, L24}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L25_U1 ( .a ({new_AGEMA_signal_261, L6}), .b ({new_AGEMA_signal_264, L10}), .c ({new_AGEMA_signal_274, L25}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L26_U1 ( .a ({new_AGEMA_signal_262, L7}), .b ({new_AGEMA_signal_263, L9}), .c ({new_AGEMA_signal_275, L26}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L27_U1 ( .a ({new_AGEMA_signal_248, L8}), .b ({new_AGEMA_signal_264, L10}), .c ({new_AGEMA_signal_276, L27}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L28_U1 ( .a ({new_AGEMA_signal_265, L11}), .b ({new_AGEMA_signal_256, L14}), .c ({new_AGEMA_signal_277, L28}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_L29_U1 ( .a ({new_AGEMA_signal_265, L11}), .b ({new_AGEMA_signal_258, L17}), .c ({new_AGEMA_signal_278, L29}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_S0_U1 ( .a ({new_AGEMA_signal_261, L6}), .b ({new_AGEMA_signal_273, L24}), .c ({new_AGEMA_signal_280, O[7]}) ) ;
    xnor_HPC2 #(.security_order(1), .pipeline(0)) XOR_S1_U1 ( .a ({new_AGEMA_signal_270, L16}), .b ({new_AGEMA_signal_275, L26}), .c ({new_AGEMA_signal_281, O[6]}) ) ;
    xnor_HPC2 #(.security_order(1), .pipeline(0)) XOR_S2_U1 ( .a ({new_AGEMA_signal_266, L19}), .b ({new_AGEMA_signal_277, L28}), .c ({new_AGEMA_signal_282, O[5]}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_S3_U1 ( .a ({new_AGEMA_signal_261, L6}), .b ({new_AGEMA_signal_272, L21}), .c ({new_AGEMA_signal_283, O[4]}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_S4_U1 ( .a ({new_AGEMA_signal_271, L20}), .b ({new_AGEMA_signal_267, L22}), .c ({new_AGEMA_signal_284, O[3]}) ) ;
    xor_HPC2 #(.security_order(1), .pipeline(0)) XOR_S5_U1 ( .a ({new_AGEMA_signal_274, L25}), .b ({new_AGEMA_signal_278, L29}), .c ({new_AGEMA_signal_285, O[2]}) ) ;
    xnor_HPC2 #(.security_order(1), .pipeline(0)) XOR_S6_U1 ( .a ({new_AGEMA_signal_269, L13}), .b ({new_AGEMA_signal_276, L27}), .c ({new_AGEMA_signal_286, O[1]}) ) ;
    xnor_HPC2 #(.security_order(1), .pipeline(0)) XOR_S7_U1 ( .a ({new_AGEMA_signal_261, L6}), .b ({new_AGEMA_signal_268, L23}), .c ({new_AGEMA_signal_279, O[0]}) ) ;

    /* register cells */
    assign {Y_s1[7], Y_s0[7]} = {new_AGEMA_signal_280, O[7]};
    assign {Y_s1[6], Y_s0[6]} = {new_AGEMA_signal_281, O[6]};
    assign {Y_s1[5], Y_s0[5]} = {new_AGEMA_signal_282, O[5]};
    assign {Y_s1[4], Y_s0[4]} = {new_AGEMA_signal_283, O[4]};
    assign {Y_s1[3], Y_s0[3]} = {new_AGEMA_signal_284, O[3]};
    assign {Y_s1[2], Y_s0[2]} = {new_AGEMA_signal_285, O[2]};
    assign {Y_s1[1], Y_s0[1]} = {new_AGEMA_signal_286, O[1]};
    assign {Y_s1[0], Y_s0[0]} = {new_AGEMA_signal_279, O[0]};
endmodule