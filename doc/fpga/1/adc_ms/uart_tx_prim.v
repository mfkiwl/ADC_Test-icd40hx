// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.2.446
// Netlist written on Mon Jul 27 20:59:18 2020
//
// Verilog Description of module uart_tx
//

module uart_tx (uart_tx_bclk, uart_tx_start, uart_tx_data, uart_tx_pin, 
            uart_tx_busy) /* synthesis syn_module_defined=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(2[8:15])
    input uart_tx_bclk;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(3[10:22])
    input uart_tx_start;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(4[10:23])
    input [7:0]uart_tx_data;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(5[16:28])
    output uart_tx_pin;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(6[15:26])
    output uart_tx_busy;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(7[15:27])
    
    wire uart_tx_bclk_c /* synthesis is_clock=1, SET_AS_NETWORK=uart_tx_bclk_c */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(3[10:22])
    
    wire n346, uart_tx_start_c, uart_tx_data_c_7, uart_tx_data_c_6, 
        uart_tx_data_c_5, uart_tx_data_c_4, uart_tx_data_c_3, uart_tx_data_c_2, 
        uart_tx_data_c_1, uart_tx_data_c_0, uart_tx_pin_c, uart_tx_busy_c;
    wire [2:0]uart_tx_state;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(9[10:23])
    wire [2:0]uart_tx_bit;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(10[10:21])
    
    wire uart_tx_bclk_c_enable_4, uart_tx_bclk_c_enable_1, uart_tx_busy_N_25, 
        n389, uart_tx_state_2__N_10, uart_tx_pin_N_18, n349, n144, 
        n388, n351, n387, n348, n334, n378;
    wire [2:0]uart_tx_state_2__N_1;
    
    wire n117, n386, n150, n286, n5, n332, n385, n347, n244, 
        n299, n248, n317, n350, n411, VCC_net, GND_net;
    
    VLO i330 (.Z(GND_net));
    ORCALUT4 i280_3_lut (.A(uart_tx_data_c_2), .B(uart_tx_data_c_3), .C(uart_tx_bit[0]), 
            .Z(n347)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i280_3_lut.init = 16'hcaca;
    IB uart_tx_data_pad_1 (.I(uart_tx_data[1]), .O(uart_tx_data_c_1));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(5[16:28])
    IB uart_tx_data_pad_2 (.I(uart_tx_data[2]), .O(uart_tx_data_c_2));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(5[16:28])
    IB uart_tx_data_pad_3 (.I(uart_tx_data[3]), .O(uart_tx_data_c_3));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(5[16:28])
    FD1S3IX uart_tx_pin_38 (.D(n244), .CK(uart_tx_bclk_c), .CD(uart_tx_state_2__N_10), 
            .Q(uart_tx_pin_c));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_pin_38.GSR = "ENABLED";
    ORCALUT4 i281_3_lut (.A(uart_tx_data_c_4), .B(uart_tx_data_c_5), .C(uart_tx_bit[0]), 
            .Z(n348)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i281_3_lut.init = 16'hcaca;
    ORCALUT4 equal_51_i6_1_lut_2_lut_3_lut (.A(uart_tx_state[2]), .B(uart_tx_state[1]), 
            .C(uart_tx_state[0]), .Z(uart_tx_busy_N_25)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(18[6:22])
    defparam equal_51_i6_1_lut_2_lut_3_lut.init = 16'h0101;
    IB uart_tx_data_pad_4 (.I(uart_tx_data[4]), .O(uart_tx_data_c_4));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(5[16:28])
    ORCALUT4 i1_3_lut (.A(uart_tx_bit[2]), .B(uart_tx_bit[1]), .C(uart_tx_bit[0]), 
            .Z(n299)) /* synthesis lut_function=(A+(B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(35[19:34])
    defparam i1_3_lut.init = 16'heaea;
    ORCALUT4 i1_2_lut_2_lut (.A(uart_tx_start_c), .B(uart_tx_state[1]), 
            .Z(n317)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_2_lut.init = 16'h4444;
    FD1P3AX uart_tx_state_i0 (.D(uart_tx_state_2__N_1[0]), .SP(uart_tx_bclk_c_enable_1), 
            .CK(uart_tx_bclk_c), .Q(uart_tx_state[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_state_i0.GSR = "ENABLED";
    FD1P3IX uart_tx_bit__i1 (.D(n117), .SP(uart_tx_bclk_c_enable_4), .CD(uart_tx_state_2__N_10), 
            .CK(uart_tx_bclk_c), .Q(uart_tx_bit[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_bit__i1.GSR = "ENABLED";
    ORCALUT4 i294_3_lut (.A(uart_tx_state[1]), .B(uart_tx_state[2]), .C(uart_tx_state[0]), 
            .Z(n286)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(46[11:27])
    defparam i294_3_lut.init = 16'h0404;
    IB uart_tx_data_pad_5 (.I(uart_tx_data[5]), .O(uart_tx_data_c_5));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(5[16:28])
    ORCALUT4 i96_3_lut_4_lut (.A(uart_tx_bit[0]), .B(n389), .C(n386), 
            .D(n5), .Z(n150)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i96_3_lut_4_lut.init = 16'hf707;
    ORCALUT4 i138_2_lut_rep_8 (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), .Z(n389)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(34[7:20])
    defparam i138_2_lut_rep_8.init = 16'h8888;
    ORCALUT4 i279_3_lut (.A(uart_tx_data_c_0), .B(uart_tx_data_c_1), .C(uart_tx_bit[0]), 
            .Z(n346)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i279_3_lut.init = 16'hcaca;
    IB uart_tx_start_pad (.I(uart_tx_start), .O(uart_tx_start_c));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(4[10:23])
    ORCALUT4 i1_2_lut_rep_7 (.A(uart_tx_state[2]), .B(uart_tx_state[1]), 
            .Z(n388)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(30[11:27])
    defparam i1_2_lut_rep_7.init = 16'hbbbb;
    IB uart_tx_bclk_pad (.I(uart_tx_bclk), .O(uart_tx_bclk_c));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(3[10:22])
    ORCALUT4 i306_2_lut_3_lut (.A(uart_tx_state[2]), .B(uart_tx_state[1]), 
            .C(uart_tx_state[0]), .Z(uart_tx_state_2__N_10)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(18[6:22])
    defparam i306_2_lut_3_lut.init = 16'h1010;
    IB uart_tx_data_pad_0 (.I(uart_tx_data[0]), .O(uart_tx_data_c_0));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(5[16:28])
    OB uart_tx_busy_pad (.I(uart_tx_busy_c), .O(uart_tx_busy));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(7[15:27])
    IB uart_tx_data_pad_6 (.I(uart_tx_data[6]), .O(uart_tx_data_c_6));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(5[16:28])
    OB uart_tx_pin_pad (.I(uart_tx_pin_c), .O(uart_tx_pin));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(6[15:26])
    ORCALUT4 i309_2_lut_rep_6_3_lut (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), 
            .C(uart_tx_bit[0]), .Z(n387)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(34[7:20])
    defparam i309_2_lut_rep_6_3_lut.init = 16'h8f8f;
    IB uart_tx_data_pad_7 (.I(uart_tx_data[7]), .O(uart_tx_data_c_7));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(5[16:28])
    FD1P3IX uart_tx_bit__i2 (.D(n299), .SP(uart_tx_bclk_c_enable_4), .CD(uart_tx_state_2__N_10), 
            .CK(uart_tx_bclk_c), .Q(uart_tx_bit[2]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_bit__i2.GSR = "ENABLED";
    FD1S3JX uart_tx_state_i1 (.D(n248), .CK(uart_tx_bclk_c), .PD(uart_tx_state_2__N_10), 
            .Q(uart_tx_state[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_state_i1.GSR = "ENABLED";
    FD1P3IX uart_tx_busy_37 (.D(n411), .SP(uart_tx_busy_N_25), .CD(n286), 
            .CK(uart_tx_bclk_c), .Q(uart_tx_busy_c));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_busy_37.GSR = "ENABLED";
    ORCALUT4 i299_2_lut_rep_4_3_lut (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), 
            .C(uart_tx_bit[0]), .Z(n385)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(34[7:20])
    defparam i299_2_lut_rep_4_3_lut.init = 16'h7f7f;
    ORCALUT4 i265_2_lut_3_lut_4_lut (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), 
            .C(uart_tx_state[0]), .D(uart_tx_bit[0]), .Z(n332)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(34[7:20])
    defparam i265_2_lut_3_lut_4_lut.init = 16'hf8f0;
    PFUMX i283 (.BLUT(n346), .ALUT(n347), .C0(uart_tx_bit[1]), .Z(n350));
    FD1S3IX uart_tx_state_i2 (.D(n378), .CK(uart_tx_bclk_c), .CD(uart_tx_state_2__N_10), 
            .Q(uart_tx_state[2]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_state_i2.GSR = "ENABLED";
    ORCALUT4 i190_2_lut_3_lut_4_lut (.A(uart_tx_state[0]), .B(n388), .C(n389), 
            .D(uart_tx_bit[0]), .Z(n144)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(30[11:27])
    defparam i190_2_lut_3_lut_4_lut.init = 16'h1000;
    FD1P3IX uart_tx_bit__i0 (.D(n387), .SP(uart_tx_bclk_c_enable_4), .CD(uart_tx_state_2__N_10), 
            .CK(uart_tx_bclk_c), .Q(uart_tx_bit[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_bit__i0.GSR = "ENABLED";
    ORCALUT4 uart_tx_start_c_bdd_4_lut (.A(uart_tx_start_c), .B(uart_tx_state[2]), 
            .C(uart_tx_state[0]), .D(uart_tx_state[1]), .Z(n378)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B+(C (D))))) */ ;
    defparam uart_tx_start_c_bdd_4_lut.init = 16'h7444;
    ORCALUT4 i117_2_lut_3_lut_3_lut (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), 
            .C(uart_tx_bit[0]), .Z(n117)) /* synthesis lut_function=(A (B+!(C))+!A (C)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(34[7:20])
    defparam i117_2_lut_3_lut_3_lut.init = 16'hdada;
    GSR GSR_INST (.GSR(VCC_net));
    ORCALUT4 i301_4_lut (.A(uart_tx_start_c), .B(uart_tx_state[1]), .C(uart_tx_state[2]), 
            .D(n332), .Z(uart_tx_bclk_c_enable_1)) /* synthesis lut_function=(A+!(B (C+!(D))+!B (C))) */ ;
    defparam i301_4_lut.init = 16'hafab;
    ORCALUT4 i304_4_lut (.A(uart_tx_state[1]), .B(n334), .C(uart_tx_start_c), 
            .D(n385), .Z(uart_tx_state_2__N_1[0])) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C)))) */ ;
    defparam i304_4_lut.init = 16'h0123;
    ORCALUT4 i267_2_lut (.A(uart_tx_state[0]), .B(uart_tx_state[2]), .Z(n334)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i267_2_lut.init = 16'heeee;
    L6MUX21 i285 (.D0(n350), .D1(n351), .SD(uart_tx_bit[2]), .Z(uart_tx_pin_N_18));
    PFUMX i284 (.BLUT(n348), .ALUT(n349), .C0(uart_tx_bit[1]), .Z(n351));
    ORCALUT4 i282_3_lut (.A(uart_tx_data_c_6), .B(uart_tx_data_c_7), .C(uart_tx_bit[0]), 
            .Z(n349)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i282_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_5_3_lut (.A(uart_tx_state[2]), .B(uart_tx_state[1]), 
            .C(uart_tx_state[0]), .Z(n386)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(30[11:27])
    defparam i1_2_lut_rep_5_3_lut.init = 16'hfbfb;
    ORCALUT4 i1_3_lut_adj_1 (.A(uart_tx_state[2]), .B(uart_tx_state[1]), 
            .C(uart_tx_state[0]), .Z(uart_tx_bclk_c_enable_4)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_1.init = 16'h1414;
    ORCALUT4 i174_4_lut (.A(uart_tx_pin_c), .B(uart_tx_pin_N_18), .C(n386), 
            .D(n5), .Z(n244)) /* synthesis lut_function=(A (B+(C))+!A !(B (C (D))+!B ((D)+!C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam i174_4_lut.init = 16'hacfc;
    TSALL TSALL_INST (.TSALL(GND_net));
    ORCALUT4 m1_lut (.Z(n411)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    ORCALUT4 i1_2_lut_3_lut (.A(uart_tx_state[2]), .B(uart_tx_state[1]), 
            .C(uart_tx_state[0]), .Z(n5)) /* synthesis lut_function=(A+!(B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(30[11:27])
    defparam i1_2_lut_3_lut.init = 16'hbfbf;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i178 (.BLUT(n144), .ALUT(n317), .C0(n150), .Z(n248));
    VHI i331 (.Z(VCC_net));
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

