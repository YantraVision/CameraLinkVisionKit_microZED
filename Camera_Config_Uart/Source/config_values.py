Top_config = {
               'line_area'	:0x1,
               'capture'	:0x1,
               'mode'		:0x0,
               'bit_mode'	:0x0,
               'data_format'	:0x1,      # 0 MONO 1 RGB 2RGBI
               'per_clk_line'	:0x1,      # 0 perline 1 perclock
               'width'		:0x1000,
               'width_dual'	:0x1000,
               'height'		:0x64,
               'height_dual'	:0x64,
               'frm_vld'	:0x19,
               'line_vld'	:0x18,
               'data_vld'	:0x1a,
               'l_vld_avail'	:0x00,
               'f_vld_avail'	:0x00,
               'd_vld_avail'	:0x1,
               'l_vld_avail_d'	:0x00,
               'f_vld_avail_d'	:0x00,
               'd_vld_avail_d'	:0x1,
               'sw_enable'	:0x1,
               'yv_key'		:0x4e1e8282
             }

X_config   = {
               'bitslip0'	:00,
               'bitslip1'	:00,
               'bitslip2'	:00,
               'bitslip3'	:00,
               'clk_bitslip'	:00
             }

Y_config   = {
               'bitslip0'	:00,
               'bitslip1'	:00,
               'bitslip2'	:00,
               'bitslip3'	:00,
               'clk_bitslip'	:00
             }

Z_config   = {
               'bitslip0'	:00,
               'bitslip1'	:00,
               'bitslip2'	:00,
               'bitslip3'	:00,
               'clk_bitslip'	:00
             }

GPIO_addr = {
               'X_bitslip'		:0x0b0,
               'Y_bitslip'		:0x0b8,
               'Z_bitslip'		:0x0c0,
               'config_cam_mode'	:0x0c8,
               'config_val_bits'	:0x0d0,
               'config_per_clk_line'	:0x0d8,
               'config_frame_size'	:0x0e0,
               'config_frame_size_dual'	:0x0e8,
               'config_avail_vals'	:0x0f0,
               'sw_enable'		:0x0f8,
               'yv_key'			:0x100,
               'fifo_reset'		:0x108,
               'Xclk_pattern_px_rdy'	:0x010,   # 0 px_rdy  7:1 pattern
               'Yclk_pattern_px_rdy'	:0x018,
               'Zclk_pattern_px_rdy'	:0x020,
               'clk_tap_out'		:0x028,   # 5 bit each
               'data_tap_out'		:0x030,   # 5 bit each
               'X_tap_range'		:0x038,
               'Y_tap_range'		:0x040,
               'Z_tap_range'		:0x048,
               'tap_range_min'		:0x050,   # 5 bit each
               'tap_range_max'		:0x058,   # 5 bit each
               'tap_range_avg'		:0x060,   # 6 bit each
               'dna_high'		:0x068,
               'dna_low'		:0x070,
               'enable_soc'		:0x078,
               'dna_lower32'		:0x080,
               'dna_upper32'		:0x088
            }
