// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.11.2.446
// Netlist written on Tue Jul 28 13:17:55 2020
//
// Verilog Description of module adc_ms
//

module adc_ms (mclk, comp_ext, con_start, si_dat, sw_in, sw_up, 
            sw_dn, sw_rst, sw_vref, sw_vref_n, so_dat, vref_su, 
            deb_0, deb_1, deb_2, par_out, ) /* synthesis syn_module_defined=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(3[8:14])
    input mclk;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(10[7:11])
    input comp_ext;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(10[12:20])
    input con_start;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(10[22:31])
    input si_dat;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(10[32:38])
    output sw_in;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[8:13])
    output sw_up;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[15:20])
    output sw_dn;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[21:26])
    output sw_rst;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[27:33])
    output sw_vref;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[34:41])
    output sw_vref_n;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[42:51])
    output so_dat;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[52:58])
    output vref_su;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[60:67])
    output deb_0;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(12[8:13])
    output deb_1;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(12[14:19])
    output deb_2;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(12[20:25])
    output [13:0]par_out;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    
    wire mclk_c /* synthesis SET_AS_NETWORK=mclk_c, is_clock=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(10[7:11])
    wire [5:0]cnt /* synthesis SET_AS_NETWORK=cnt[5], is_clock=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(16[10:13])
    wire [5:0]uart_divider /* synthesis SET_AS_NETWORK=uart_divider[3], is_clock=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(17[10:22])
    
    wire GND_net, VCC_net, comp_ext_c, con_start_c, deb_0_c_c, sw_in_c, 
        sw_up_c, sw_dn_c, sw_vref_c, sw_vref_n_c, so_dat_c, deb_1_c, 
        deb_2_c, par_out_c_13, par_out_c_12, par_out_c_11, par_out_c_10, 
        par_out_c_9, par_out_c_8, par_out_c_7, par_out_c_6, par_out_c_5, 
        par_out_c_4, par_out_c_3, par_out_c_2, par_out_c_1, par_out_c_0, 
        n23, n26;
    wire [14:0]cnt_stat;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(18[11:19])
    wire [14:0]cnt_runup;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(19[11:20])
    wire [4:0]state;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(20[10:15])
    wire [0:0]sw_rst_r;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(22[28:36])
    wire [0:0]sw_in_r;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(22[49:56])
    wire [0:0]runup_state_r;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(23[10:23])
    
    wire uart_tx_start, uart_frame_start, uart_rx_rst;
    wire [2:0]uart_frame_state;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(25[11:27])
    
    wire n5908;
    wire [2:0]uart_frame_r;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(25[28:40])
    wire [3:0]uart_frame_cnt;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(26[11:25])
    
    wire uart_busy, uart_rx_ready, comp_fast, comp_fast_sync, comp_slow, 
        comp_slow_sync, cstart_slow, cstart_slow_sync;
    wire [14:0]runup_cnt;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(32[12:21])
    wire [14:0]runup_set;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(33[12:21])
    wire [15:0]rundown_cnt;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(34[12:23])
    
    wire rundown_sign;
    wire [47:0]frame_content;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(36[12:25])
    
    wire n6379;
    wire [47:0]result_content;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(37[12:26])
    wire [7:0]uart_tx_register;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(38[11:27])
    wire [2:0]uart_rx_state;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(39[11:24])
    wire [7:0]uart_rx_register;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(40[12:28])
    
    wire cnt_5__N_310, comp_ext_N_559, n97, n98, n5921, n72, n71, 
        n70, n69, n68, n67, n66, n74, n5886, n5907, n6300, 
        n6413, n6419, n6416, n6410, n6435, n6432, n35, n34, 
        n33, n32, n31, n30, n5885, n2097, n3818, n5906, n6, 
        n3752, n3754, n3756, n3761, n5905, n3768, n3770, n5884, 
        n3664, n3725, n3738, n3740, n3742, n3744, n3696, sw_up_N_525, 
        n6672, runup_state_r_0__N_89, n5904, n3790, n5903, n6349, 
        n5872, cnt_5_enable_65, n5871, n5883, n3549, n5882, n3547, 
        n3781, n6709, n5881, n86, n3830, n3668, n5880, n5874, 
        n6706, result_content_46__N_200, uart_divider_3_enable_11, n5879, 
        n6705, n5936, n3846, n3844, n3842, sw_up_N_519, sw_dn_N_531, 
        n5901, n3409, n3736, n5900, n6651, n6704, n6464, n31_adj_691, 
        n6650, n5875, n5876, n6649, n6299, n6_adj_692, n5899, 
        n5898, n6437, n6436, n3867, n6397;
    wire [2:0]uart_tx_state;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(9[10:23])
    
    wire n3840, n6434, n3732, n6433, n6643, cnt_5_enable_64, n3495, 
        n3785, n10, n6279, n3253, n3007, n3694, n3700, n3705, 
        cnt_5_enable_52, n5897, n3015, n3490, n5896, n5878, n25, 
        n24, cnt_5_enable_66, n3774, n5, n79, n78, n74_adj_693, 
        n73, n7, n6697, uart_divider_3_enable_13, n3836, n7_adj_694, 
        n7_adj_695, n80;
    wire [7:0]uart_tx_register_7__N_495;
    
    wire n77, n75, n3734, n5895, n6431, n6430, n23_adj_696, n22, 
        n6429, n15, n3772, n6632, n6631, n76, n6630, n23_adj_697, 
        n26_adj_698, n6626, n80_adj_699, n79_adj_700, n78_adj_701, 
        n77_adj_702, n76_adj_703, n75_adj_704, n74_adj_705, n73_adj_706, 
        n72_adj_707, n71_adj_708, n70_adj_709, n69_adj_710, n68_adj_711, 
        n67_adj_712, n66_adj_713, n6625, n5894, n5892, n5891, n6420, 
        n9, n3805, n4458, n3832, n3828, n3822, n3848, n15_adj_714, 
        n6677, n6624, cnt_5_enable_63, n6863, n3855, n3698, n3692, 
        n3690, n6730, n6418, n44, cnt_5_enable_84, n3838, n3801, 
        n49, n4787, n6676, n6_adj_715, n5870, n6417, n3688, n3, 
        n2, n3446, n5873, n6675, n2341, n46, cnt_5_enable_22, 
        n2131, n5910, n2081, cnt_5_enable_68, n6691, n6728, n6727, 
        n6415, cnt_5_enable_14, uart_divider_3_enable_52, n5889, n6414, 
        n6412, n6689, n6_adj_716, n6411, n70_adj_717, n71_adj_718, 
        n72_adj_719, n73_adj_720, n74_adj_721, n75_adj_722, n76_adj_723, 
        n77_adj_724, n78_adj_725, n79_adj_726, n80_adj_727, n81, n82, 
        n83, n84, n85, n4747, n5888, n51, n5887, n3718, n6722, 
        n5877, n3716, n5869, n6685, cnt_5_enable_75, n6721, n6720, 
        n6409, cnt_5_enable_69, n3727, n6684, n3776, cnt_5_enable_73, 
        n6864, n66_adj_728, n67_adj_729, n68_adj_730, n69_adj_731, 
        n70_adj_732, n71_adj_733, n72_adj_734, n73_adj_735, n74_adj_736, 
        n75_adj_737, n76_adj_738, n77_adj_739, n78_adj_740, n79_adj_741, 
        n80_adj_742, cnt_5_enable_81, n6401, n6408, n6407, cnt_5_enable_46, 
        n6405, n6395, n3778, n5909, n8, n12, n6671, n6670, n6292, 
        n6393, n6275, n6387, n6669, n6714, n6680;
    
    VHI i2 (.Z(VCC_net));
    uart_tx uart_tx_a (.\uart_divider[3] (uart_divider[3]), .\uart_divider[3]_enable_13 (uart_divider_3_enable_13), 
            .uart_tx_state({uart_tx_state}), .uart_busy(uart_busy), .n6864(n6864), 
            .so_dat_c(so_dat_c), .uart_tx_start(uart_tx_start), .uart_tx_register({uart_tx_register})) /* synthesis syn_module_defined=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(373[9] 381[2])
    FD1P3IX cnt_stat_1077__i9 (.D(n71), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i9.GSR = "ENABLED";
    FD1P3AX par_out_r_i0_i6 (.D(uart_rx_register[1]), .SP(cnt_5_enable_69), 
            .CK(cnt[5]), .Q(par_out_c_5));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i6.GSR = "ENABLED";
    FD1P3AX par_out_r_i0_i5 (.D(uart_rx_register[0]), .SP(cnt_5_enable_69), 
            .CK(cnt[5]), .Q(par_out_c_4));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i5.GSR = "ENABLED";
    FD1P3AX par_out_r_i0_i4 (.D(uart_rx_register[3]), .SP(cnt_5_enable_52), 
            .CK(cnt[5]), .Q(par_out_c_3));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i4.GSR = "ENABLED";
    FD1P3IX cnt_stat_1077__i10 (.D(n70), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i10.GSR = "ENABLED";
    FD1P3AX par_out_r_i0_i3 (.D(uart_rx_register[2]), .SP(cnt_5_enable_52), 
            .CK(cnt[5]), .Q(par_out_c_2));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i3.GSR = "ENABLED";
    FD1P3AX par_out_r_i0_i2 (.D(uart_rx_register[1]), .SP(cnt_5_enable_52), 
            .CK(cnt[5]), .Q(par_out_c_1));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i2.GSR = "ENABLED";
    FD1P3IX cnt_stat_1077__i11 (.D(n69), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i11.GSR = "ENABLED";
    ORCALUT4 i1_4_lut (.A(n10), .B(n6704), .C(n6279), .D(n6730), .Z(n74)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(18[11:19])
    defparam i1_4_lut.init = 16'hfcec;
    FD1P3AX par_out_r_i0_i7 (.D(uart_rx_register[2]), .SP(cnt_5_enable_69), 
            .CK(cnt[5]), .Q(par_out_c_6));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i7.GSR = "ENABLED";
    ORCALUT4 i4_4_lut (.A(cnt_stat[8]), .B(cnt_stat[7]), .C(cnt_stat[10]), 
            .D(n6_adj_692), .Z(n6279)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i4_4_lut.init = 16'h8000;
    ORCALUT4 i1_2_lut (.A(cnt_stat[11]), .B(cnt_stat[9]), .Z(n6_adj_692)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i1_2_lut.init = 16'h8888;
    ORCALUT4 i1_4_lut_adj_43 (.A(cnt_stat[10]), .B(n3409), .C(n44), .D(n86), 
            .Z(result_content_46__N_200)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i1_4_lut_adj_43.init = 16'heeec;
    OB deb_1_pad (.I(deb_1_c), .O(deb_1));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(12[14:19])
    ORCALUT4 i1_4_lut_adj_44 (.A(cnt_stat[7]), .B(cnt_stat[6]), .C(cnt_stat[5]), 
            .D(n46), .Z(n44)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_44.init = 16'ha888;
    ORCALUT4 i4953_4_lut (.A(n6379), .B(cnt_stat[14]), .C(n6397), .D(cnt_stat[7]), 
            .Z(n6401)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4953_4_lut.init = 16'hfffe;
    FD1P3IX cnt_stat_1077__i12 (.D(n68), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i12.GSR = "ENABLED";
    ORCALUT4 i2_3_lut (.A(state[1]), .B(result_content_46__N_200), .C(state[0]), 
            .Z(n51)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i2_3_lut.init = 16'h2020;
    FD1S3AX cnt_runup_1079__i0 (.D(n3770), .CK(cnt[5]), .Q(cnt_runup[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i0.GSR = "ENABLED";
    ORCALUT4 i3333_3_lut (.A(uart_rx_register[0]), .B(uart_rx_register[2]), 
            .C(uart_rx_register[1]), .Z(n7_adj_695)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(69[5] 81[12])
    defparam i3333_3_lut.init = 16'hc8c8;
    OB deb_0_pad (.I(deb_0_c_c), .O(deb_0));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(12[8:13])
    FD1S3IX state__i0 (.D(n3855), .CK(cnt[5]), .CD(cnt_5_enable_63), .Q(state[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam state__i0.GSR = "ENABLED";
    FD1P3IX cnt_stat_1077__i13 (.D(n67), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i13.GSR = "ENABLED";
    ORCALUT4 mux_12_Mux_9_i7_3_lut (.A(uart_rx_register[1]), .B(uart_rx_register[0]), 
            .C(uart_rx_register[2]), .Z(n7_adj_694)) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(69[5] 81[12])
    defparam mux_12_Mux_9_i7_3_lut.init = 16'h9a9a;
    ORCALUT4 i1_2_lut_rep_83 (.A(n5910), .B(n3446), .Z(n6677)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_83.init = 16'heeee;
    ORCALUT4 i2349_4_lut (.A(runup_cnt[0]), .B(n80_adj_742), .C(n2097), 
            .D(n6691), .Z(n3785)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2349_4_lut.init = 16'hc0ca;
    ORCALUT4 comp_ext_I_0_1_lut (.A(comp_ext_c), .Z(comp_ext_N_559)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(57[20:29])
    defparam comp_ext_I_0_1_lut.init = 16'h5555;
    FD1P3AX result_content_0__453 (.D(rundown_cnt[0]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_0__453.GSR = "ENABLED";
    FD1P3IX cnt_stat_1077__i14 (.D(n66), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i14.GSR = "ENABLED";
    ORCALUT4 i2054_4_lut (.A(comp_slow), .B(runup_state_r[0]), .C(n6651), 
            .D(n6691), .Z(n3490)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam i2054_4_lut.init = 16'h0aca;
    ORCALUT4 i1_2_lut_rep_76_3_lut_4_lut (.A(n5910), .B(n3446), .C(runup_state_r_0__N_89), 
            .D(n6689), .Z(n6670)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_76_3_lut_4_lut.init = 16'he000;
    PFUMX i4967 (.BLUT(n6413), .ALUT(n6414), .C0(uart_frame_cnt[0]), .Z(n6415));
    FD1P3IX uart_rx_state__i0 (.D(n6864), .SP(cnt_5_enable_14), .CD(n31_adj_691), 
            .CK(cnt[5]), .Q(uart_rx_state[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam uart_rx_state__i0.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    ORCALUT4 i2_3_lut_4_lut (.A(n6677), .B(n6689), .C(comp_slow), .D(runup_state_r_0__N_89), 
            .Z(n2097)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(163[2] 219[5])
    defparam i2_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i5018_3_lut_4_lut (.A(sw_up_c), .B(n6714), .C(state[4]), 
            .D(n15_adj_714), .Z(n26)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(241[2] 273[5])
    defparam i5018_3_lut_4_lut.init = 16'h8f80;
    CCU2 cnt_1085_add_4_2 (.A0(cnt[0]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(cnt[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(GND_net), 
         .COUT1(n5891), .S0(n35), .S1(n34));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(50[10:17])
    defparam cnt_1085_add_4_2.INIT0 = 16'h0555;
    defparam cnt_1085_add_4_2.INIT1 = 16'hfaaa;
    defparam cnt_1085_add_4_2.INJECT1_0 = "NO";
    defparam cnt_1085_add_4_2.INJECT1_1 = "NO";
    FD1P3JX runup_set_i10 (.D(n7_adj_695), .SP(cnt_5_enable_46), .PD(n4458), 
            .CK(cnt[5]), .Q(runup_set[10])) /* synthesis lse_init_val=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam runup_set_i10.GSR = "ENABLED";
    FD1P3AX result_content_1__452 (.D(rundown_cnt[1]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_1__452.GSR = "ENABLED";
    FD1P3AX result_content_2__451 (.D(rundown_cnt[2]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[2]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_2__451.GSR = "ENABLED";
    ORCALUT4 i2308_4_lut (.A(rundown_cnt[0]), .B(n85), .C(n4787), .D(n9), 
            .Z(n3744)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2308_4_lut.init = 16'hac0c;
    FD1P3AX result_content_3__450 (.D(rundown_cnt[3]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[3]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_3__450.GSR = "ENABLED";
    FD1P3AX result_content_4__449 (.D(rundown_cnt[4]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[4]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_4__449.GSR = "ENABLED";
    ORCALUT4 i12_3_lut_4_lut_4_lut (.A(cnt_5_enable_81), .B(n6675), .C(n6714), 
            .D(state[4]), .Z(cnt_5_enable_66)) /* synthesis lut_function=(!(A (B)+!A (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(123[6:14])
    defparam i12_3_lut_4_lut_4_lut.init = 16'h2777;
    ORCALUT4 i3_4_lut (.A(uart_frame_cnt[0]), .B(uart_frame_cnt[3]), .C(uart_frame_cnt[1]), 
            .D(uart_frame_cnt[2]), .Z(n3253)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i3_4_lut.init = 16'hfdff;
    ORCALUT4 i1320_4_lut (.A(cnt[4]), .B(cnt[5]), .C(cnt[3]), .D(n5921), 
            .Z(cnt_5__N_310)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1320_4_lut.init = 16'hccc8;
    FD1P3AX result_content_5__448 (.D(rundown_cnt[5]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[5]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_5__448.GSR = "ENABLED";
    FD1P3JX runup_set_i9 (.D(n7_adj_694), .SP(cnt_5_enable_46), .PD(n4458), 
            .CK(cnt[5]), .Q(runup_set[9])) /* synthesis lse_init_val=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam runup_set_i9.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_adj_45 (.A(cnt[2]), .B(cnt[1]), .C(cnt[0]), .Z(n5921)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_45.init = 16'h8080;
    FD1S3AX runup_cnt_1081__i0 (.D(n3785), .CK(cnt[5]), .Q(runup_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i0.GSR = "ENABLED";
    FD1S3AX comp_slow_sync_386 (.D(comp_ext_N_559), .CK(cnt[5]), .Q(comp_slow_sync));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam comp_slow_sync_386.GSR = "ENABLED";
    FD1S3AX comp_slow_387 (.D(comp_slow_sync), .CK(cnt[5]), .Q(comp_slow));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam comp_slow_387.GSR = "ENABLED";
    FD1S3AX cstart_slow_sync_388 (.D(con_start_c), .CK(cnt[5]), .Q(cstart_slow_sync));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam cstart_slow_sync_388.GSR = "ENABLED";
    FD1S3AX cstart_slow_389 (.D(cstart_slow_sync), .CK(cnt[5]), .Q(cstart_slow));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam cstart_slow_389.GSR = "ENABLED";
    FD1P3IX uart_rx_rst_393 (.D(n6864), .SP(cnt_5_enable_22), .CD(n6728), 
            .CK(cnt[5]), .Q(uart_rx_rst));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam uart_rx_rst_393.GSR = "ENABLED";
    FD1S3AX sw_up_r_0__398 (.D(sw_up_N_519), .CK(cnt[5]), .Q(sw_up_c));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam sw_up_r_0__398.GSR = "ENABLED";
    ORCALUT4 i5063_4_lut (.A(uart_frame_state[0]), .B(uart_frame_state[1]), 
            .C(n4747), .D(uart_frame_cnt[3]), .Z(uart_divider_3_enable_11)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i5063_4_lut.init = 16'h0001;
    FD1S3AX sw_dn_r_0__399 (.D(sw_dn_N_531), .CK(cnt[5]), .Q(sw_dn_c));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam sw_dn_r_0__399.GSR = "ENABLED";
    FD1S3AX runup_state_r_0__403 (.D(n3490), .CK(cnt[5]), .Q(runup_state_r[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam runup_state_r_0__403.GSR = "ENABLED";
    ORCALUT4 i3319_2_lut (.A(uart_frame_cnt[2]), .B(uart_frame_cnt[1]), 
            .Z(n4747)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3319_2_lut.init = 16'h8888;
    FD1S3AX rundown_cnt_1083__i0 (.D(n3744), .CK(mclk_c), .Q(rundown_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i0.GSR = "ENABLED";
    ORCALUT4 mux_950_i1_4_lut (.A(n6412), .B(frame_content[24]), .C(uart_frame_cnt[1]), 
            .D(uart_frame_cnt[0]), .Z(uart_tx_register_7__N_495[0])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(345[3] 346[43])
    defparam mux_950_i1_4_lut.init = 16'hfaca;
    ORCALUT4 i4985_3_lut (.A(frame_content[37]), .B(frame_content[5]), .C(uart_frame_cnt[2]), 
            .Z(n6433)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4985_3_lut.init = 16'hcaca;
    PFUMX i4970 (.BLUT(n6416), .ALUT(n6417), .C0(uart_frame_cnt[0]), .Z(n6418));
    FD1S3AX uart_frame_cnt_1084__i0 (.D(n3495), .CK(uart_divider[3]), .Q(uart_frame_cnt[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(362[23:41])
    defparam uart_frame_cnt_1084__i0.GSR = "ENABLED";
    FD1S3IX uart_divider_1076_1248__i4 (.D(n22), .CK(cnt[5]), .CD(n6689), 
            .Q(uart_divider[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(56[18:34])
    defparam uart_divider_1076_1248__i4.GSR = "ENABLED";
    FD1S3IX uart_divider_1076_1248__i3 (.D(n23_adj_696), .CK(cnt[5]), .CD(n6689), 
            .Q(n2)) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(56[18:34])
    defparam uart_divider_1076_1248__i3.GSR = "ENABLED";
    FD1S3IX uart_divider_1076_1248__i2 (.D(n24), .CK(cnt[5]), .CD(n6689), 
            .Q(n3)) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(56[18:34])
    defparam uart_divider_1076_1248__i2.GSR = "ENABLED";
    FD1S3IX cnt_1085__i0 (.D(n35), .CK(mclk_c), .CD(cnt_5__N_310), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(50[10:17])
    defparam cnt_1085__i0.GSR = "ENABLED";
    ORCALUT4 i977_2_lut (.A(uart_rx_register[0]), .B(uart_rx_register[2]), 
            .Z(n7)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(69[5] 81[12])
    defparam i977_2_lut.init = 16'h6666;
    FD1S3AX comp_fast_sync_455 (.D(comp_ext_N_559), .CK(mclk_c), .Q(comp_fast_sync));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(281[8] 302[5])
    defparam comp_fast_sync_455.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i0 (.D(uart_tx_register_7__N_495[0]), .SP(uart_divider_3_enable_11), 
            .CK(uart_divider[3]), .Q(uart_tx_register[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam uart_tx_register_i0_i0.GSR = "ENABLED";
    FD1S3AX comp_fast_456 (.D(comp_fast_sync), .CK(mclk_c), .Q(comp_fast));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(281[8] 302[5])
    defparam comp_fast_456.GSR = "ENABLED";
    FD1P3AX result_content_6__447 (.D(rundown_cnt[6]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[6]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_6__447.GSR = "ENABLED";
    FD1P3AX result_content_7__446 (.D(rundown_cnt[7]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[7]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_7__446.GSR = "ENABLED";
    FD1S3AX uart_frame_state_i0 (.D(n6643), .CK(uart_divider[3]), .Q(uart_frame_state[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam uart_frame_state_i0.GSR = "ENABLED";
    FD1S3AX uart_tx_start_464 (.D(n3754), .CK(uart_divider[3]), .Q(uart_tx_start));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam uart_tx_start_464.GSR = "ENABLED";
    FD1P3AX result_content_8__445 (.D(rundown_cnt[8]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[8]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_8__445.GSR = "ENABLED";
    FD1P3AX result_content_9__444 (.D(rundown_cnt[9]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[9]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_9__444.GSR = "ENABLED";
    FD1P3AX result_content_10__443 (.D(rundown_cnt[10]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[10]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_10__443.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(uart_rx_register[6]), .B(n6720), .C(uart_rx_register[3]), 
            .D(n6292), .Z(n4458)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i2_3_lut_4_lut_adj_46 (.A(n6670), .B(n6671), .C(cnt_5_enable_63), 
            .D(n2081), .Z(n6300)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam i2_3_lut_4_lut_adj_46.init = 16'hfffe;
    FD1P3AY runup_set_i6 (.D(n98), .SP(cnt_5_enable_46), .CK(cnt[5]), 
            .Q(runup_set[6])) /* synthesis lse_init_val=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam runup_set_i6.GSR = "ENABLED";
    FD1P3AY runup_set_i7 (.D(n97), .SP(cnt_5_enable_46), .CK(cnt[5]), 
            .Q(runup_set[7])) /* synthesis lse_init_val=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam runup_set_i7.GSR = "ENABLED";
    FD1P3AX result_content_11__442 (.D(rundown_cnt[11]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[11]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_11__442.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_4_lut_adj_47 (.A(uart_rx_register[6]), .B(n6720), 
            .C(uart_rx_register[4]), .D(n49), .Z(cnt_5_enable_75)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam i2_3_lut_4_lut_adj_47.init = 16'h0200;
    ORCALUT4 i4984_3_lut (.A(frame_content[45]), .B(frame_content[13]), 
            .C(uart_frame_cnt[2]), .Z(n6432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4984_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_rep_89_3_lut (.A(uart_rx_register[6]), .B(n6720), 
            .C(n6292), .Z(cnt_5_enable_46)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam i1_2_lut_rep_89_3_lut.init = 16'h2020;
    FD1P3AX result_content_12__441 (.D(rundown_cnt[12]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[12]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_12__441.GSR = "ENABLED";
    ORCALUT4 sw_vref_n_I_0_1_lut (.A(sw_vref_n_c), .Z(sw_vref_c)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(311[18:28])
    defparam sw_vref_n_I_0_1_lut.init = 16'h5555;
    FD1P3AX result_content_13__440 (.D(rundown_cnt[13]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[13]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_13__440.GSR = "ENABLED";
    FD1P3AX result_content_14__439 (.D(rundown_cnt[14]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[14]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_14__439.GSR = "ENABLED";
    ORCALUT4 sw_in_r_0__I_0_1_lut (.A(sw_in_r[0]), .Z(sw_in_c)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(313[16:24])
    defparam sw_in_r_0__I_0_1_lut.init = 16'h5555;
    ORCALUT4 i4962_3_lut (.A(frame_content[40]), .B(frame_content[8]), .C(uart_frame_cnt[2]), 
            .Z(n6410)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4962_3_lut.init = 16'hcaca;
    ORCALUT4 i4960_3_lut (.A(frame_content[35]), .B(frame_content[3]), .C(uart_frame_cnt[2]), 
            .Z(n6408)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4960_3_lut.init = 16'hcaca;
    FD1P3JX runup_set_i8 (.D(n7), .SP(cnt_5_enable_46), .PD(n4458), .CK(cnt[5]), 
            .Q(runup_set[8])) /* synthesis lse_init_val=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam runup_set_i8.GSR = "ENABLED";
    FD1P3AX result_content_15__438 (.D(rundown_cnt[15]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[15]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_15__438.GSR = "ENABLED";
    ORCALUT4 i4959_3_lut (.A(frame_content[43]), .B(frame_content[11]), 
            .C(uart_frame_cnt[2]), .Z(n6407)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4959_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_adj_48 (.A(cnt_stat[4]), .B(cnt_stat[1]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_48.init = 16'heeee;
    FD1P3IX runup_set_i5 (.D(uart_rx_register[2]), .SP(cnt_5_enable_46), 
            .CD(n4458), .CK(cnt[5]), .Q(runup_set[5])) /* synthesis lse_init_val=0 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam runup_set_i5.GSR = "ENABLED";
    FD1P3AX result_content_19__434 (.D(runup_set[3]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[19]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_19__434.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_adj_49 (.A(state[0]), .B(runup_state_r[0]), .Z(n15_adj_714)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(241[2] 273[5])
    defparam i1_2_lut_adj_49.init = 16'h8888;
    ORCALUT4 i2269_4_lut (.A(n6689), .B(cnt_5_enable_65), .C(n6697), .D(sw_in_r[0]), 
            .Z(n3705)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam i2269_4_lut.init = 16'ha3a0;
    ORCALUT4 i2_2_lut (.A(n74), .B(state[1]), .Z(n6_adj_715)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i2_2_lut.init = 16'h2222;
    FD1P3AX result_content_20__433 (.D(runup_set[4]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[20]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_20__433.GSR = "ENABLED";
    FD1S3IX uart_divider_1076_1248__i1 (.D(n25), .CK(cnt[5]), .CD(n6689), 
            .Q(uart_divider[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(56[18:34])
    defparam uart_divider_1076_1248__i1.GSR = "ENABLED";
    FD1P3AX result_content_21__432 (.D(runup_set[5]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[21]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_21__432.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_adj_50 (.A(state[0]), .B(runup_state_r[0]), .Z(n15)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(241[2] 273[5])
    defparam i1_2_lut_adj_50.init = 16'h2222;
    CCU2 rundown_cnt_1083_add_4_16 (.A0(rundown_cnt[14]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(rundown_cnt[15]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n5889), .S0(n71_adj_718), 
         .S1(n70_adj_717));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083_add_4_16.INIT0 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_16.INIT1 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_16.INJECT1_0 = "NO";
    defparam rundown_cnt_1083_add_4_16.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_51 (.A(cnt_stat[6]), .B(n3446), .C(n12), .D(runup_state_r[0]), 
            .Z(sw_up_N_525)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_51.init = 16'hfeec;
    ORCALUT4 i1518_4_lut (.A(cnt_stat[4]), .B(cnt_stat[5]), .C(n8), .D(runup_state_r[0]), 
            .Z(n12)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C (D)))) */ ;
    defparam i1518_4_lut.init = 16'hfeec;
    ORCALUT4 i1_3_lut (.A(cnt_stat[3]), .B(cnt_stat[1]), .C(cnt_stat[2]), 
            .Z(n8)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha8a8;
    ORCALUT4 i5078_2_lut (.A(state[4]), .B(state[1]), .Z(n6405)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(241[2] 273[5])
    defparam i5078_2_lut.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_52 (.A(uart_rx_register[6]), .B(n6720), 
            .C(uart_rx_register[0]), .D(n6292), .Z(n6275)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam i1_2_lut_3_lut_4_lut_adj_52.init = 16'h2000;
    ORCALUT4 i4932_4_lut (.A(cnt_stat[10]), .B(cnt_stat[13]), .C(cnt_stat[12]), 
            .D(cnt_stat[9]), .Z(n6379)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4932_4_lut.init = 16'hfffe;
    FD1P3AX result_content_22__431 (.D(runup_set[6]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[22]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_22__431.GSR = "ENABLED";
    ORCALUT4 mux_950_i7_4_lut (.A(n6431), .B(frame_content[22]), .C(uart_frame_cnt[1]), 
            .D(uart_frame_cnt[0]), .Z(uart_tx_register_7__N_495[6])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(345[3] 346[43])
    defparam mux_950_i7_4_lut.init = 16'hca0a;
    OB vref_su_pad (.I(VCC_net), .O(vref_su));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[60:67])
    ORCALUT4 i4949_3_lut (.A(n6395), .B(cnt_stat[8]), .C(cnt_stat[11]), 
            .Z(n6397)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i4949_3_lut.init = 16'hfefe;
    FD1P3AX result_content_23__430 (.D(runup_set[7]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[23]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_23__430.GSR = "ENABLED";
    CCU2 rundown_cnt_1083_add_4_14 (.A0(rundown_cnt[12]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(rundown_cnt[13]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n5888), .COUT1(n5889), .S0(n73_adj_720), 
         .S1(n72_adj_719));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083_add_4_14.INIT0 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_14.INIT1 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_14.INJECT1_0 = "NO";
    defparam rundown_cnt_1083_add_4_14.INJECT1_1 = "NO";
    ORCALUT4 mux_950_i6_4_lut (.A(n6434), .B(frame_content[21]), .C(uart_frame_cnt[1]), 
            .D(uart_frame_cnt[0]), .Z(uart_tx_register_7__N_495[5])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(345[3] 346[43])
    defparam mux_950_i6_4_lut.init = 16'hca0a;
    FD1P3AX result_content_24__429 (.D(runup_set[8]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[24]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_24__429.GSR = "ENABLED";
    FD1P3IX runup_set_i4 (.D(uart_rx_register[1]), .SP(cnt_5_enable_46), 
            .CD(n4458), .CK(cnt[5]), .Q(runup_set[4])) /* synthesis lse_init_val=0 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam runup_set_i4.GSR = "ENABLED";
    ORCALUT4 mux_950_i5_4_lut (.A(n6437), .B(frame_content[20]), .C(uart_frame_cnt[1]), 
            .D(uart_frame_cnt[0]), .Z(uart_tx_register_7__N_495[4])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(345[3] 346[43])
    defparam mux_950_i5_4_lut.init = 16'hca0a;
    ORCALUT4 mux_950_i4_4_lut (.A(n6409), .B(frame_content[19]), .C(uart_frame_cnt[1]), 
            .D(uart_frame_cnt[0]), .Z(uart_tx_register_7__N_495[3])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(345[3] 346[43])
    defparam mux_950_i4_4_lut.init = 16'hca0a;
    FD1P3AX result_content_25__428 (.D(runup_set[9]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[25]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_25__428.GSR = "ENABLED";
    OB deb_2_pad (.I(deb_2_c), .O(deb_2));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(12[20:25])
    FD1P3AX result_content_26__427 (.D(runup_set[10]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[26]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_26__427.GSR = "ENABLED";
    ORCALUT4 mux_950_i3_4_lut (.A(n6415), .B(frame_content[26]), .C(uart_frame_cnt[1]), 
            .D(uart_frame_cnt[0]), .Z(uart_tx_register_7__N_495[2])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(345[3] 346[43])
    defparam mux_950_i3_4_lut.init = 16'hfaca;
    ORCALUT4 i3359_3_lut_4_lut (.A(n6714), .B(state[4]), .C(comp_fast), 
            .D(runup_state_r[0]), .Z(n4787)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(241[6:14])
    defparam i3359_3_lut_4_lut.init = 16'heffe;
    FD1P3JX runup_set_i3 (.D(n3015), .SP(cnt_5_enable_46), .PD(n6275), 
            .CK(cnt[5]), .Q(runup_set[3])) /* synthesis lse_init_val=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam runup_set_i3.GSR = "ENABLED";
    ORCALUT4 i1314_2_lut_4_lut (.A(cnt_stat[3]), .B(n6706), .C(cnt_stat[2]), 
            .D(cnt_stat[4]), .Z(n10)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i1314_2_lut_4_lut.init = 16'h8000;
    CCU2 rundown_cnt_1083_add_4_12 (.A0(rundown_cnt[10]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(rundown_cnt[11]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n5887), .COUT1(n5888), .S0(n75_adj_722), 
         .S1(n74_adj_721));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083_add_4_12.INIT0 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_12.INIT1 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_12.INJECT1_0 = "NO";
    defparam rundown_cnt_1083_add_4_12.INJECT1_1 = "NO";
    ORCALUT4 mux_950_i2_4_lut (.A(n6418), .B(frame_content[25]), .C(uart_frame_cnt[1]), 
            .D(uart_frame_cnt[0]), .Z(uart_tx_register_7__N_495[1])) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(345[3] 346[43])
    defparam mux_950_i2_4_lut.init = 16'hfaca;
    FD1P3AX result_content_31__422 (.D(rundown_sign), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[31]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_31__422.GSR = "ENABLED";
    CCU2 runup_cnt_1081_add_4_2 (.A0(runup_cnt[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(runup_cnt[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n5876), .S0(n80_adj_742), 
         .S1(n79_adj_741));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081_add_4_2.INIT0 = 16'h0555;
    defparam runup_cnt_1081_add_4_2.INIT1 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_2.INJECT1_0 = "NO";
    defparam runup_cnt_1081_add_4_2.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_4_lut (.A(cnt_stat[3]), .B(n6706), .C(cnt_stat[2]), 
            .D(cnt_stat[4]), .Z(n46)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i1_2_lut_4_lut.init = 16'hff80;
    FD1P3AX result_content_32__421 (.D(runup_cnt[0]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[32]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_32__421.GSR = "ENABLED";
    FD1P3AX result_content_33__420 (.D(runup_cnt[1]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[33]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_33__420.GSR = "ENABLED";
    CCU2 rundown_cnt_1083_add_4_10 (.A0(rundown_cnt[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(rundown_cnt[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5886), .COUT1(n5887), .S0(n77_adj_724), 
         .S1(n76_adj_723));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083_add_4_10.INIT0 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_10.INIT1 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_10.INJECT1_0 = "NO";
    defparam rundown_cnt_1083_add_4_10.INJECT1_1 = "NO";
    FD1P3AX result_content_34__419 (.D(runup_cnt[2]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[34]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_34__419.GSR = "ENABLED";
    FD1P3AX result_content_35__418 (.D(runup_cnt[3]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[35]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_35__418.GSR = "ENABLED";
    FD1P3AX par_out_r_i0_i1 (.D(uart_rx_register[0]), .SP(cnt_5_enable_52), 
            .CK(cnt[5]), .Q(par_out_c_0));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i1.GSR = "ENABLED";
    FD1P3AX result_content_36__417 (.D(runup_cnt[4]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[36]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_36__417.GSR = "ENABLED";
    FD1P3AX result_content_37__416 (.D(runup_cnt[5]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[37]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_37__416.GSR = "ENABLED";
    OB so_dat_pad (.I(so_dat_c), .O(so_dat));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[52:58])
    OB sw_vref_n_pad (.I(sw_vref_n_c), .O(sw_vref_n));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[42:51])
    OB sw_vref_pad (.I(sw_vref_c), .O(sw_vref));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[34:41])
    ORCALUT4 i2111_4_lut (.A(uart_frame_cnt[2]), .B(uart_divider_3_enable_52), 
            .C(n2131), .D(n6721), .Z(n3547)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (C+!(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(362[23:41])
    defparam i2111_4_lut.init = 16'h252a;
    FD1P3AX result_content_38__415 (.D(runup_cnt[6]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[38]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_38__415.GSR = "ENABLED";
    FD1P3AX result_content_39__414 (.D(runup_cnt[7]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[39]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_39__414.GSR = "ENABLED";
    FD1P3AX result_content_40__413 (.D(runup_cnt[8]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[40]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_40__413.GSR = "ENABLED";
    FD1P3AX result_content_41__412 (.D(runup_cnt[9]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[41]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_41__412.GSR = "ENABLED";
    FD1P3AX result_content_42__411 (.D(runup_cnt[10]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[42]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_42__411.GSR = "ENABLED";
    OB sw_rst_pad (.I(n6722), .O(sw_rst));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[27:33])
    FD1P3AX result_content_43__410 (.D(runup_cnt[11]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[43]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_43__410.GSR = "ENABLED";
    CCU2 rundown_cnt_1083_add_4_8 (.A0(rundown_cnt[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(rundown_cnt[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5885), .COUT1(n5886), .S0(n79_adj_726), 
         .S1(n78_adj_725));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083_add_4_8.INIT0 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_8.INIT1 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_8.INJECT1_0 = "NO";
    defparam rundown_cnt_1083_add_4_8.INJECT1_1 = "NO";
    OB sw_dn_pad (.I(sw_dn_c), .O(sw_dn));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[21:26])
    FD1P3AX result_content_44__409 (.D(runup_cnt[12]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[44]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_44__409.GSR = "ENABLED";
    FD1P3AX result_content_45__408 (.D(runup_cnt[13]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[45]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_45__408.GSR = "ENABLED";
    OB sw_up_pad (.I(sw_up_c), .O(sw_up));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[15:20])
    FD1P3AX result_content_46__407 (.D(runup_cnt[14]), .SP(cnt_5_enable_63), 
            .CK(cnt[5]), .Q(result_content[46]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam result_content_46__407.GSR = "ENABLED";
    CCU2 rundown_cnt_1083_add_4_6 (.A0(rundown_cnt[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(rundown_cnt[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5884), .COUT1(n5885), .S0(n81), .S1(n80_adj_727));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083_add_4_6.INIT0 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_6.INIT1 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_6.INJECT1_0 = "NO";
    defparam rundown_cnt_1083_add_4_6.INJECT1_1 = "NO";
    OB sw_in_pad (.I(sw_in_c), .O(sw_in));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(11[8:13])
    ORCALUT4 i2113_4_lut (.A(uart_frame_cnt[1]), .B(uart_divider_3_enable_52), 
            .C(n2131), .D(uart_frame_cnt[0]), .Z(n3549)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (C+!(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(362[23:41])
    defparam i2113_4_lut.init = 16'h252a;
    CCU2 rundown_cnt_1083_add_4_4 (.A0(rundown_cnt[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(rundown_cnt[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5883), .COUT1(n5884), .S0(n83), .S1(n82));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083_add_4_4.INIT0 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_4.INIT1 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_4.INJECT1_0 = "NO";
    defparam rundown_cnt_1083_add_4_4.INJECT1_1 = "NO";
    FD1P3AX rundown_sign_406 (.D(runup_state_r[0]), .SP(cnt_5_enable_64), 
            .CK(cnt[5]), .Q(rundown_sign));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam rundown_sign_406.GSR = "ENABLED";
    ORCALUT4 i4_4_lut_rep_81 (.A(cnt_stat[0]), .B(n6680), .C(n6705), .D(n6), 
            .Z(n6675)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_rep_81.init = 16'hfffe;
    PFUMX i4989 (.BLUT(n6435), .ALUT(n6436), .C0(uart_frame_cnt[0]), .Z(n6437));
    FD1P3JX uart_frame_start_400 (.D(n6863), .SP(cnt_5_enable_65), .PD(n6689), 
            .CK(cnt[5]), .Q(uart_frame_start));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam uart_frame_start_400.GSR = "ENABLED";
    ORCALUT4 i2_3_lut_rep_110 (.A(cnt_stat[13]), .B(cnt_stat[12]), .C(cnt_stat[14]), 
            .Z(n6704)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(18[11:19])
    defparam i2_3_lut_rep_110.init = 16'hfefe;
    ORCALUT4 i1_2_lut_4_lut_adj_53 (.A(cnt_stat[13]), .B(cnt_stat[12]), 
            .C(cnt_stat[14]), .D(cnt_stat[11]), .Z(n3409)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(18[11:19])
    defparam i1_2_lut_4_lut_adj_53.init = 16'hfffe;
    ORCALUT4 i5016_3_lut_4_lut (.A(sw_dn_c), .B(n6714), .C(state[4]), 
            .D(n15), .Z(n26_adj_698)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(241[2] 273[5])
    defparam i5016_3_lut_4_lut.init = 16'h8f80;
    ORCALUT4 i1_2_lut_rep_111 (.A(cnt_stat[2]), .B(cnt_stat[3]), .Z(n6705)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i1_2_lut_rep_111.init = 16'heeee;
    ORCALUT4 i4902_2_lut (.A(state[0]), .B(state[1]), .Z(n6349)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4902_2_lut.init = 16'heeee;
    ORCALUT4 i2_4_lut_4_lut_4_lut_4_lut_2_lut (.A(state[4]), .B(state[1]), 
            .Z(n5936)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(123[6:14])
    defparam i2_4_lut_4_lut_4_lut_4_lut_2_lut.init = 16'hbbbb;
    ORCALUT4 i2354_4_lut (.A(rundown_cnt[15]), .B(n70_adj_717), .C(n4787), 
            .D(n9), .Z(n3790)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2354_4_lut.init = 16'hac0c;
    FD1P3AX sw_vref_r_0__397 (.D(n5936), .SP(cnt_5_enable_66), .CK(cnt[5]), 
            .Q(sw_vref_n_c));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam sw_vref_r_0__397.GSR = "ENABLED";
    ORCALUT4 i745_2_lut_3_lut (.A(cnt_5_enable_81), .B(n74), .C(cstart_slow), 
            .Z(cnt_5_enable_68)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(123[6:14])
    defparam i745_2_lut_3_lut.init = 16'h8f8f;
    FD1S3AX sw_rst_r_0__395 (.D(n6_adj_716), .CK(cnt[5]), .Q(sw_rst_r[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam sw_rst_r_0__395.GSR = "ENABLED";
    ORCALUT4 i1271_2_lut_rep_90_3_lut_4_lut (.A(cnt_stat[2]), .B(cnt_stat[3]), 
            .C(cnt_stat[4]), .D(n6706), .Z(n6684)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i1271_2_lut_rep_90_3_lut_4_lut.init = 16'hf0e0;
    CCU2 rundown_cnt_1083_add_4_2 (.A0(rundown_cnt[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(rundown_cnt[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n5883), .S0(n85), .S1(n84));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083_add_4_2.INIT0 = 16'h0555;
    defparam rundown_cnt_1083_add_4_2.INIT1 = 16'hfaaa;
    defparam rundown_cnt_1083_add_4_2.INJECT1_0 = "NO";
    defparam rundown_cnt_1083_add_4_2.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_rep_112 (.A(cnt_stat[1]), .B(cnt_stat[0]), .Z(n6706)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i1_2_lut_rep_112.init = 16'h8888;
    ORCALUT4 i2345_4_lut (.A(rundown_cnt[14]), .B(n71_adj_718), .C(n4787), 
            .D(n9), .Z(n3781)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2345_4_lut.init = 16'hac0c;
    FD1S3AX sw_in_r_0__396 (.D(n3705), .CK(cnt[5]), .Q(sw_in_r[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam sw_in_r_0__396.GSR = "ENABLED";
    ORCALUT4 i2296_4_lut (.A(rundown_cnt[13]), .B(n72_adj_719), .C(n4787), 
            .D(n9), .Z(n3732)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2296_4_lut.init = 16'hac0c;
    ORCALUT4 i1_2_lut_rep_91_3_lut_4_lut (.A(cnt_stat[1]), .B(cnt_stat[0]), 
            .C(cnt_stat[3]), .D(cnt_stat[2]), .Z(n6685)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i1_2_lut_rep_91_3_lut_4_lut.init = 16'hfff8;
    ORCALUT4 i2342_4_lut (.A(rundown_cnt[12]), .B(n73_adj_720), .C(n4787), 
            .D(n9), .Z(n3778)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2342_4_lut.init = 16'hac0c;
    ORCALUT4 i2_3_lut_4_lut_adj_54 (.A(cnt_5_enable_81), .B(n74), .C(n6691), 
            .D(cstart_slow), .Z(n5)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(123[6:14])
    defparam i2_3_lut_4_lut_adj_54.init = 16'hf8ff;
    ORCALUT4 m1_lut (.Z(n6864)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    FD1P3AX frame_content__i1 (.D(result_content[0]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i1.GSR = "ENABLED";
    ORCALUT4 i4988_3_lut (.A(frame_content[36]), .B(frame_content[4]), .C(uart_frame_cnt[2]), 
            .Z(n6436)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4988_3_lut.init = 16'hcaca;
    CCU2 runup_cnt_1081_add_4_16 (.A0(runup_cnt[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n5882), .S0(n66_adj_728));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081_add_4_16.INIT0 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_16.INIT1 = 16'h0000;
    defparam runup_cnt_1081_add_4_16.INJECT1_0 = "NO";
    defparam runup_cnt_1081_add_4_16.INJECT1_1 = "NO";
    CCU2 runup_cnt_1081_add_4_14 (.A0(runup_cnt[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(runup_cnt[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5881), .COUT1(n5882), .S0(n68_adj_730), 
         .S1(n67_adj_729));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081_add_4_14.INIT0 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_14.INIT1 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_14.INJECT1_0 = "NO";
    defparam runup_cnt_1081_add_4_14.INJECT1_1 = "NO";
    ORCALUT4 equal_570_i6_2_lut_rep_115 (.A(state[0]), .B(state[1]), .Z(n6709)) /* synthesis lut_function=((B)+!A) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(163[6:14])
    defparam equal_570_i6_2_lut_rep_115.init = 16'hdddd;
    ORCALUT4 i5054_2_lut_rep_95_3_lut (.A(state[0]), .B(state[1]), .C(state[4]), 
            .Z(n6689)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(163[6:14])
    defparam i5054_2_lut_rep_95_3_lut.init = 16'h0202;
    CCU2 runup_cnt_1081_add_4_12 (.A0(runup_cnt[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(runup_cnt[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5880), .COUT1(n5881), .S0(n70_adj_732), 
         .S1(n69_adj_731));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081_add_4_12.INIT0 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_12.INIT1 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_12.INJECT1_0 = "NO";
    defparam runup_cnt_1081_add_4_12.INJECT1_1 = "NO";
    CCU2 cnt_runup_1079_add_4_14 (.A0(cnt_runup[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5874), .COUT1(n5875), .S0(n68_adj_711), 
         .S1(n67_adj_712));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079_add_4_14.INIT0 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_14.INIT1 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_14.INJECT1_0 = "NO";
    defparam cnt_runup_1079_add_4_14.INJECT1_1 = "NO";
    ORCALUT4 i2340_4_lut (.A(rundown_cnt[11]), .B(n74_adj_721), .C(n4787), 
            .D(n9), .Z(n3776)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2340_4_lut.init = 16'hac0c;
    FD1P3IX uart_frame_r__i1 (.D(n6864), .SP(uart_frame_start), .CD(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(uart_frame_r[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam uart_frame_r__i1.GSR = "ENABLED";
    ORCALUT4 i5043_4_lut (.A(cnt_5_enable_84), .B(n6464), .C(n6_adj_715), 
            .D(n6349), .Z(n3867)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i5043_4_lut.init = 16'h8880;
    ORCALUT4 i2336_4_lut (.A(rundown_cnt[10]), .B(n75_adj_722), .C(n4787), 
            .D(n9), .Z(n3772)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2336_4_lut.init = 16'hac0c;
    FD1S3IX uart_rx_state__i1 (.D(n6727), .CK(cnt[5]), .CD(n6728), .Q(uart_rx_state[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam uart_rx_state__i1.GSR = "ENABLED";
    CCU2 runup_cnt_1081_add_4_10 (.A0(runup_cnt[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(runup_cnt[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5879), .COUT1(n5880), .S0(n72_adj_734), 
         .S1(n71_adj_733));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081_add_4_10.INIT0 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_10.INIT1 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_10.INJECT1_0 = "NO";
    defparam runup_cnt_1081_add_4_10.INJECT1_1 = "NO";
    ORCALUT4 i2332_4_lut (.A(rundown_cnt[9]), .B(n76_adj_723), .C(n4787), 
            .D(n9), .Z(n3768)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2332_4_lut.init = 16'hac0c;
    PFUMX i80 (.BLUT(n6387), .ALUT(n6393), .C0(state[0]), .Z(n6395));
    ORCALUT4 i2_3_lut_adj_55 (.A(n6292), .B(n6720), .C(uart_rx_register[6]), 
            .Z(cnt_5_enable_52)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2_3_lut_adj_55.init = 16'h0202;
    ORCALUT4 i2325_4_lut (.A(rundown_cnt[8]), .B(n77_adj_724), .C(n4787), 
            .D(n9), .Z(n3761)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2325_4_lut.init = 16'hac0c;
    PFUMX i12 (.BLUT(n23), .ALUT(n26), .C0(n6405), .Z(sw_up_N_519));
    FD1P3IX cnt_stat_1077__i0 (.D(n80), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i0.GSR = "ENABLED";
    ORCALUT4 i2320_4_lut (.A(rundown_cnt[7]), .B(n78_adj_725), .C(n4787), 
            .D(n9), .Z(n3756)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2320_4_lut.init = 16'hac0c;
    CCU2 runup_cnt_1081_add_4_8 (.A0(runup_cnt[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(runup_cnt[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5878), .COUT1(n5879), .S0(n74_adj_736), 
         .S1(n73_adj_735));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081_add_4_8.INIT0 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_8.INIT1 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_8.INJECT1_0 = "NO";
    defparam runup_cnt_1081_add_4_8.INJECT1_1 = "NO";
    ORCALUT4 i2316_4_lut (.A(rundown_cnt[6]), .B(n79_adj_726), .C(n4787), 
            .D(n9), .Z(n3752)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2316_4_lut.init = 16'hac0c;
    CCU2 runup_cnt_1081_add_4_4 (.A0(runup_cnt[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(runup_cnt[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5876), .COUT1(n5877), .S0(n78_adj_740), 
         .S1(n77_adj_739));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081_add_4_4.INIT0 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_4.INIT1 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_4.INJECT1_0 = "NO";
    defparam runup_cnt_1081_add_4_4.INJECT1_1 = "NO";
    CCU2 cnt_runup_1079_add_4_8 (.A0(cnt_runup[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5871), .COUT1(n5872), .S0(n74_adj_705), 
         .S1(n73_adj_706));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079_add_4_8.INIT0 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_8.INIT1 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_8.INJECT1_0 = "NO";
    defparam cnt_runup_1079_add_4_8.INJECT1_1 = "NO";
    ORCALUT4 i5069_2_lut_rep_120 (.A(state[1]), .B(state[0]), .Z(n6714)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i5069_2_lut_rep_120.init = 16'h7777;
    ORCALUT4 i3378_2_lut_rep_97_3_lut (.A(state[1]), .B(state[0]), .C(state[4]), 
            .Z(n6691)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3378_2_lut_rep_97_3_lut.init = 16'h8080;
    FD1S3AX uart_frame_state_i1 (.D(n6632), .CK(uart_divider[3]), .Q(uart_frame_state[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam uart_frame_state_i1.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i7 (.D(uart_tx_register_7__N_495[7]), .SP(uart_divider_3_enable_11), 
            .CK(uart_divider[3]), .Q(uart_tx_register[7]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam uart_tx_register_i0_i7.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_rep_102_3_lut (.A(state[1]), .B(state[0]), .C(state[4]), 
            .Z(cnt_5_enable_84)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;
    defparam i1_2_lut_rep_102_3_lut.init = 16'h8f8f;
    ORCALUT4 i2289_4_lut (.A(rundown_cnt[5]), .B(n80_adj_727), .C(n4787), 
            .D(n9), .Z(n3725)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2289_4_lut.init = 16'hac0c;
    FD1P3AX uart_tx_register_i0_i6 (.D(uart_tx_register_7__N_495[6]), .SP(uart_divider_3_enable_11), 
            .CK(uart_divider[3]), .Q(uart_tx_register[6]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam uart_tx_register_i0_i6.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i5 (.D(uart_tx_register_7__N_495[5]), .SP(uart_divider_3_enable_11), 
            .CK(uart_divider[3]), .Q(uart_tx_register[5]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam uart_tx_register_i0_i5.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i4 (.D(uart_tx_register_7__N_495[4]), .SP(uart_divider_3_enable_11), 
            .CK(uart_divider[3]), .Q(uart_tx_register[4]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam uart_tx_register_i0_i4.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i3 (.D(uart_tx_register_7__N_495[3]), .SP(uart_divider_3_enable_11), 
            .CK(uart_divider[3]), .Q(uart_tx_register[3]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam uart_tx_register_i0_i3.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i2 (.D(uart_tx_register_7__N_495[2]), .SP(uart_divider_3_enable_11), 
            .CK(uart_divider[3]), .Q(uart_tx_register[2]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam uart_tx_register_i0_i2.GSR = "ENABLED";
    FD1P3AX uart_tx_register_i0_i1 (.D(uart_tx_register_7__N_495[1]), .SP(uart_divider_3_enable_11), 
            .CK(uart_divider[3]), .Q(uart_tx_register[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam uart_tx_register_i0_i1.GSR = "ENABLED";
    ORCALUT4 i5050_2_lut_rep_108_3_lut (.A(state[1]), .B(state[0]), .C(state[4]), 
            .Z(cnt_5_enable_64)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i5050_2_lut_rep_108_3_lut.init = 16'h0808;
    CCU2 cnt_runup_1079_add_4_6 (.A0(cnt_runup[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5870), .COUT1(n5871), .S0(n76_adj_703), 
         .S1(n75_adj_704));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079_add_4_6.INIT0 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_6.INIT1 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_6.INJECT1_0 = "NO";
    defparam cnt_runup_1079_add_4_6.INJECT1_1 = "NO";
    FD1S3IX cnt_1085__i5 (.D(n30), .CK(mclk_c), .CD(cnt_5__N_310), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(50[10:17])
    defparam cnt_1085__i5.GSR = "ENABLED";
    ORCALUT4 i749_2_lut_3_lut_4_lut (.A(state[1]), .B(state[0]), .C(cstart_slow), 
            .D(state[4]), .Z(n2081)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i749_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1S3IX cnt_1085__i4 (.D(n31), .CK(mclk_c), .CD(cnt_5__N_310), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(50[10:17])
    defparam cnt_1085__i4.GSR = "ENABLED";
    FD1S3IX cnt_1085__i3 (.D(n32), .CK(mclk_c), .CD(cnt_5__N_310), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(50[10:17])
    defparam cnt_1085__i3.GSR = "ENABLED";
    FD1S3IX cnt_1085__i2 (.D(n33), .CK(mclk_c), .CD(cnt_5__N_310), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(50[10:17])
    defparam cnt_1085__i2.GSR = "ENABLED";
    FD1S3IX cnt_1085__i1 (.D(n34), .CK(mclk_c), .CD(cnt_5__N_310), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(50[10:17])
    defparam cnt_1085__i1.GSR = "ENABLED";
    FD1S3AX uart_frame_cnt_1084__i3 (.D(n6626), .CK(uart_divider[3]), .Q(uart_frame_cnt[3]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(362[23:41])
    defparam uart_frame_cnt_1084__i3.GSR = "ENABLED";
    FD1S3AX uart_frame_cnt_1084__i2 (.D(n3547), .CK(uart_divider[3]), .Q(uart_frame_cnt[2]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(362[23:41])
    defparam uart_frame_cnt_1084__i2.GSR = "ENABLED";
    FD1S3AX uart_frame_cnt_1084__i1 (.D(n3549), .CK(uart_divider[3]), .Q(uart_frame_cnt[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(362[23:41])
    defparam uart_frame_cnt_1084__i1.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i15 (.D(n3790), .CK(mclk_c), .Q(rundown_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i15.GSR = "ENABLED";
    ORCALUT4 i2282_4_lut (.A(rundown_cnt[4]), .B(n81), .C(n4787), .D(n9), 
            .Z(n3718)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2282_4_lut.init = 16'hac0c;
    CCU2 cnt_runup_1079_add_4_4 (.A0(cnt_runup[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5869), .COUT1(n5870), .S0(n78_adj_701), 
         .S1(n77_adj_702));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079_add_4_4.INIT0 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_4.INIT1 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_4.INJECT1_0 = "NO";
    defparam cnt_runup_1079_add_4_4.INJECT1_1 = "NO";
    CCU2 runup_cnt_1081_add_4_6 (.A0(runup_cnt[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(runup_cnt[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5877), .COUT1(n5878), .S0(n76_adj_738), 
         .S1(n75_adj_737));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081_add_4_6.INIT0 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_6.INIT1 = 16'hfaaa;
    defparam runup_cnt_1081_add_4_6.INJECT1_0 = "NO";
    defparam runup_cnt_1081_add_4_6.INJECT1_1 = "NO";
    FD1S3AX rundown_cnt_1083__i14 (.D(n3781), .CK(mclk_c), .Q(rundown_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i14.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i13 (.D(n3732), .CK(mclk_c), .Q(rundown_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i13.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i12 (.D(n3778), .CK(mclk_c), .Q(rundown_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i12.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i11 (.D(n3776), .CK(mclk_c), .Q(rundown_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i11.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i10 (.D(n3772), .CK(mclk_c), .Q(rundown_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i10.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i9 (.D(n3768), .CK(mclk_c), .Q(rundown_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i9.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i8 (.D(n3761), .CK(mclk_c), .Q(rundown_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i8.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i7 (.D(n3756), .CK(mclk_c), .Q(rundown_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i7.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i6 (.D(n3752), .CK(mclk_c), .Q(rundown_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i6.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i5 (.D(n3725), .CK(mclk_c), .Q(rundown_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i5.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i4 (.D(n3718), .CK(mclk_c), .Q(rundown_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i4.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i3 (.D(n3727), .CK(mclk_c), .Q(rundown_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i3.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i2 (.D(n3668), .CK(mclk_c), .Q(rundown_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i2.GSR = "ENABLED";
    FD1S3AX rundown_cnt_1083__i1 (.D(n3828), .CK(mclk_c), .Q(rundown_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam rundown_cnt_1083__i1.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i14 (.D(n3842), .CK(cnt[5]), .Q(runup_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i14.GSR = "ENABLED";
    ORCALUT4 i1_3_lut_adj_56 (.A(uart_rx_state[1]), .B(uart_rx_ready), .C(uart_rx_register[4]), 
            .Z(n6292)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_56.init = 16'h4040;
    CCU2 cnt_runup_1079_add_4_10 (.A0(cnt_runup[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5872), .COUT1(n5873), .S0(n72_adj_707), 
         .S1(n71_adj_708));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079_add_4_10.INIT0 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_10.INIT1 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_10.INJECT1_0 = "NO";
    defparam cnt_runup_1079_add_4_10.INJECT1_1 = "NO";
    PFUMX i5123 (.BLUT(n6650), .ALUT(n6649), .C0(n6689), .Z(n6651));
    FD1S3AX runup_cnt_1081__i13 (.D(n3836), .CK(cnt[5]), .Q(runup_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i13.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i12 (.D(n3832), .CK(cnt[5]), .Q(runup_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i12.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i11 (.D(n3664), .CK(cnt[5]), .Q(runup_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i11.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i10 (.D(n3848), .CK(cnt[5]), .Q(runup_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i10.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i9 (.D(n3846), .CK(cnt[5]), .Q(runup_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i9.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i8 (.D(n3844), .CK(cnt[5]), .Q(runup_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i8.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i7 (.D(n3840), .CK(cnt[5]), .Q(runup_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i7.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i6 (.D(n3838), .CK(cnt[5]), .Q(runup_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i6.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i5 (.D(n3830), .CK(cnt[5]), .Q(runup_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i5.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i4 (.D(n3822), .CK(cnt[5]), .Q(runup_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i4.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i3 (.D(n3818), .CK(cnt[5]), .Q(runup_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i3.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i2 (.D(n3805), .CK(cnt[5]), .Q(runup_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i2.GSR = "ENABLED";
    FD1S3AX runup_cnt_1081__i1 (.D(n3801), .CK(cnt[5]), .Q(runup_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam runup_cnt_1081__i1.GSR = "ENABLED";
    FD1P3IX state__i4 (.D(n6864), .SP(cnt_5_enable_68), .CD(n6300), .CK(cnt[5]), 
            .Q(state[4]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam state__i4.GSR = "ENABLED";
    ORCALUT4 i5060_3_lut_rep_139 (.A(state[0]), .B(state[4]), .C(state[1]), 
            .Z(cnt_5_enable_81)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(123[6:14])
    defparam i5060_3_lut_rep_139.init = 16'h0101;
    FD1S3IX state__i1 (.D(n6299), .CK(cnt[5]), .CD(cnt_5_enable_63), .Q(state[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam state__i1.GSR = "ENABLED";
    ORCALUT4 i2291_4_lut (.A(rundown_cnt[3]), .B(n82), .C(n4787), .D(n9), 
            .Z(n3727)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2291_4_lut.init = 16'hac0c;
    FD1S3AX cnt_runup_1079__i14 (.D(n3774), .CK(cnt[5]), .Q(cnt_runup[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i14.GSR = "ENABLED";
    ORCALUT4 i773_2_lut_3_lut_4_lut (.A(state[1]), .B(state[0]), .C(result_content_46__N_200), 
            .D(state[4]), .Z(cnt_5_enable_63)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i773_2_lut_3_lut_4_lut.init = 16'h0080;
    FD1S3AX cnt_runup_1079__i13 (.D(n3742), .CK(cnt[5]), .Q(cnt_runup[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i13.GSR = "ENABLED";
    FD1S3AX cnt_runup_1079__i12 (.D(n3740), .CK(cnt[5]), .Q(cnt_runup[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i12.GSR = "ENABLED";
    FD1S3AX cnt_runup_1079__i11 (.D(n3738), .CK(cnt[5]), .Q(cnt_runup[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i11.GSR = "ENABLED";
    FD1S3AX cnt_runup_1079__i10 (.D(n3736), .CK(cnt[5]), .Q(cnt_runup[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i10.GSR = "ENABLED";
    FD1S3AX cnt_runup_1079__i9 (.D(n3734), .CK(cnt[5]), .Q(cnt_runup[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i9.GSR = "ENABLED";
    FD1S3AX cnt_runup_1079__i8 (.D(n3716), .CK(cnt[5]), .Q(cnt_runup[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i8.GSR = "ENABLED";
    FD1S3AX cnt_runup_1079__i7 (.D(n3700), .CK(cnt[5]), .Q(cnt_runup[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i7.GSR = "ENABLED";
    FD1S3AX cnt_runup_1079__i6 (.D(n3698), .CK(cnt[5]), .Q(cnt_runup[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i6.GSR = "ENABLED";
    FD1S3AX cnt_runup_1079__i5 (.D(n3696), .CK(cnt[5]), .Q(cnt_runup[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i5.GSR = "ENABLED";
    FD1S3AX cnt_runup_1079__i4 (.D(n3694), .CK(cnt[5]), .Q(cnt_runup[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i4.GSR = "ENABLED";
    FD1S3AX cnt_runup_1079__i3 (.D(n3692), .CK(cnt[5]), .Q(cnt_runup[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i3.GSR = "ENABLED";
    FD1S3AX cnt_runup_1079__i2 (.D(n3690), .CK(cnt[5]), .Q(cnt_runup[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i2.GSR = "ENABLED";
    FD1S3AX cnt_runup_1079__i1 (.D(n3688), .CK(cnt[5]), .Q(cnt_runup[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079__i1.GSR = "ENABLED";
    ORCALUT4 uart_frame_r_2__N_492_bdd_3_lut (.A(uart_frame_state[0]), .B(n3253), 
            .C(uart_busy), .Z(n6631)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam uart_frame_r_2__N_492_bdd_3_lut.init = 16'h0202;
    CCU2 sub_955_add_2_16 (.A0(cnt_runup[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n5909), .S1(runup_state_r_0__N_89));
    defparam sub_955_add_2_16.INIT0 = 16'h5555;
    defparam sub_955_add_2_16.INIT1 = 16'h0000;
    defparam sub_955_add_2_16.INJECT1_0 = "NO";
    defparam sub_955_add_2_16.INJECT1_1 = "NO";
    PFUMX i4983 (.BLUT(n6429), .ALUT(n6430), .C0(uart_frame_cnt[0]), .Z(n6431));
    CCU2 cnt_runup_1079_add_4_2 (.A0(cnt_runup[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n5869), .S0(n80_adj_699), 
         .S1(n79_adj_700));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079_add_4_2.INIT0 = 16'h0555;
    defparam cnt_runup_1079_add_4_2.INIT1 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_2.INJECT1_0 = "NO";
    defparam cnt_runup_1079_add_4_2.INJECT1_1 = "NO";
    PFUMX i12_adj_57 (.BLUT(n23_adj_697), .ALUT(n26_adj_698), .C0(n6405), 
          .Z(sw_dn_N_531));
    ORCALUT4 i2232_4_lut (.A(rundown_cnt[2]), .B(n83), .C(n4787), .D(n9), 
            .Z(n3668)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2232_4_lut.init = 16'hac0c;
    ORCALUT4 i2392_4_lut (.A(rundown_cnt[1]), .B(n84), .C(n4787), .D(n9), 
            .Z(n3828)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(295[20:35])
    defparam i2392_4_lut.init = 16'hac0c;
    ORCALUT4 i49_4_lut (.A(sw_dn_c), .B(sw_up_N_525), .C(state[0]), .D(n6675), 
            .Z(n23_adj_697)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(241[2] 273[5])
    defparam i49_4_lut.init = 16'h3a30;
    CCU2 cnt_runup_1079_add_4_12 (.A0(cnt_runup[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5873), .COUT1(n5874), .S0(n70_adj_709), 
         .S1(n69_adj_710));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079_add_4_12.INIT0 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_12.INIT1 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_12.INJECT1_0 = "NO";
    defparam cnt_runup_1079_add_4_12.INJECT1_1 = "NO";
    PFUMX i5112 (.BLUT(n6631), .ALUT(n6630), .C0(uart_frame_state[1]), 
          .Z(n6632));
    FD1P3AX par_out_r_i0_i8 (.D(uart_rx_register[3]), .SP(cnt_5_enable_69), 
            .CK(cnt[5]), .Q(par_out_c_7));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i8.GSR = "ENABLED";
    OB par_out_pad_13 (.I(par_out_c_13), .O(par_out[13]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_12 (.I(par_out_c_12), .O(par_out[12]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_11 (.I(par_out_c_11), .O(par_out[11]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_10 (.I(par_out_c_10), .O(par_out[10]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_9 (.I(par_out_c_9), .O(par_out[9]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_8 (.I(par_out_c_8), .O(par_out[8]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_7 (.I(par_out_c_7), .O(par_out[7]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_6 (.I(par_out_c_6), .O(par_out[6]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_5 (.I(par_out_c_5), .O(par_out[5]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_4 (.I(par_out_c_4), .O(par_out[4]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_3 (.I(par_out_c_3), .O(par_out[3]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_2 (.I(par_out_c_2), .O(par_out[2]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_1 (.I(par_out_c_1), .O(par_out[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    OB par_out_pad_0 (.I(par_out_c_0), .O(par_out[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(13[15:22])
    IB mclk_pad (.I(mclk), .O(mclk_c));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(10[7:11])
    IB comp_ext_pad (.I(comp_ext), .O(comp_ext_c));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(10[12:20])
    IB con_start_pad (.I(con_start), .O(con_start_c));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(10[22:31])
    IB deb_0_c_pad (.I(si_dat), .O(deb_0_c_c));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(10[32:38])
    FD1P3AX par_out_r_i0_i9 (.D(uart_rx_register[0]), .SP(cnt_5_enable_73), 
            .CK(cnt[5]), .Q(par_out_c_8));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i9.GSR = "ENABLED";
    FD1P3AX par_out_r_i0_i10 (.D(uart_rx_register[1]), .SP(cnt_5_enable_73), 
            .CK(cnt[5]), .Q(par_out_c_9));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i10.GSR = "ENABLED";
    FD1P3AX par_out_r_i0_i11 (.D(uart_rx_register[2]), .SP(cnt_5_enable_73), 
            .CK(cnt[5]), .Q(par_out_c_10));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i11.GSR = "ENABLED";
    FD1P3AX par_out_r_i0_i12 (.D(uart_rx_register[3]), .SP(cnt_5_enable_73), 
            .CK(cnt[5]), .Q(par_out_c_11));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i12.GSR = "ENABLED";
    FD1P3AX par_out_r_i0_i13 (.D(uart_rx_register[0]), .SP(cnt_5_enable_75), 
            .CK(cnt[5]), .Q(par_out_c_12));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i13.GSR = "ENABLED";
    FD1P3AX par_out_r_i0_i14 (.D(uart_rx_register[1]), .SP(cnt_5_enable_75), 
            .CK(cnt[5]), .Q(par_out_c_13));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam par_out_r_i0_i14.GSR = "ENABLED";
    CCU2 sub_955_add_2_14 (.A0(cnt_runup[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5908), .COUT1(n5909));
    defparam sub_955_add_2_14.INIT0 = 16'h5555;
    defparam sub_955_add_2_14.INIT1 = 16'h5555;
    defparam sub_955_add_2_14.INJECT1_0 = "NO";
    defparam sub_955_add_2_14.INJECT1_1 = "NO";
    CCU2 sub_955_add_2_12 (.A0(cnt_runup[10]), .B0(runup_set[10]), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5907), .COUT1(n5908));
    defparam sub_955_add_2_12.INIT0 = 16'h5999;
    defparam sub_955_add_2_12.INIT1 = 16'h5555;
    defparam sub_955_add_2_12.INJECT1_0 = "NO";
    defparam sub_955_add_2_12.INJECT1_1 = "NO";
    FD1P3AX frame_content__i2 (.D(result_content[1]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i2.GSR = "ENABLED";
    FD1P3IX cnt_stat_1077__i1 (.D(n79), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i1.GSR = "ENABLED";
    FD1P3IX cnt_stat_1077__i2 (.D(n78), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i2.GSR = "ENABLED";
    FD1P3IX cnt_stat_1077__i3 (.D(n77), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i3.GSR = "ENABLED";
    FD1P3IX cnt_stat_1077__i4 (.D(n76), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i4.GSR = "ENABLED";
    ORCALUT4 i2406_4_lut (.A(runup_cnt[14]), .B(n66_adj_728), .C(n2097), 
            .D(n6691), .Z(n3842)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2406_4_lut.init = 16'hc0ca;
    ORCALUT4 i5042_4_lut (.A(n6401), .B(n51), .C(n6714), .D(state[4]), 
            .Z(n6464)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i5042_4_lut.init = 16'h0a22;
    CCU2 sub_955_add_2_10 (.A0(cnt_runup[8]), .B0(runup_set[8]), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[9]), .B1(runup_set[9]), .C1(GND_net), 
         .D1(GND_net), .CIN(n5906), .COUT1(n5907));
    defparam sub_955_add_2_10.INIT0 = 16'h5999;
    defparam sub_955_add_2_10.INIT1 = 16'h5999;
    defparam sub_955_add_2_10.INJECT1_0 = "NO";
    defparam sub_955_add_2_10.INJECT1_1 = "NO";
    ORCALUT4 i4981_3_lut (.A(frame_content[46]), .B(frame_content[14]), 
            .C(uart_frame_cnt[2]), .Z(n6429)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4981_3_lut.init = 16'hcaca;
    FD1P3IX cnt_stat_1077__i5 (.D(n75), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i5.GSR = "ENABLED";
    CCU2 sub_955_add_2_8 (.A0(cnt_runup[6]), .B0(runup_set[6]), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[7]), .B1(runup_set[7]), .C1(GND_net), 
         .D1(GND_net), .CIN(n5905), .COUT1(n5906));
    defparam sub_955_add_2_8.INIT0 = 16'h5999;
    defparam sub_955_add_2_8.INIT1 = 16'h5999;
    defparam sub_955_add_2_8.INJECT1_0 = "NO";
    defparam sub_955_add_2_8.INJECT1_1 = "NO";
    ORCALUT4 i2400_4_lut (.A(runup_cnt[13]), .B(n67_adj_729), .C(n2097), 
            .D(n6691), .Z(n3836)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2400_4_lut.init = 16'hc0ca;
    CCU2 sub_955_add_2_6 (.A0(cnt_runup[4]), .B0(runup_set[4]), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[5]), .B1(runup_set[5]), .C1(GND_net), 
         .D1(GND_net), .CIN(n5904), .COUT1(n5905));
    defparam sub_955_add_2_6.INIT0 = 16'h5999;
    defparam sub_955_add_2_6.INIT1 = 16'h5999;
    defparam sub_955_add_2_6.INJECT1_0 = "NO";
    defparam sub_955_add_2_6.INJECT1_1 = "NO";
    FD1P3AX frame_content__i3 (.D(result_content[2]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[2]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i3.GSR = "ENABLED";
    FD1P3AX frame_content__i4 (.D(result_content[3]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[3]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i4.GSR = "ENABLED";
    FD1P3AX frame_content__i5 (.D(result_content[4]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[4]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i5.GSR = "ENABLED";
    FD1P3AX frame_content__i6 (.D(result_content[5]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[5]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i6.GSR = "ENABLED";
    FD1P3AX frame_content__i7 (.D(result_content[6]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[6]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i7.GSR = "ENABLED";
    FD1P3AX frame_content__i8 (.D(result_content[7]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[7]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i8.GSR = "ENABLED";
    FD1P3AX frame_content__i9 (.D(result_content[8]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[8]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i9.GSR = "ENABLED";
    FD1P3AX frame_content__i10 (.D(result_content[9]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[9]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i10.GSR = "ENABLED";
    FD1P3AX frame_content__i11 (.D(result_content[10]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[10]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i11.GSR = "ENABLED";
    FD1P3AX frame_content__i12 (.D(result_content[11]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[11]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i12.GSR = "ENABLED";
    FD1P3AX frame_content__i13 (.D(result_content[12]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[12]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i13.GSR = "ENABLED";
    FD1P3AX frame_content__i14 (.D(result_content[13]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[13]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i14.GSR = "ENABLED";
    FD1P3AX frame_content__i15 (.D(result_content[14]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[14]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i15.GSR = "ENABLED";
    FD1P3AX frame_content__i16 (.D(result_content[15]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[15]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i16.GSR = "ENABLED";
    FD1P3AX frame_content__i20 (.D(result_content[19]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[19]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i20.GSR = "ENABLED";
    FD1P3AX frame_content__i21 (.D(result_content[20]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[20]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i21.GSR = "ENABLED";
    FD1P3AX frame_content__i22 (.D(result_content[21]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[21]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i22.GSR = "ENABLED";
    FD1P3AX frame_content__i23 (.D(result_content[22]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[22]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i23.GSR = "ENABLED";
    FD1P3AX frame_content__i24 (.D(result_content[23]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[23]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i24.GSR = "ENABLED";
    FD1P3AX frame_content__i25 (.D(result_content[24]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[24]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i25.GSR = "ENABLED";
    FD1P3AX frame_content__i26 (.D(result_content[25]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[25]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i26.GSR = "ENABLED";
    FD1P3AX frame_content__i27 (.D(result_content[26]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[26]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i27.GSR = "ENABLED";
    FD1P3AX frame_content__i32 (.D(result_content[31]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[31]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i32.GSR = "ENABLED";
    FD1P3AX frame_content__i33 (.D(result_content[32]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[32]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i33.GSR = "ENABLED";
    FD1P3AX frame_content__i34 (.D(result_content[33]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[33]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i34.GSR = "ENABLED";
    FD1P3AX frame_content__i35 (.D(result_content[34]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[34]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i35.GSR = "ENABLED";
    FD1P3AX frame_content__i36 (.D(result_content[35]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[35]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i36.GSR = "ENABLED";
    FD1P3AX frame_content__i37 (.D(result_content[36]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[36]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i37.GSR = "ENABLED";
    FD1P3AX frame_content__i38 (.D(result_content[37]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[37]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i38.GSR = "ENABLED";
    FD1P3AX frame_content__i39 (.D(result_content[38]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[38]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i39.GSR = "ENABLED";
    FD1P3AX frame_content__i40 (.D(result_content[39]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[39]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i40.GSR = "ENABLED";
    FD1P3AX frame_content__i41 (.D(result_content[40]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[40]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i41.GSR = "ENABLED";
    FD1P3AX frame_content__i42 (.D(result_content[41]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[41]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i42.GSR = "ENABLED";
    FD1P3AX frame_content__i43 (.D(result_content[42]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[42]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i43.GSR = "ENABLED";
    FD1P3AX frame_content__i44 (.D(result_content[43]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[43]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i44.GSR = "ENABLED";
    FD1P3AX frame_content__i45 (.D(result_content[44]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[44]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i45.GSR = "ENABLED";
    FD1P3AX frame_content__i46 (.D(result_content[45]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[45]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i46.GSR = "ENABLED";
    FD1P3AX frame_content__i47 (.D(result_content[46]), .SP(uart_divider_3_enable_52), 
            .CK(uart_divider[3]), .Q(frame_content[46]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(319[8] 370[5])
    defparam frame_content__i47.GSR = "ENABLED";
    ORCALUT4 i4987_3_lut (.A(frame_content[44]), .B(frame_content[12]), 
            .C(uart_frame_cnt[2]), .Z(n6435)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4987_3_lut.init = 16'hcaca;
    PFUMX i5109 (.BLUT(n6625), .ALUT(n6624), .C0(n2131), .Z(n6626));
    ORCALUT4 i5004_3_lut_4_lut (.A(frame_content[15]), .B(uart_frame_cnt[2]), 
            .C(uart_frame_cnt[0]), .D(n2341), .Z(n6419)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(345[3] 346[43])
    defparam i5004_3_lut_4_lut.init = 16'hf808;
    ORCALUT4 i2396_4_lut (.A(runup_cnt[12]), .B(n68_adj_730), .C(n2097), 
            .D(n6691), .Z(n3832)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2396_4_lut.init = 16'hc0ca;
    ORCALUT4 uart_frame_state_0__bdd_4_lut (.A(uart_frame_state[0]), .B(uart_frame_state[1]), 
            .C(uart_divider_3_enable_52), .D(uart_busy), .Z(n6643)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B+!(D)))) */ ;
    defparam uart_frame_state_0__bdd_4_lut.init = 16'h1b08;
    CCU2 sub_955_add_2_4 (.A0(cnt_runup[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[3]), .B1(runup_set[3]), .C1(GND_net), 
         .D1(GND_net), .CIN(n5903), .COUT1(n5904));
    defparam sub_955_add_2_4.INIT0 = 16'h5aaa;
    defparam sub_955_add_2_4.INIT1 = 16'h5999;
    defparam sub_955_add_2_4.INJECT1_0 = "NO";
    defparam sub_955_add_2_4.INJECT1_1 = "NO";
    CCU2 sub_955_add_2_2 (.A0(cnt_runup[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_runup[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n5903));
    defparam sub_955_add_2_2.INIT0 = 16'h5555;
    defparam sub_955_add_2_2.INIT1 = 16'h5aaa;
    defparam sub_955_add_2_2.INJECT1_0 = "NO";
    defparam sub_955_add_2_2.INJECT1_1 = "NO";
    CCU2 uart_divider_1076_1248_add_4_4 (.A0(n2), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(uart_divider[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5901), .S0(n23_adj_696), .S1(n22));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(56[18:34])
    defparam uart_divider_1076_1248_add_4_4.INIT0 = 16'hfaaa;
    defparam uart_divider_1076_1248_add_4_4.INIT1 = 16'hfaaa;
    defparam uart_divider_1076_1248_add_4_4.INJECT1_0 = "NO";
    defparam uart_divider_1076_1248_add_4_4.INJECT1_1 = "NO";
    ORCALUT4 i2228_4_lut (.A(runup_cnt[11]), .B(n69_adj_731), .C(n2097), 
            .D(n6691), .Z(n3664)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2228_4_lut.init = 16'hc0ca;
    ORCALUT4 i2_3_lut_rep_126 (.A(uart_rx_register[5]), .B(uart_rx_register[7]), 
            .C(uart_rx_state[0]), .Z(n6720)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_126.init = 16'hfefe;
    CCU2 uart_divider_1076_1248_add_4_2 (.A0(uart_divider[0]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(n3), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n5901), .S0(n25), .S1(n24));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(56[18:34])
    defparam uart_divider_1076_1248_add_4_2.INIT0 = 16'h0555;
    defparam uart_divider_1076_1248_add_4_2.INIT1 = 16'hfaaa;
    defparam uart_divider_1076_1248_add_4_2.INJECT1_0 = "NO";
    defparam uart_divider_1076_1248_add_4_2.INJECT1_1 = "NO";
    CCU2 cnt_stat_1077_add_4_16 (.A0(cnt_stat[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n5900), .S0(n66));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077_add_4_16.INIT0 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_16.INIT1 = 16'h0000;
    defparam cnt_stat_1077_add_4_16.INJECT1_0 = "NO";
    defparam cnt_stat_1077_add_4_16.INJECT1_1 = "NO";
    ORCALUT4 i2412_4_lut (.A(runup_cnt[10]), .B(n70_adj_732), .C(n2097), 
            .D(n6691), .Z(n3848)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2412_4_lut.init = 16'hc0ca;
    ORCALUT4 i4338_2_lut_rep_127 (.A(uart_frame_cnt[1]), .B(uart_frame_cnt[0]), 
            .Z(n6721)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(362[23:41])
    defparam i4338_2_lut_rep_127.init = 16'h8888;
    ORCALUT4 n9_bdd_2_lut_3_lut_4_lut (.A(n6730), .B(n3446), .C(n9), .D(n6684), 
            .Z(n6650)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam n9_bdd_2_lut_3_lut_4_lut.init = 16'hf0f1;
    CCU2 cnt_stat_1077_add_4_14 (.A0(cnt_stat[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_stat[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5899), .COUT1(n5900), .S0(n68), .S1(n67));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077_add_4_14.INIT0 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_14.INIT1 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_14.INJECT1_0 = "NO";
    defparam cnt_stat_1077_add_4_14.INJECT1_1 = "NO";
    CCU2 cnt_stat_1077_add_4_12 (.A0(cnt_stat[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_stat[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5898), .COUT1(n5899), .S0(n70), .S1(n69));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077_add_4_12.INIT0 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_12.INIT1 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_12.INJECT1_0 = "NO";
    defparam cnt_stat_1077_add_4_12.INJECT1_1 = "NO";
    ORCALUT4 i769_2_lut_rep_77_3_lut_4_lut (.A(n6730), .B(n3446), .C(n9), 
            .D(n6684), .Z(n6671)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i769_2_lut_rep_77_3_lut_4_lut.init = 16'h0f0e;
    ORCALUT4 i2410_4_lut (.A(runup_cnt[9]), .B(n71_adj_733), .C(n2097), 
            .D(n6691), .Z(n3846)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2410_4_lut.init = 16'hc0ca;
    CCU2 cnt_stat_1077_add_4_10 (.A0(cnt_stat[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_stat[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5897), .COUT1(n5898), .S0(n72), .S1(n71));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077_add_4_10.INIT0 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_10.INIT1 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_10.INJECT1_0 = "NO";
    defparam cnt_stat_1077_add_4_10.INJECT1_1 = "NO";
    CCU2 cnt_stat_1077_add_4_8 (.A0(cnt_stat[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_stat[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5896), .COUT1(n5897), .S0(n74_adj_693), 
         .S1(n73));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077_add_4_8.INIT0 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_8.INIT1 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_8.INJECT1_0 = "NO";
    defparam cnt_stat_1077_add_4_8.INJECT1_1 = "NO";
    ORCALUT4 mux_932_i8_3_lut (.A(frame_content[39]), .B(frame_content[7]), 
            .C(uart_frame_cnt[2]), .Z(n2341)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(345[3] 346[43])
    defparam mux_932_i8_3_lut.init = 16'hcaca;
    ORCALUT4 uart_frame_r_2__N_492_bdd_3_lut_5111_4_lut (.A(uart_frame_cnt[1]), 
            .B(uart_frame_cnt[0]), .C(uart_frame_cnt[3]), .D(uart_frame_cnt[2]), 
            .Z(n6625)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(362[23:41])
    defparam uart_frame_r_2__N_492_bdd_3_lut_5111_4_lut.init = 16'h78f0;
    ORCALUT4 sw_rst_r_0__I_0_1_lut_rep_128 (.A(sw_rst_r[0]), .Z(n6722)) /* synthesis lut_function=(!(A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(310[17:26])
    defparam sw_rst_r_0__I_0_1_lut_rep_128.init = 16'h5555;
    CCU2 cnt_stat_1077_add_4_6 (.A0(cnt_stat[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_stat[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5895), .COUT1(n5896), .S0(n76), .S1(n75));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077_add_4_6.INIT0 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_6.INIT1 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_6.INJECT1_0 = "NO";
    defparam cnt_stat_1077_add_4_6.INJECT1_1 = "NO";
    CCU2 cnt_runup_1079_add_4_16 (.A0(cnt_runup[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n5875), .S0(n66_adj_713));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam cnt_runup_1079_add_4_16.INIT0 = 16'hfaaa;
    defparam cnt_runup_1079_add_4_16.INIT1 = 16'h0000;
    defparam cnt_runup_1079_add_4_16.INJECT1_0 = "NO";
    defparam cnt_runup_1079_add_4_16.INJECT1_1 = "NO";
    ORCALUT4 i14_4_lut_4_lut (.A(sw_rst_r[0]), .B(n6697), .C(n6691), .D(cnt_5_enable_65), 
            .Z(n6_adj_716)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B (D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(310[17:26])
    defparam i14_4_lut_4_lut.init = 16'hf3e2;
    ORCALUT4 i2408_4_lut (.A(runup_cnt[8]), .B(n72_adj_734), .C(n2097), 
            .D(n6691), .Z(n3844)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2408_4_lut.init = 16'hc0ca;
    FD1P3IX debug_i1 (.D(n6864), .SP(cnt_5_enable_81), .CD(n3007), .CK(cnt[5]), 
            .Q(deb_2_c));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam debug_i1.GSR = "ENABLED";
    FD1P3IX cnt_stat_1077__i6 (.D(n74_adj_693), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i6.GSR = "ENABLED";
    ORCALUT4 n9_bdd_4_lut (.A(n9), .B(n6676), .C(runup_state_r_0__N_89), 
            .D(n6677), .Z(n6649)) /* synthesis lut_function=(A (C+!(D))+!A !(B+!(C+!(D)))) */ ;
    defparam n9_bdd_4_lut.init = 16'hb0bb;
    ORCALUT4 i2404_4_lut (.A(runup_cnt[7]), .B(n73_adj_735), .C(n2097), 
            .D(n6691), .Z(n3840)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2404_4_lut.init = 16'hc0ca;
    ORCALUT4 mux_12_Mux_6_i15_3_lut_3_lut_4_lut (.A(uart_rx_register[1]), 
            .B(uart_rx_register[2]), .C(uart_rx_register[3]), .D(uart_rx_register[0]), 
            .Z(n98)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)+!C !(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(69[5] 81[12])
    defparam mux_12_Mux_6_i15_3_lut_3_lut_4_lut.init = 16'hf0ef;
    ORCALUT4 mux_12_Mux_7_i15_3_lut_4_lut_4_lut (.A(uart_rx_register[1]), 
            .B(uart_rx_register[2]), .C(uart_rx_register[3]), .D(uart_rx_register[0]), 
            .Z(n97)) /* synthesis lut_function=(A (C)+!A (B+((D)+!C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(69[5] 81[12])
    defparam mux_12_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'hf5e5;
    ORCALUT4 i1581_2_lut_3_lut (.A(uart_rx_register[1]), .B(uart_rx_register[2]), 
            .C(uart_rx_register[3]), .Z(n3015)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(69[5] 81[12])
    defparam i1581_2_lut_3_lut.init = 16'he0e0;
    ORCALUT4 i1_3_lut_adj_58 (.A(uart_tx_state[2]), .B(uart_tx_state[1]), 
            .C(uart_tx_state[0]), .Z(uart_divider_3_enable_13)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam i1_3_lut_adj_58.init = 16'h1414;
    ORCALUT4 i1_2_lut_rep_75_3_lut_4_lut (.A(n6676), .B(n9), .C(n6672), 
            .D(runup_state_r_0__N_89), .Z(n6669)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(221[2] 239[5])
    defparam i1_2_lut_rep_75_3_lut_4_lut.init = 16'hf222;
    FD1P3IX cnt_stat_1077__i7 (.D(n73), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i7.GSR = "ENABLED";
    ORCALUT4 i49_4_lut_adj_59 (.A(sw_up_c), .B(sw_up_N_525), .C(state[0]), 
            .D(n6675), .Z(n23)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(241[2] 273[5])
    defparam i49_4_lut_adj_59.init = 16'hcac0;
    FD1P3IX cnt_stat_1077__i8 (.D(n72), .SP(cnt_5_enable_84), .CD(n3867), 
            .CK(cnt[5]), .Q(cnt_stat[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077__i8.GSR = "ENABLED";
    ORCALUT4 i2318_3_lut_4_lut_3_lut (.A(uart_frame_state[0]), .B(uart_frame_state[1]), 
            .C(uart_tx_start), .Z(n3754)) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(351[11:30])
    defparam i2318_3_lut_4_lut_3_lut.init = 16'hd1d1;
    CCU2 cnt_stat_1077_add_4_4 (.A0(cnt_stat[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_stat[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n5894), .COUT1(n5895), .S0(n78), .S1(n77));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077_add_4_4.INIT0 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_4.INIT1 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_4.INJECT1_0 = "NO";
    defparam cnt_stat_1077_add_4_4.INJECT1_1 = "NO";
    ORCALUT4 uart_frame_r_2__I_12_2_lut_rep_132 (.A(uart_frame_r[0]), .B(uart_frame_start), 
            .Z(uart_divider_3_enable_52)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(325[6:45])
    defparam uart_frame_r_2__I_12_2_lut_rep_132.init = 16'h2222;
    ORCALUT4 i2402_4_lut (.A(runup_cnt[6]), .B(n74_adj_736), .C(n2097), 
            .D(n6691), .Z(n3838)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2402_4_lut.init = 16'hc0ca;
    CCU2 cnt_stat_1077_add_4_2 (.A0(cnt_stat[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(cnt_stat[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n5894), .S0(n80), .S1(n79));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam cnt_stat_1077_add_4_2.INIT0 = 16'h0555;
    defparam cnt_stat_1077_add_4_2.INIT1 = 16'hfaaa;
    defparam cnt_stat_1077_add_4_2.INJECT1_0 = "NO";
    defparam cnt_stat_1077_add_4_2.INJECT1_1 = "NO";
    CCU2 cnt_1085_add_4_6 (.A0(cnt[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(cnt[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5892), 
         .S0(n31), .S1(n30));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(50[10:17])
    defparam cnt_1085_add_4_6.INIT0 = 16'hfaaa;
    defparam cnt_1085_add_4_6.INIT1 = 16'hfaaa;
    defparam cnt_1085_add_4_6.INJECT1_0 = "NO";
    defparam cnt_1085_add_4_6.INJECT1_1 = "NO";
    CCU2 cnt_1085_add_4_4 (.A0(cnt[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(cnt[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n5891), 
         .COUT1(n5892), .S0(n33), .S1(n32));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(50[10:17])
    defparam cnt_1085_add_4_4.INIT0 = 16'hfaaa;
    defparam cnt_1085_add_4_4.INIT1 = 16'hfaaa;
    defparam cnt_1085_add_4_4.INJECT1_0 = "NO";
    defparam cnt_1085_add_4_4.INJECT1_1 = "NO";
    ORCALUT4 i2394_4_lut (.A(runup_cnt[5]), .B(n75_adj_737), .C(n2097), 
            .D(n6691), .Z(n3830)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2394_4_lut.init = 16'hc0ca;
    PFUMX i4986 (.BLUT(n6432), .ALUT(n6433), .C0(uart_frame_cnt[0]), .Z(n6434));
    PFUMX i4973 (.BLUT(n6419), .ALUT(n6420), .C0(uart_frame_cnt[1]), .Z(uart_tx_register_7__N_495[7]));
    ORCALUT4 i2386_4_lut (.A(runup_cnt[4]), .B(n76_adj_738), .C(n2097), 
            .D(n6691), .Z(n3822)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2386_4_lut.init = 16'hc0ca;
    ORCALUT4 i2382_4_lut (.A(runup_cnt[3]), .B(n77_adj_739), .C(n2097), 
            .D(n6691), .Z(n3818)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2382_4_lut.init = 16'hc0ca;
    ORCALUT4 uart_frame_r_2__N_492_bdd_1_lut_2_lut (.A(uart_frame_r[0]), .B(uart_frame_start), 
            .Z(n6630)) /* synthesis lut_function=((B)+!A) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(325[6:45])
    defparam uart_frame_r_2__N_492_bdd_1_lut_2_lut.init = 16'hdddd;
    ORCALUT4 i4946_2_lut (.A(state[1]), .B(n5910), .Z(n6393)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4946_2_lut.init = 16'heeee;
    ORCALUT4 i2369_4_lut (.A(runup_cnt[2]), .B(n78_adj_740), .C(n2097), 
            .D(n6691), .Z(n3805)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2369_4_lut.init = 16'hc0ca;
    ORCALUT4 i4940_4_lut (.A(cnt_stat[5]), .B(cnt_stat[6]), .C(n6_adj_715), 
            .D(n6684), .Z(n6387)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4940_4_lut.init = 16'hfffe;
    ORCALUT4 uart_frame_r_2__N_492_bdd_2_lut_3_lut (.A(uart_frame_r[0]), .B(uart_frame_start), 
            .C(uart_frame_cnt[3]), .Z(n6624)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(325[6:45])
    defparam uart_frame_r_2__N_492_bdd_2_lut_3_lut.init = 16'hd0d0;
    ORCALUT4 i2365_4_lut (.A(runup_cnt[1]), .B(n79_adj_741), .C(n2097), 
            .D(n6691), .Z(n3801)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(210[19:32])
    defparam i2365_4_lut.init = 16'hc0ca;
    PFUMX i4961 (.BLUT(n6407), .ALUT(n6408), .C0(uart_frame_cnt[0]), .Z(n6409));
    ORCALUT4 i2059_3_lut_4_lut (.A(uart_frame_r[0]), .B(uart_frame_start), 
            .C(n2131), .D(uart_frame_cnt[0]), .Z(n3495)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (C (D)+!C !(D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(325[6:45])
    defparam i2059_3_lut_4_lut.init = 16'hd00f;
    ORCALUT4 i1_2_lut_rep_133 (.A(uart_rx_state[1]), .B(uart_rx_state[0]), 
            .Z(n6727)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_133.init = 16'heeee;
    PFUMX i4964 (.BLUT(n6410), .ALUT(n6411), .C0(uart_frame_cnt[0]), .Z(n6412));
    ORCALUT4 i1_2_lut_3_lut (.A(uart_rx_state[1]), .B(uart_rx_state[0]), 
            .C(uart_rx_ready), .Z(cnt_5_enable_14)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    ORCALUT4 i1_4_lut_adj_60 (.A(state[1]), .B(n6669), .C(n2081), .D(n5), 
            .Z(n6299)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C+!(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam i1_4_lut_adj_60.init = 16'hcfee;
    ORCALUT4 i1_2_lut_rep_135 (.A(uart_rx_state[1]), .B(uart_rx_state[0]), 
            .Z(cnt_5_enable_22)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam i1_2_lut_rep_135.init = 16'h4444;
    ORCALUT4 i2338_4_lut (.A(cnt_runup[14]), .B(n66_adj_713), .C(n6672), 
            .D(n6691), .Z(n3774)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2338_4_lut.init = 16'hc0ca;
    ORCALUT4 i1_2_lut_4_lut_3_lut (.A(uart_rx_state[1]), .B(uart_rx_state[0]), 
            .C(uart_rx_ready), .Z(n31_adj_691)) /* synthesis lut_function=(!(A (B+(C))+!A !(B))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam i1_2_lut_4_lut_3_lut.init = 16'h4646;
    ORCALUT4 i2306_4_lut (.A(cnt_runup[13]), .B(n67_adj_712), .C(n6672), 
            .D(n6691), .Z(n3742)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2306_4_lut.init = 16'hc0ca;
    ORCALUT4 i1_2_lut_rep_136 (.A(cnt_stat[6]), .B(cnt_stat[5]), .Z(n6730)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_136.init = 16'heeee;
    ORCALUT4 i2304_4_lut (.A(cnt_runup[12]), .B(n68_adj_711), .C(n6672), 
            .D(n6691), .Z(n3740)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2304_4_lut.init = 16'hc0ca;
    ORCALUT4 i1_2_lut_rep_86_3_lut (.A(cnt_stat[6]), .B(cnt_stat[5]), .C(n3446), 
            .Z(n6680)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_86_3_lut.init = 16'hfefe;
    ORCALUT4 i5077_2_lut_2_lut_4_lut (.A(state[0]), .B(state[4]), .C(state[1]), 
            .D(n6675), .Z(cnt_5_enable_65)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(123[6:14])
    defparam i5077_2_lut_2_lut_4_lut.init = 16'h0001;
    ORCALUT4 i3353_2_lut_3_lut_rep_103_3_lut_4_lut_3_lut (.A(state[0]), .B(state[4]), 
            .C(state[1]), .Z(n6697)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+!(C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(123[6:14])
    defparam i3353_2_lut_3_lut_rep_103_3_lut_4_lut_3_lut.init = 16'hb2b2;
    ORCALUT4 n3253_bdd_4_lut (.A(n3253), .B(uart_busy), .C(uart_frame_state[1]), 
            .D(uart_frame_state[0]), .Z(n2131)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam n3253_bdd_4_lut.init = 16'hfdff;
    ORCALUT4 i2302_4_lut (.A(cnt_runup[11]), .B(n69_adj_710), .C(n6672), 
            .D(n6691), .Z(n3738)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2302_4_lut.init = 16'hc0ca;
    ORCALUT4 i5025_3_lut_4_lut_3_lut (.A(state[0]), .B(state[1]), .C(state[4]), 
            .Z(n3007)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(221[6:14])
    defparam i5025_3_lut_4_lut_3_lut.init = 16'h0606;
    ORCALUT4 equal_573_i9_2_lut_3_lut (.A(state[0]), .B(state[1]), .C(state[4]), 
            .Z(n9)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(221[6:14])
    defparam equal_573_i9_2_lut_3_lut.init = 16'hfbfb;
    ORCALUT4 i2280_4_lut (.A(cnt_runup[8]), .B(n72_adj_707), .C(n6672), 
            .D(n6691), .Z(n3716)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2280_4_lut.init = 16'hc0ca;
    ORCALUT4 i2298_4_lut (.A(cnt_runup[9]), .B(n71_adj_708), .C(n6672), 
            .D(n6691), .Z(n3734)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2298_4_lut.init = 16'hc0ca;
    ORCALUT4 i2264_4_lut (.A(cnt_runup[7]), .B(n73_adj_706), .C(n6672), 
            .D(n6691), .Z(n3700)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2264_4_lut.init = 16'hc0ca;
    ORCALUT4 i1_2_lut_rep_82_3_lut_4_lut (.A(n6685), .B(cnt_stat[4]), .C(n3446), 
            .D(n6730), .Z(n6676)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i1_2_lut_rep_82_3_lut_4_lut.init = 16'hfff8;
    ORCALUT4 i2300_4_lut (.A(cnt_runup[10]), .B(n70_adj_709), .C(n6672), 
            .D(n6691), .Z(n3736)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2300_4_lut.init = 16'hc0ca;
    ORCALUT4 i2262_4_lut (.A(cnt_runup[6]), .B(n74_adj_705), .C(n6672), 
            .D(n6691), .Z(n3698)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2262_4_lut.init = 16'hc0ca;
    ORCALUT4 i2260_4_lut (.A(cnt_runup[5]), .B(n75_adj_704), .C(n6672), 
            .D(n6691), .Z(n3696)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2260_4_lut.init = 16'hc0ca;
    ORCALUT4 i4972_3_lut (.A(frame_content[31]), .B(frame_content[23]), 
            .C(uart_frame_cnt[0]), .Z(n6420)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4972_3_lut.init = 16'hcaca;
    ORCALUT4 i2258_4_lut (.A(cnt_runup[4]), .B(n76_adj_703), .C(n6672), 
            .D(n6691), .Z(n3694)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2258_4_lut.init = 16'hc0ca;
    ORCALUT4 i2334_4_lut (.A(cnt_runup[0]), .B(n80_adj_699), .C(n6672), 
            .D(n6691), .Z(n3770)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2334_4_lut.init = 16'hc0ca;
    ORCALUT4 i761_2_lut_rep_78_3_lut_4_lut (.A(n6709), .B(state[4]), .C(n3446), 
            .D(n5910), .Z(n6672)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(163[6:14])
    defparam i761_2_lut_rep_78_3_lut_4_lut.init = 16'h1110;
    ORCALUT4 i2256_4_lut (.A(cnt_runup[3]), .B(n77_adj_702), .C(n6672), 
            .D(n6691), .Z(n3692)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2256_4_lut.init = 16'hc0ca;
    ORCALUT4 i2254_4_lut (.A(cnt_runup[2]), .B(n78_adj_701), .C(n6672), 
            .D(n6691), .Z(n3690)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2254_4_lut.init = 16'hc0ca;
    ORCALUT4 i2252_4_lut (.A(cnt_runup[1]), .B(n79_adj_700), .C(n6672), 
            .D(n6691), .Z(n3688)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(200[17:30])
    defparam i2252_4_lut.init = 16'hc0ca;
    ORCALUT4 i4982_3_lut (.A(frame_content[38]), .B(frame_content[6]), .C(uart_frame_cnt[2]), 
            .Z(n6430)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4982_3_lut.init = 16'hcaca;
    uart_rx uart_rx_a (.\uart_divider[0] (uart_divider[0]), .uart_rx_rst(uart_rx_rst), 
            .uart_rx_ready(uart_rx_ready), .deb_1_c(deb_1_c), .uart_rx_register({uart_rx_register}), 
            .deb_0_c_c(deb_0_c_c), .\cnt[5]_enable_69 (cnt_5_enable_69), 
            .\uart_rx_state[0] (uart_rx_state[0]), .n49(n49), .\uart_rx_state[1] (uart_rx_state[1]), 
            .n6864(n6864), .n6728(n6728), .\cnt[5]_enable_73 (cnt_5_enable_73)) /* synthesis syn_module_defined=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(384[9] 391[2])
    ORCALUT4 i4969_3_lut (.A(frame_content[33]), .B(frame_content[1]), .C(uart_frame_cnt[2]), 
            .Z(n6417)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4969_3_lut.init = 16'hcaca;
    ORCALUT4 i4968_3_lut (.A(frame_content[41]), .B(frame_content[9]), .C(uart_frame_cnt[2]), 
            .Z(n6416)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4968_3_lut.init = 16'hcaca;
    ORCALUT4 i2_4_lut (.A(cnt_stat[6]), .B(cnt_stat[5]), .C(n6685), .D(cnt_stat[4]), 
            .Z(n5910)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    ORCALUT4 i4966_3_lut (.A(frame_content[34]), .B(frame_content[2]), .C(uart_frame_cnt[2]), 
            .Z(n6414)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4966_3_lut.init = 16'hcaca;
    ORCALUT4 i4965_3_lut (.A(frame_content[42]), .B(frame_content[10]), 
            .C(uart_frame_cnt[2]), .Z(n6413)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4965_3_lut.init = 16'hcaca;
    ORCALUT4 i3_4_lut_adj_61 (.A(n3409), .B(cnt_stat[10]), .C(n86), .D(cnt_stat[7]), 
            .Z(n3446)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_61.init = 16'hfffe;
    ORCALUT4 i1_2_lut_adj_62 (.A(cnt_stat[9]), .B(cnt_stat[8]), .Z(n86)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(141[16:28])
    defparam i1_2_lut_adj_62.init = 16'heeee;
    ORCALUT4 i4963_3_lut (.A(frame_content[32]), .B(frame_content[0]), .C(uart_frame_cnt[2]), 
            .Z(n6411)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4963_3_lut.init = 16'hcaca;
    ORCALUT4 i3434_4_lut (.A(n6670), .B(n6671), .C(state[0]), .D(n5), 
            .Z(n3855)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(54[8] 279[4])
    defparam i3434_4_lut.init = 16'hdddc;
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    ORCALUT4 m0_lut (.Z(n6863)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (\uart_divider[3] , \uart_divider[3]_enable_13 , uart_tx_state, 
            uart_busy, n6864, so_dat_c, uart_tx_start, uart_tx_register) /* synthesis syn_module_defined=1 */ ;
    input \uart_divider[3] ;
    input \uart_divider[3]_enable_13 ;
    output [2:0]uart_tx_state;
    output uart_busy;
    input n6864;
    output so_dat_c;
    input uart_tx_start;
    input [7:0]uart_tx_register;
    
    wire \uart_divider[3]  /* synthesis SET_AS_NETWORK=uart_divider[3], is_clock=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(17[10:22])
    wire [2:0]uart_tx_bit;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(10[10:21])
    
    wire uart_tx_state_2__N_570, n6694, n5972, uart_tx_busy_N_585, n6718, 
        n6701, n5, n2147, n6422, n6423, n6426, uart_tx_pin_N_578, 
        n3812, n4, uart_divider_3_enable_3, n6375, n6699;
    wire [2:0]uart_tx_state_2__N_561;
    
    wire n6723, n2141, n6424, n6425, n6427, n6230, n6629, n3814, 
        n6186;
    wire [2:0]n115;
    
    FD1P3IX uart_tx_bit__i0 (.D(n6694), .SP(\uart_divider[3]_enable_13 ), 
            .CD(uart_tx_state_2__N_570), .CK(\uart_divider[3] ), .Q(uart_tx_bit[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=373, LSE_RLINE=381 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_bit__i0.GSR = "ENABLED";
    ORCALUT4 i5030_3_lut (.A(uart_tx_state[0]), .B(uart_tx_state[2]), .C(uart_tx_state[1]), 
            .Z(n5972)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(46[11:27])
    defparam i5030_3_lut.init = 16'h0404;
    FD1P3IX uart_tx_busy_37 (.D(n6864), .SP(uart_tx_busy_N_585), .CD(n5972), 
            .CK(\uart_divider[3] ), .Q(uart_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=373, LSE_RLINE=381 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_busy_37.GSR = "ENABLED";
    ORCALUT4 i989_3_lut_4_lut (.A(uart_tx_bit[0]), .B(n6718), .C(n6701), 
            .D(n5), .Z(n2147)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam i989_3_lut_4_lut.init = 16'hf707;
    PFUMX i4978 (.BLUT(n6422), .ALUT(n6423), .C0(uart_tx_bit[1]), .Z(n6426));
    ORCALUT4 i2376_4_lut (.A(so_dat_c), .B(uart_tx_pin_N_578), .C(n6701), 
            .D(n5), .Z(n3812)) /* synthesis lut_function=(A (B+(C))+!A !(B (C (D))+!B ((D)+!C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam i2376_4_lut.init = 16'hacfc;
    ORCALUT4 i5085_4_lut (.A(uart_tx_start), .B(uart_tx_state[0]), .C(uart_tx_state[2]), 
            .D(n4), .Z(uart_divider_3_enable_3)) /* synthesis lut_function=(A+!(B (C)+!B (C+(D)))) */ ;
    defparam i5085_4_lut.init = 16'haeaf;
    ORCALUT4 i2_4_lut (.A(uart_tx_state[1]), .B(n6375), .C(uart_tx_start), 
            .D(n6699), .Z(uart_tx_state_2__N_561[0])) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(30[7] 49[6])
    defparam i2_4_lut.init = 16'h0123;
    ORCALUT4 i4928_2_lut (.A(uart_tx_state[2]), .B(uart_tx_state[0]), .Z(n6375)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4928_2_lut.init = 16'heeee;
    FD1S3IX uart_tx_pin_38 (.D(n3812), .CK(\uart_divider[3] ), .CD(uart_tx_state_2__N_570), 
            .Q(so_dat_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=373, LSE_RLINE=381 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_pin_38.GSR = "ENABLED";
    ORCALUT4 i3374_2_lut_3_lut_4_lut (.A(uart_tx_state[0]), .B(n6723), .C(n6718), 
            .D(uart_tx_bit[0]), .Z(n2141)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(41[11:27])
    defparam i3374_2_lut_3_lut_4_lut.init = 16'h1000;
    FD1P3AX uart_tx_state_i0 (.D(uart_tx_state_2__N_561[0]), .SP(uart_divider_3_enable_3), 
            .CK(\uart_divider[3] ), .Q(uart_tx_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=373, LSE_RLINE=381 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_state_i0.GSR = "ENABLED";
    PFUMX i4979 (.BLUT(n6424), .ALUT(n6425), .C0(uart_tx_bit[1]), .Z(n6427));
    ORCALUT4 i1_2_lut_2_lut (.A(uart_tx_start), .B(uart_tx_state[1]), .Z(n6230)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(30[7] 49[6])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    FD1S3IX uart_tx_state_i2 (.D(n6629), .CK(\uart_divider[3] ), .CD(uart_tx_state_2__N_570), 
            .Q(uart_tx_state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=373, LSE_RLINE=381 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_state_i2.GSR = "ENABLED";
    FD1S3JX uart_tx_state_i1 (.D(n3814), .CK(\uart_divider[3] ), .PD(uart_tx_state_2__N_570), 
            .Q(uart_tx_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=373, LSE_RLINE=381 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_state_i1.GSR = "ENABLED";
    ORCALUT4 uart_tx_start_bdd_4_lut (.A(uart_tx_start), .B(uart_tx_state[2]), 
            .C(uart_tx_state[0]), .D(uart_tx_state[1]), .Z(n6629)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B+(C (D))))) */ ;
    defparam uart_tx_start_bdd_4_lut.init = 16'h7444;
    FD1P3IX uart_tx_bit__i2 (.D(n6186), .SP(\uart_divider[3]_enable_13 ), 
            .CD(uart_tx_state_2__N_570), .CK(\uart_divider[3] ), .Q(uart_tx_bit[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=373, LSE_RLINE=381 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_bit__i2.GSR = "ENABLED";
    FD1P3IX uart_tx_bit__i1 (.D(n115[1]), .SP(\uart_divider[3]_enable_13 ), 
            .CD(uart_tx_state_2__N_570), .CK(\uart_divider[3] ), .Q(uart_tx_bit[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=373, LSE_RLINE=381 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(12[8] 50[5])
    defparam uart_tx_bit__i1.GSR = "ENABLED";
    ORCALUT4 i5027_2_lut_3_lut (.A(uart_tx_state[1]), .B(uart_tx_state[2]), 
            .C(uart_tx_state[0]), .Z(uart_tx_state_2__N_570)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(46[11:27])
    defparam i5027_2_lut_3_lut.init = 16'h1010;
    ORCALUT4 equal_589_i6_1_lut_2_lut_3_lut (.A(uart_tx_state[1]), .B(uart_tx_state[2]), 
            .C(uart_tx_state[0]), .Z(uart_tx_busy_N_585)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(46[11:27])
    defparam equal_589_i6_1_lut_2_lut_3_lut.init = 16'h0101;
    ORCALUT4 i1585_2_lut_rep_124 (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), 
            .Z(n6718)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(34[7:20])
    defparam i1585_2_lut_rep_124.init = 16'h8888;
    ORCALUT4 i5082_2_lut_rep_100_3_lut (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), 
            .C(uart_tx_bit[0]), .Z(n6694)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(34[7:20])
    defparam i5082_2_lut_rep_100_3_lut.init = 16'h8f8f;
    ORCALUT4 i1337_2_lut_3_lut_3_lut (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), 
            .C(uart_tx_bit[0]), .Z(n115[1])) /* synthesis lut_function=(A (B+!(C))+!A (C)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(34[7:20])
    defparam i1337_2_lut_3_lut_3_lut.init = 16'hdada;
    ORCALUT4 i5073_2_lut_rep_105_3_lut (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), 
            .C(uart_tx_bit[0]), .Z(n6699)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(34[7:20])
    defparam i5073_2_lut_rep_105_3_lut.init = 16'h7f7f;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(uart_tx_bit[1]), .B(uart_tx_bit[2]), 
            .C(uart_tx_state[1]), .D(uart_tx_bit[0]), .Z(n4)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(34[7:20])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h70f0;
    ORCALUT4 i1_2_lut_rep_129 (.A(uart_tx_state[2]), .B(uart_tx_state[1]), 
            .Z(n6723)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(41[11:27])
    defparam i1_2_lut_rep_129.init = 16'hbbbb;
    ORCALUT4 i1_2_lut_rep_107_3_lut (.A(uart_tx_state[2]), .B(uart_tx_state[1]), 
            .C(uart_tx_state[0]), .Z(n6701)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(41[11:27])
    defparam i1_2_lut_rep_107_3_lut.init = 16'hfbfb;
    ORCALUT4 i1_2_lut_3_lut (.A(uart_tx_state[2]), .B(uart_tx_state[1]), 
            .C(uart_tx_state[0]), .Z(n5)) /* synthesis lut_function=(A+!(B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(41[11:27])
    defparam i1_2_lut_3_lut.init = 16'hbfbf;
    PFUMX i2378 (.BLUT(n2141), .ALUT(n6230), .C0(n2147), .Z(n3814));
    L6MUX21 i4980 (.D0(n6426), .D1(n6427), .SD(uart_tx_bit[2]), .Z(uart_tx_pin_N_578));
    ORCALUT4 i4977_3_lut (.A(uart_tx_register[6]), .B(uart_tx_register[7]), 
            .C(uart_tx_bit[0]), .Z(n6425)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4977_3_lut.init = 16'hcaca;
    ORCALUT4 i4976_3_lut (.A(uart_tx_register[4]), .B(uart_tx_register[5]), 
            .C(uart_tx_bit[0]), .Z(n6424)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4976_3_lut.init = 16'hcaca;
    ORCALUT4 i1_3_lut (.A(uart_tx_bit[2]), .B(uart_tx_bit[1]), .C(uart_tx_bit[0]), 
            .Z(n6186)) /* synthesis lut_function=(A+(B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_tx.v(35[19:34])
    defparam i1_3_lut.init = 16'heaea;
    ORCALUT4 i4975_3_lut (.A(uart_tx_register[2]), .B(uart_tx_register[3]), 
            .C(uart_tx_bit[0]), .Z(n6423)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4975_3_lut.init = 16'hcaca;
    ORCALUT4 i4974_3_lut (.A(uart_tx_register[0]), .B(uart_tx_register[1]), 
            .C(uart_tx_bit[0]), .Z(n6422)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i4974_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (\uart_divider[0] , uart_rx_rst, uart_rx_ready, deb_1_c, 
            uart_rx_register, deb_0_c_c, \cnt[5]_enable_69 , \uart_rx_state[0] , 
            n49, \uart_rx_state[1] , n6864, n6728, \cnt[5]_enable_73 ) /* synthesis syn_module_defined=1 */ ;
    input \uart_divider[0] ;
    input uart_rx_rst;
    output uart_rx_ready;
    output deb_1_c;
    output [7:0]uart_rx_register;
    input deb_0_c_c;
    output \cnt[5]_enable_69 ;
    input \uart_rx_state[0] ;
    output n49;
    input \uart_rx_state[1] ;
    input n6864;
    output n6728;
    output \cnt[5]_enable_73 ;
    
    wire \uart_divider[0]  /* synthesis SET_AS_NETWORK=uart_divider[0], is_clock=1 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/adc_ms.v(17[10:22])
    wire [7:0]uart_rx_tmp;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(18[10:21])
    
    wire n3460, n3463;
    wire [2:0]uart_rx_state;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(14[10:23])
    
    wire uart_divider_0_enable_1, n6695;
    wire [2:0]uart_rx_state_2__N_670;
    
    wire n3468, n3471, n3474, n3477, n3480;
    wire [4:0]uart_rx_zero_cnt;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(17[10:26])
    
    wire n2191, n4717, n3746, n2184, n6719, n6679, uart_rx_pin, 
        uart_divider_0_enable_3, n6715, n6716, n6616;
    wire [4:0]n1;
    
    wire n6861, n6713, n3783, rx_pin_state, n6320, n3511, n6708, 
        uart_rx_dbg_N_682, uart_divider_0_enable_10, n6682;
    wire [4:0]uart_rx_bit;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(16[10:21])
    
    wire n6328, uart_rx_pin_tmp, n6673, n6698, n3799, n6707, n3797, 
        n3794, n6282, n6703, n2177, n25, n6674, n6325, n3516, 
        n55;
    wire [4:0]uart_rx_cnt;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(15[10:21])
    
    wire n6628, rx_pin_state_N_686, n6, n6710, n6688, n6711, n3673, 
        n6627, n6712, n6690, n6681, n6686, n6693, n6687, n6324, 
        n3642, n3644, n3646, n3648, n3680, n6296, n6717, n6312, 
        n10, n3678, n3676, n3674;
    wire [4:0]n2;
    
    wire n2197, n6337, n6336;
    wire [4:0]n3;
    
    wire n3681, n3779, n4, n3714, n6678, n6389, n14;
    
    FD1S3AX uart_rx_tmp_i7 (.D(n3460), .CK(\uart_divider[0] ), .Q(uart_rx_tmp[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i7.GSR = "ENABLED";
    FD1S3AX uart_rx_tmp_i6 (.D(n3463), .CK(\uart_divider[0] ), .Q(uart_rx_tmp[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i6.GSR = "ENABLED";
    FD1P3IX uart_rx_state__i0 (.D(uart_rx_state_2__N_670[0]), .SP(uart_divider_0_enable_1), 
            .CD(n6695), .CK(\uart_divider[0] ), .Q(uart_rx_state[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_state__i0.GSR = "ENABLED";
    FD1S3AX uart_rx_tmp_i5 (.D(n3468), .CK(\uart_divider[0] ), .Q(uart_rx_tmp[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i5.GSR = "ENABLED";
    FD1S3AX uart_rx_tmp_i4 (.D(n3471), .CK(\uart_divider[0] ), .Q(uart_rx_tmp[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i4.GSR = "ENABLED";
    FD1S3AX uart_rx_tmp_i3 (.D(n3474), .CK(\uart_divider[0] ), .Q(uart_rx_tmp[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i3.GSR = "ENABLED";
    FD1S3AX uart_rx_tmp_i2 (.D(n3477), .CK(\uart_divider[0] ), .Q(uart_rx_tmp[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i2.GSR = "ENABLED";
    FD1S3AX uart_rx_tmp_i1 (.D(n3480), .CK(\uart_divider[0] ), .Q(uart_rx_tmp[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i1.GSR = "ENABLED";
    ORCALUT4 i2310_3_lut (.A(uart_rx_zero_cnt[0]), .B(n2191), .C(n4717), 
            .Z(n3746)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(56[22:40])
    defparam i2310_3_lut.init = 16'h6464;
    ORCALUT4 i2_4_lut (.A(n2184), .B(n6719), .C(uart_rx_state[1]), .D(uart_rx_state[0]), 
            .Z(n2191)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B+((D)+!C)))) */ ;
    defparam i2_4_lut.init = 16'h0230;
    ORCALUT4 i3454_4_lut (.A(n6679), .B(uart_rx_pin), .C(uart_divider_0_enable_3), 
            .D(n2184), .Z(n4717)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))) */ ;
    defparam i3454_4_lut.init = 16'h8a0a;
    ORCALUT4 n4730_bdd_4_lut (.A(n6715), .B(uart_rx_pin), .C(n6716), .D(uart_rx_state[1]), 
            .Z(n6616)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A ((D)+!B)) */ ;
    defparam n4730_bdd_4_lut.init = 16'hff31;
    ORCALUT4 uart_rx_zero_cnt_4__bdd_4_lut (.A(uart_rx_zero_cnt[4]), .B(n4717), 
            .C(n1[4]), .D(n2191), .Z(n6861)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam uart_rx_zero_cnt_4__bdd_4_lut.init = 16'hf088;
    FD1S3AX uart_rx_zero_cnt_1087__i0 (.D(n3746), .CK(\uart_divider[0] ), 
            .Q(uart_rx_zero_cnt[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_1087__i0.GSR = "ENABLED";
    ORCALUT4 i1_3_lut_4_lut (.A(uart_rx_state[1]), .B(n6713), .C(uart_rx_rst), 
            .D(uart_rx_ready), .Z(n3783)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h2f22;
    ORCALUT4 i2075_4_lut (.A(rx_pin_state), .B(uart_rx_tmp[0]), .C(n6320), 
            .D(n6679), .Z(n3511)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i2075_4_lut.init = 16'hca0a;
    ORCALUT4 i1_4_lut (.A(deb_1_c), .B(n6708), .C(rx_pin_state), .D(uart_divider_0_enable_3), 
            .Z(uart_rx_dbg_N_682)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D)))) */ ;
    defparam i1_4_lut.init = 16'hc399;
    FD1P3AX uart_rx_data_i0_i0 (.D(uart_rx_tmp[0]), .SP(uart_divider_0_enable_10), 
            .CK(\uart_divider[0] ), .Q(uart_rx_register[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i0.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(n6682), .B(uart_rx_bit[2]), .C(uart_rx_bit[0]), 
            .D(uart_rx_bit[1]), .Z(n6328)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(70[4:28])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfeff;
    FD1S3AX uart_rx_tmp_i0 (.D(n3511), .CK(\uart_divider[0] ), .Q(uart_rx_tmp[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_tmp_i0.GSR = "ENABLED";
    FD1S3AX uart_rx_pin_92 (.D(uart_rx_pin_tmp), .CK(\uart_divider[0] ), 
            .Q(uart_rx_pin)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_pin_92.GSR = "ENABLED";
    FD1S3IX uart_rx_rdy_93 (.D(n3783), .CK(\uart_divider[0] ), .CD(n6695), 
            .Q(uart_rx_ready)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_rdy_93.GSR = "ENABLED";
    FD1S3AX uart_rx_dbg_100 (.D(uart_rx_dbg_N_682), .CK(\uart_divider[0] ), 
            .Q(deb_1_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_dbg_100.GSR = "ENABLED";
    FD1S3AX uart_rx_pin_tmp_91 (.D(deb_0_c_c), .CK(\uart_divider[0] ), .Q(uart_rx_pin_tmp)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_pin_tmp_91.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_rep_79_3_lut (.A(n6682), .B(uart_rx_bit[2]), .C(uart_rx_bit[1]), 
            .Z(n6673)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(70[4:28])
    defparam i1_2_lut_rep_79_3_lut.init = 16'hefef;
    ORCALUT4 i2363_4_lut (.A(uart_rx_zero_cnt[3]), .B(n6698), .C(n2191), 
            .D(n4717), .Z(n3799)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(56[22:40])
    defparam i2363_4_lut.init = 16'h6a60;
    ORCALUT4 i2361_4_lut (.A(uart_rx_zero_cnt[2]), .B(n6707), .C(n2191), 
            .D(n4717), .Z(n3797)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(56[22:40])
    defparam i2361_4_lut.init = 16'h6a60;
    ORCALUT4 i2358_4_lut (.A(uart_rx_zero_cnt[1]), .B(uart_rx_zero_cnt[0]), 
            .C(n2191), .D(n4717), .Z(n3794)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(56[22:40])
    defparam i2358_4_lut.init = 16'h6a60;
    ORCALUT4 i1_2_lut (.A(uart_rx_register[4]), .B(n6282), .Z(\cnt[5]_enable_69 )) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i1_2_lut.init = 16'h4444;
    ORCALUT4 i1_2_lut_rep_109 (.A(uart_rx_state[1]), .B(uart_rx_state[0]), 
            .Z(n6703)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(102[6:22])
    defparam i1_2_lut_rep_109.init = 16'heeee;
    ORCALUT4 i1_3_lut_4_lut_adj_32 (.A(n2177), .B(n25), .C(n6674), .D(uart_rx_state[1]), 
            .Z(n6325)) /* synthesis lut_function=(A+!(B (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_32.init = 16'hbfbb;
    FD1S3AX uart_rx_bit_1089__i0 (.D(n3516), .CK(\uart_divider[0] ), .Q(uart_rx_bit[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(72[17:30])
    defparam uart_rx_bit_1089__i0.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_33 (.A(n6679), .B(uart_rx_rst), .C(n25), 
            .D(n2177), .Z(uart_divider_0_enable_1)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(31[2] 50[6])
    defparam i1_2_lut_3_lut_4_lut_adj_33.init = 16'hffdf;
    ORCALUT4 i3_4_lut (.A(\uart_rx_state[0] ), .B(uart_rx_register[5]), 
            .C(n55), .D(n49), .Z(n6282)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i3_4_lut.init = 16'h0400;
    ORCALUT4 i75_2_lut (.A(uart_rx_register[6]), .B(uart_rx_register[7]), 
            .Z(n55)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i75_2_lut.init = 16'heeee;
    ORCALUT4 i5047_3_lut_rep_101_4_lut (.A(uart_rx_state[1]), .B(uart_rx_state[0]), 
            .C(uart_rx_state[2]), .D(uart_rx_rst), .Z(n6695)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(102[6:22])
    defparam i5047_3_lut_rep_101_4_lut.init = 16'h0010;
    ORCALUT4 i4385_3_lut_4_lut (.A(uart_rx_zero_cnt[2]), .B(n6707), .C(uart_rx_zero_cnt[3]), 
            .D(uart_rx_zero_cnt[4]), .Z(n1[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(56[22:40])
    defparam i4385_3_lut_4_lut.init = 16'h7f80;
    FD1S3AX uart_rx_cnt_1091__i0 (.D(n6628), .CK(\uart_divider[0] ), .Q(uart_rx_cnt[0]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_1091__i0.GSR = "ENABLED";
    FD1P3AX rx_pin_state_99 (.D(rx_pin_state_N_686), .SP(uart_divider_0_enable_3), 
            .CK(\uart_divider[0] ), .Q(rx_pin_state)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam rx_pin_state_99.GSR = "ENABLED";
    ORCALUT4 i4367_2_lut_rep_113 (.A(uart_rx_zero_cnt[1]), .B(uart_rx_zero_cnt[0]), 
            .Z(n6707)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(56[22:40])
    defparam i4367_2_lut_rep_113.init = 16'h8888;
    ORCALUT4 i4374_2_lut_rep_104_3_lut (.A(uart_rx_zero_cnt[1]), .B(uart_rx_zero_cnt[0]), 
            .C(uart_rx_zero_cnt[2]), .Z(n6698)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(56[22:40])
    defparam i4374_2_lut_rep_104_3_lut.init = 16'h8080;
    ORCALUT4 i2_3_lut_rep_114 (.A(uart_rx_state[1]), .B(uart_rx_state[0]), 
            .C(uart_rx_state[2]), .Z(n6708)) /* synthesis lut_function=((B+(C))+!A) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(97[6:22])
    defparam i2_3_lut_rep_114.init = 16'hfdfd;
    ORCALUT4 i1_2_lut_4_lut (.A(uart_rx_state[1]), .B(uart_rx_state[0]), 
            .C(uart_rx_state[2]), .D(uart_rx_cnt[3]), .Z(n6)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(97[6:22])
    defparam i1_2_lut_4_lut.init = 16'h0200;
    ORCALUT4 i4439_2_lut_rep_116 (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[0]), 
            .Z(n6710)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(35[17:30])
    defparam i4439_2_lut_rep_116.init = 16'h8888;
    ORCALUT4 i4446_2_lut_rep_94_3_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[0]), 
            .C(uart_rx_cnt[2]), .Z(n6688)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(35[17:30])
    defparam i4446_2_lut_rep_94_3_lut.init = 16'h8080;
    ORCALUT4 i1_2_lut_adj_34 (.A(uart_rx_ready), .B(\uart_rx_state[1] ), 
            .Z(n49)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i1_2_lut_adj_34.init = 16'h2222;
    ORCALUT4 i3338_2_lut_rep_117 (.A(uart_rx_state[2]), .B(uart_rx_state[1]), 
            .Z(n6711)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3338_2_lut_rep_117.init = 16'heeee;
    ORCALUT4 i3473_2_lut_3_lut (.A(uart_rx_state[2]), .B(uart_rx_state[1]), 
            .C(uart_rx_cnt[4]), .Z(n3673)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i3473_2_lut_3_lut.init = 16'he0e0;
    ORCALUT4 n6616_bdd_4_lut (.A(n6616), .B(uart_rx_cnt[0]), .C(uart_rx_state[1]), 
            .D(uart_rx_state[0]), .Z(n6627)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam n6616_bdd_4_lut.init = 16'hc322;
    ORCALUT4 i4403_2_lut_rep_118 (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), 
            .Z(n6712)) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(72[17:30])
    defparam i4403_2_lut_rep_118.init = 16'h8888;
    ORCALUT4 i4410_2_lut_rep_96_3_lut (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), 
            .C(uart_rx_bit[2]), .Z(n6690)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(72[17:30])
    defparam i4410_2_lut_rep_96_3_lut.init = 16'h8080;
    ORCALUT4 i1_2_lut_rep_119 (.A(uart_rx_state[2]), .B(uart_rx_state[0]), 
            .Z(n6713)) /* synthesis lut_function=(A+!(B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(102[6:22])
    defparam i1_2_lut_rep_119.init = 16'hbbbb;
    ORCALUT4 i3332_3_lut_4_lut (.A(n6681), .B(n6686), .C(n25), .D(n2177), 
            .Z(uart_rx_state_2__N_670[0])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;
    defparam i3332_3_lut_4_lut.init = 16'hff10;
    FD1P3AX uart_rx_data_i0_i7 (.D(uart_rx_tmp[7]), .SP(uart_divider_0_enable_10), 
            .CK(\uart_divider[0] ), .Q(uart_rx_register[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i7.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i6 (.D(uart_rx_tmp[6]), .SP(uart_divider_0_enable_10), 
            .CK(\uart_divider[0] ), .Q(uart_rx_register[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i6.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i5 (.D(uart_rx_tmp[5]), .SP(uart_divider_0_enable_10), 
            .CK(\uart_divider[0] ), .Q(uart_rx_register[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i5.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i4 (.D(uart_rx_tmp[4]), .SP(uart_divider_0_enable_10), 
            .CK(\uart_divider[0] ), .Q(uart_rx_register[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i4.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i3 (.D(uart_rx_tmp[3]), .SP(uart_divider_0_enable_10), 
            .CK(\uart_divider[0] ), .Q(uart_rx_register[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i3.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i2 (.D(uart_rx_tmp[2]), .SP(uart_divider_0_enable_10), 
            .CK(\uart_divider[0] ), .Q(uart_rx_register[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i2.GSR = "ENABLED";
    FD1P3AX uart_rx_data_i0_i1 (.D(uart_rx_tmp[1]), .SP(uart_divider_0_enable_10), 
            .CK(\uart_divider[0] ), .Q(uart_rx_register[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_data_i0_i1.GSR = "ENABLED";
    ORCALUT4 i5041_2_lut_rep_98_3_lut (.A(uart_rx_state[2]), .B(uart_rx_state[0]), 
            .C(uart_rx_state[1]), .Z(uart_divider_0_enable_3)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(102[6:22])
    defparam i5041_2_lut_rep_98_3_lut.init = 16'h0404;
    ORCALUT4 i2041_4_lut (.A(rx_pin_state), .B(uart_rx_tmp[2]), .C(n6328), 
            .D(n6679), .Z(n3477)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i2041_4_lut.init = 16'hca0a;
    ORCALUT4 i5022_2_lut_rep_106_3_lut (.A(uart_rx_state[2]), .B(uart_rx_state[0]), 
            .C(uart_rx_state[1]), .Z(uart_divider_0_enable_10)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(102[6:22])
    defparam i5022_2_lut_rep_106_3_lut.init = 16'h4040;
    ORCALUT4 i3448_2_lut_rep_85_3_lut_4_lut (.A(n6703), .B(n6719), .C(n6693), 
            .D(uart_rx_cnt[0]), .Z(n6679)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(102[6:22])
    defparam i3448_2_lut_rep_85_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 n6627_bdd_3_lut (.A(n6627), .B(uart_rx_cnt[0]), .C(uart_rx_state[2]), 
            .Z(n6628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n6627_bdd_3_lut.init = 16'hcaca;
    FD1S3AX uart_rx_zero_cnt_1087__i4 (.D(n6861), .CK(\uart_divider[0] ), 
            .Q(uart_rx_zero_cnt[4]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_1087__i4.GSR = "ENABLED";
    FD1S3AX uart_rx_zero_cnt_1087__i3 (.D(n3799), .CK(\uart_divider[0] ), 
            .Q(uart_rx_zero_cnt[3]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_1087__i3.GSR = "ENABLED";
    FD1S3AX uart_rx_zero_cnt_1087__i2 (.D(n3797), .CK(\uart_divider[0] ), 
            .Q(uart_rx_zero_cnt[2]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_1087__i2.GSR = "ENABLED";
    FD1S3AX uart_rx_zero_cnt_1087__i1 (.D(n3794), .CK(\uart_divider[0] ), 
            .Q(uart_rx_zero_cnt[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(56[22:40])
    defparam uart_rx_zero_cnt_1087__i1.GSR = "ENABLED";
    ORCALUT4 i3302_2_lut_rep_121 (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[2]), 
            .Z(n6715)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3302_2_lut_rep_121.init = 16'h8888;
    ORCALUT4 i3451_2_lut_rep_93_3_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[2]), 
            .C(uart_rx_cnt[0]), .Z(n6687)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3451_2_lut_rep_93_3_lut.init = 16'h8080;
    FD1P3IX uart_rx_state__i2 (.D(n6864), .SP(uart_rx_rst), .CD(n6324), 
            .CK(\uart_divider[0] ), .Q(uart_rx_state[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_state__i2.GSR = "ENABLED";
    ORCALUT4 i2080_3_lut_4_lut (.A(n6681), .B(n6686), .C(n6682), .D(uart_rx_bit[0]), 
            .Z(n3516)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C+(D)))) */ ;
    defparam i2080_3_lut_4_lut.init = 16'he00f;
    FD1S3IX uart_rx_state__i1 (.D(n6325), .CK(\uart_divider[0] ), .CD(n6695), 
            .Q(uart_rx_state[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=2, LSE_LLINE=384, LSE_RLINE=391 */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam uart_rx_state__i1.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_rep_87_3_lut_4_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[2]), 
            .C(uart_rx_cnt[0]), .D(n6716), .Z(n6681)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_87_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_35 (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[2]), 
            .C(n6716), .D(uart_rx_cnt[0]), .Z(n2184)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_35.init = 16'hf7ff;
    ORCALUT4 equal_1075_i13_2_lut_rep_122 (.A(uart_rx_cnt[3]), .B(uart_rx_cnt[4]), 
            .Z(n6716)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(68[7:21])
    defparam equal_1075_i13_2_lut_rep_122.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_99_3_lut_4_lut (.A(uart_rx_cnt[3]), .B(uart_rx_cnt[4]), 
            .C(uart_rx_cnt[2]), .D(uart_rx_cnt[1]), .Z(n6693)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(68[7:21])
    defparam i1_2_lut_rep_99_3_lut_4_lut.init = 16'hefff;
    FD1S3AX uart_rx_bit_1089__i1 (.D(n3642), .CK(\uart_divider[0] ), .Q(uart_rx_bit[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(72[17:30])
    defparam uart_rx_bit_1089__i1.GSR = "ENABLED";
    FD1S3AX uart_rx_bit_1089__i2 (.D(n3644), .CK(\uart_divider[0] ), .Q(uart_rx_bit[2]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(72[17:30])
    defparam uart_rx_bit_1089__i2.GSR = "ENABLED";
    FD1S3AX uart_rx_bit_1089__i3 (.D(n3646), .CK(\uart_divider[0] ), .Q(uart_rx_bit[3]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(72[17:30])
    defparam uart_rx_bit_1089__i3.GSR = "ENABLED";
    FD1S3AX uart_rx_bit_1089__i4 (.D(n3648), .CK(\uart_divider[0] ), .Q(uart_rx_bit[4]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(72[17:30])
    defparam uart_rx_bit_1089__i4.GSR = "ENABLED";
    FD1S3AX uart_rx_cnt_1091__i1 (.D(n3680), .CK(\uart_divider[0] ), .Q(uart_rx_cnt[1]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_1091__i1.GSR = "ENABLED";
    ORCALUT4 i2044_4_lut (.A(rx_pin_state), .B(uart_rx_tmp[1]), .C(n6296), 
            .D(n6679), .Z(n3480)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i2044_4_lut.init = 16'hca0a;
    ORCALUT4 i3300_2_lut_rep_123 (.A(uart_rx_bit[1]), .B(uart_rx_bit[2]), 
            .Z(n6717)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3300_2_lut_rep_123.init = 16'h8888;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_36 (.A(uart_rx_bit[1]), .B(uart_rx_bit[2]), 
            .C(uart_rx_bit[0]), .D(n6682), .Z(n6312)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_36.init = 16'hfff7;
    ORCALUT4 i2_2_lut_3_lut (.A(uart_rx_bit[1]), .B(uart_rx_bit[2]), .C(uart_rx_cnt[3]), 
            .Z(n10)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i2_2_lut_3_lut.init = 16'hf7f7;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_37 (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), 
            .C(uart_rx_bit[2]), .D(n6682), .Z(n6320)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(70[4:28])
    defparam i1_2_lut_3_lut_4_lut_adj_37.init = 16'hfffe;
    FD1S3AX uart_rx_cnt_1091__i2 (.D(n3678), .CK(\uart_divider[0] ), .Q(uart_rx_cnt[2]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_1091__i2.GSR = "ENABLED";
    FD1S3AX uart_rx_cnt_1091__i3 (.D(n3676), .CK(\uart_divider[0] ), .Q(uart_rx_cnt[3]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_1091__i3.GSR = "ENABLED";
    FD1S3AX uart_rx_cnt_1091__i4 (.D(n3674), .CK(\uart_divider[0] ), .Q(uart_rx_cnt[4]));   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(35[17:30])
    defparam uart_rx_cnt_1091__i4.GSR = "ENABLED";
    PFUMX i2238 (.BLUT(n3673), .ALUT(n2[4]), .C0(n2197), .Z(n3674));
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_38 (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), 
            .C(uart_rx_bit[2]), .D(n6682), .Z(n6337)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(70[4:28])
    defparam i1_2_lut_3_lut_4_lut_adj_38.init = 16'hffef;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_39 (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), 
            .C(uart_rx_bit[2]), .D(n6682), .Z(n6296)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(70[4:28])
    defparam i1_2_lut_3_lut_4_lut_adj_39.init = 16'hfffb;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_40 (.A(uart_rx_bit[1]), .B(uart_rx_bit[0]), 
            .C(uart_rx_bit[2]), .D(n6682), .Z(n6336)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(70[4:28])
    defparam i1_2_lut_3_lut_4_lut_adj_40.init = 16'hffbf;
    ORCALUT4 i1_2_lut_rep_125 (.A(uart_rx_pin), .B(uart_rx_state[2]), .Z(n6719)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(102[6:22])
    defparam i1_2_lut_rep_125.init = 16'heeee;
    ORCALUT4 i2_2_lut_rep_92_3_lut_4_lut (.A(uart_rx_pin), .B(uart_rx_state[2]), 
            .C(uart_rx_state[0]), .D(uart_rx_state[1]), .Z(n6686)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(102[6:22])
    defparam i2_2_lut_rep_92_3_lut_4_lut.init = 16'hfffe;
    PFUMX i2212 (.BLUT(n3[4]), .ALUT(n3681), .C0(n6682), .Z(n3648));
    ORCALUT4 i3313_2_lut_3_lut_4_lut (.A(uart_rx_cnt[0]), .B(n6693), .C(uart_rx_tmp[7]), 
            .D(n6686), .Z(n3779)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(36[8:22])
    defparam i3313_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i2027_4_lut (.A(rx_pin_state), .B(uart_rx_tmp[6]), .C(n6312), 
            .D(n6679), .Z(n3463)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i2027_4_lut.init = 16'hca0a;
    ORCALUT4 i1_2_lut_rep_80_3_lut_4_lut (.A(uart_rx_cnt[0]), .B(n6693), 
            .C(uart_rx_rst), .D(n6686), .Z(n6674)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(36[8:22])
    defparam i1_2_lut_rep_80_3_lut_4_lut.init = 16'hf0f1;
    ORCALUT4 i2_3_lut_4_lut_4_lut (.A(n6695), .B(n6679), .C(n25), .D(n2177), 
            .Z(n6324)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'hffbf;
    ORCALUT4 i1_4_lut_4_lut (.A(uart_divider_0_enable_3), .B(n4), .C(n2184), 
            .D(n6708), .Z(n2197)) /* synthesis lut_function=(A (C+!(D))+!A (B+!(D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(51[6:22])
    defparam i1_4_lut_4_lut.init = 16'he4ff;
    ORCALUT4 i3405_2_lut_3_lut_4_lut (.A(uart_rx_cnt[0]), .B(n6693), .C(uart_rx_bit[4]), 
            .D(n6686), .Z(n3681)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(36[8:22])
    defparam i3405_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i2_3_lut_rep_134 (.A(\uart_rx_state[1] ), .B(\uart_rx_state[0] ), 
            .C(uart_rx_ready), .Z(n6728)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i2_3_lut_rep_134.init = 16'h0202;
    ORCALUT4 i3393_2_lut_3_lut_4_lut (.A(uart_rx_cnt[0]), .B(n6693), .C(uart_rx_tmp[3]), 
            .D(n6686), .Z(n3714)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(36[8:22])
    defparam i3393_2_lut_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 i2035_4_lut (.A(rx_pin_state), .B(uart_rx_tmp[4]), .C(n6337), 
            .D(n6679), .Z(n3471)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i2035_4_lut.init = 16'hca0a;
    ORCALUT4 i1_2_lut_rep_84_4_lut (.A(n6693), .B(uart_divider_0_enable_3), 
            .C(uart_rx_cnt[0]), .D(n6717), .Z(n6678)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(36[8:22])
    defparam i1_2_lut_rep_84_4_lut.init = 16'hbfff;
    ORCALUT4 i4_4_lut (.A(uart_rx_cnt[0]), .B(n6389), .C(rx_pin_state_N_686), 
            .D(n6), .Z(n2177)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i4_4_lut.init = 16'h1000;
    ORCALUT4 i2024_4_lut (.A(rx_pin_state), .B(n3779), .C(uart_rx_bit[0]), 
            .D(n6678), .Z(n3460)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i2024_4_lut.init = 16'hccac;
    ORCALUT4 i4942_4_lut (.A(n6707), .B(uart_rx_cnt[1]), .C(uart_rx_cnt[2]), 
            .D(uart_rx_cnt[4]), .Z(n6389)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4942_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(n6703), .B(n6719), .C(n6693), 
            .D(uart_rx_cnt[0]), .Z(n4)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(102[6:22])
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'h1110;
    ORCALUT4 i2038_4_lut (.A(rx_pin_state), .B(n3714), .C(uart_rx_bit[0]), 
            .D(n6673), .Z(n3474)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i2038_4_lut.init = 16'hccac;
    ORCALUT4 i4457_3_lut_4_lut (.A(uart_rx_cnt[2]), .B(n6710), .C(uart_rx_cnt[3]), 
            .D(uart_rx_cnt[4]), .Z(n2[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(35[17:30])
    defparam i4457_3_lut_4_lut.init = 16'h7f80;
    ORCALUT4 i4421_3_lut_4_lut (.A(uart_rx_bit[2]), .B(n6712), .C(uart_rx_bit[3]), 
            .D(uart_rx_bit[4]), .Z(n3[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(72[17:30])
    defparam i4421_3_lut_4_lut.init = 16'h7f80;
    ORCALUT4 i7_4_lut (.A(uart_divider_0_enable_3), .B(n14), .C(n10), 
            .D(uart_rx_bit[3]), .Z(n25)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(75[8:22])
    defparam i7_4_lut.init = 16'hfffd;
    ORCALUT4 i1_2_lut_adj_42 (.A(uart_rx_register[4]), .B(n6282), .Z(\cnt[5]_enable_73 )) /* synthesis lut_function=(A (B)) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i1_2_lut_adj_42.init = 16'h8888;
    ORCALUT4 i6_4_lut (.A(uart_rx_bit[4]), .B(uart_rx_cnt[4]), .C(uart_rx_bit[0]), 
            .D(n6687), .Z(n14)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(75[8:22])
    defparam i6_4_lut.init = 16'hefff;
    ORCALUT4 i2206_4_lut (.A(uart_rx_bit[1]), .B(n6679), .C(n6682), .D(uart_rx_bit[0]), 
            .Z(n3642)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+!(D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(72[17:30])
    defparam i2206_4_lut.init = 16'h858a;
    ORCALUT4 i2208_4_lut (.A(uart_rx_bit[2]), .B(n6679), .C(n6682), .D(n6712), 
            .Z(n3644)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+!(D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(72[17:30])
    defparam i2208_4_lut.init = 16'h858a;
    ORCALUT4 i2210_4_lut (.A(uart_rx_bit[3]), .B(n6679), .C(n6682), .D(n6690), 
            .Z(n3646)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A !(C+!(D))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(72[17:30])
    defparam i2210_4_lut.init = 16'h858a;
    ORCALUT4 i2244_4_lut (.A(uart_rx_cnt[1]), .B(uart_rx_cnt[0]), .C(n2197), 
            .D(n6711), .Z(n3680)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(35[17:30])
    defparam i2244_4_lut.init = 16'h6a60;
    ORCALUT4 i2_3_lut_rep_88_4_lut (.A(uart_rx_state[1]), .B(n6713), .C(uart_rx_cnt[0]), 
            .D(n6693), .Z(n6682)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(51[6:22])
    defparam i2_3_lut_rep_88_4_lut.init = 16'hffef;
    ORCALUT4 i2242_4_lut (.A(uart_rx_cnt[2]), .B(n6710), .C(n2197), .D(n6711), 
            .Z(n3678)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(35[17:30])
    defparam i2242_4_lut.init = 16'h6a60;
    ORCALUT4 i2240_4_lut (.A(uart_rx_cnt[3]), .B(n6688), .C(n2197), .D(n6711), 
            .Z(n3676)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(35[17:30])
    defparam i2240_4_lut.init = 16'h6a60;
    ORCALUT4 i5034_3_lut (.A(uart_rx_zero_cnt[4]), .B(uart_rx_zero_cnt[3]), 
            .C(uart_rx_zero_cnt[2]), .Z(rx_pin_state_N_686)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(63[4] 65[7])
    defparam i5034_3_lut.init = 16'h0101;
    ORCALUT4 i2032_4_lut (.A(rx_pin_state), .B(uart_rx_tmp[5]), .C(n6336), 
            .D(n6679), .Z(n3468)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // /home/jarin/storage/main/backup_mg/contest/tah/mm/proj/fpga/1/uart_rx.v(22[8] 110[5])
    defparam i2032_4_lut.init = 16'hca0a;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

