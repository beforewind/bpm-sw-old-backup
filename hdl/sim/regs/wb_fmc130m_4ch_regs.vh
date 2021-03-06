`define ADDR_WB_FMC_130M_4CH_CSR_FMC_STATUS 6'h0
`define WB_FMC_130M_4CH_CSR_FMC_STATUS_PRSNT_OFFSET 0
`define WB_FMC_130M_4CH_CSR_FMC_STATUS_PRSNT 32'h00000001
`define WB_FMC_130M_4CH_CSR_FMC_STATUS_PG_M2C_OFFSET 1
`define WB_FMC_130M_4CH_CSR_FMC_STATUS_PG_M2C 32'h00000002
`define WB_FMC_130M_4CH_CSR_FMC_STATUS_CLK_DIR_OFFSET 2
`define WB_FMC_130M_4CH_CSR_FMC_STATUS_CLK_DIR 32'h00000004
`define WB_FMC_130M_4CH_CSR_FMC_STATUS_FIRMWARE_ID_OFFSET 3
`define WB_FMC_130M_4CH_CSR_FMC_STATUS_FIRMWARE_ID 32'hfffffff8
`define ADDR_WB_FMC_130M_4CH_CSR_TRIGGER 6'h4
`define WB_FMC_130M_4CH_CSR_TRIGGER_DIR_OFFSET 0
`define WB_FMC_130M_4CH_CSR_TRIGGER_DIR 32'h00000001
`define WB_FMC_130M_4CH_CSR_TRIGGER_TERM_OFFSET 1
`define WB_FMC_130M_4CH_CSR_TRIGGER_TERM 32'h00000002
`define WB_FMC_130M_4CH_CSR_TRIGGER_TRIG_VAL_OFFSET 2
`define WB_FMC_130M_4CH_CSR_TRIGGER_TRIG_VAL 32'h00000004
`define WB_FMC_130M_4CH_CSR_TRIGGER_RESERVED_OFFSET 3
`define WB_FMC_130M_4CH_CSR_TRIGGER_RESERVED 32'hfffffff8
`define ADDR_WB_FMC_130M_4CH_CSR_ADC   6'h8
`define WB_FMC_130M_4CH_CSR_ADC_RAND_OFFSET 0
`define WB_FMC_130M_4CH_CSR_ADC_RAND 32'h00000001
`define WB_FMC_130M_4CH_CSR_ADC_DITH_OFFSET 1
`define WB_FMC_130M_4CH_CSR_ADC_DITH 32'h00000002
`define WB_FMC_130M_4CH_CSR_ADC_SHDN_OFFSET 2
`define WB_FMC_130M_4CH_CSR_ADC_SHDN 32'h00000004
`define WB_FMC_130M_4CH_CSR_ADC_PGA_OFFSET 3
`define WB_FMC_130M_4CH_CSR_ADC_PGA 32'h00000008
`define WB_FMC_130M_4CH_CSR_ADC_RESERVED_OFFSET 4
`define WB_FMC_130M_4CH_CSR_ADC_RESERVED 32'hfffffff0
`define ADDR_WB_FMC_130M_4CH_CSR_CLK_DISTRIB 6'hc
`define WB_FMC_130M_4CH_CSR_CLK_DISTRIB_SI571_OE_OFFSET 0
`define WB_FMC_130M_4CH_CSR_CLK_DISTRIB_SI571_OE 32'h00000001
`define WB_FMC_130M_4CH_CSR_CLK_DISTRIB_PLL_FUNCTION_OFFSET 1
`define WB_FMC_130M_4CH_CSR_CLK_DISTRIB_PLL_FUNCTION 32'h00000002
`define WB_FMC_130M_4CH_CSR_CLK_DISTRIB_PLL_STATUS_OFFSET 2
`define WB_FMC_130M_4CH_CSR_CLK_DISTRIB_PLL_STATUS 32'h00000004
`define WB_FMC_130M_4CH_CSR_CLK_DISTRIB_CLK_SEL_OFFSET 3
`define WB_FMC_130M_4CH_CSR_CLK_DISTRIB_CLK_SEL 32'h00000008
`define WB_FMC_130M_4CH_CSR_CLK_DISTRIB_RESERVED_OFFSET 4
`define WB_FMC_130M_4CH_CSR_CLK_DISTRIB_RESERVED 32'hfffffff0
`define ADDR_WB_FMC_130M_4CH_CSR_MONITOR 6'h10
`define WB_FMC_130M_4CH_CSR_MONITOR_TEMP_ALARM_OFFSET 0
`define WB_FMC_130M_4CH_CSR_MONITOR_TEMP_ALARM 32'h00000001
`define WB_FMC_130M_4CH_CSR_MONITOR_LED1_OFFSET 1
`define WB_FMC_130M_4CH_CSR_MONITOR_LED1 32'h00000002
`define WB_FMC_130M_4CH_CSR_MONITOR_LED2_OFFSET 2
`define WB_FMC_130M_4CH_CSR_MONITOR_LED2 32'h00000004
`define WB_FMC_130M_4CH_CSR_MONITOR_LED3_OFFSET 3
`define WB_FMC_130M_4CH_CSR_MONITOR_LED3 32'h00000008
`define WB_FMC_130M_4CH_CSR_MONITOR_RESERVED_OFFSET 4
`define WB_FMC_130M_4CH_CSR_MONITOR_RESERVED 32'hfffffff0
`define ADDR_WB_FMC_130M_4CH_CSR_FPGA_CTRL 6'h14
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_FMC_IDELAY_RST_OFFSET 0
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_FMC_IDELAY_RST 32'h00000001
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_FMC_FIFO_RST_OFFSET 1
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_FMC_FIFO_RST 32'h00000002
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_FMC_IDELAY0_RDY_OFFSET 2
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_FMC_IDELAY0_RDY 32'h00000004
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_FMC_IDELAY1_RDY_OFFSET 3
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_FMC_IDELAY1_RDY 32'h00000008
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_FMC_IDELAY2_RDY_OFFSET 4
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_FMC_IDELAY2_RDY 32'h00000010
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_FMC_IDELAY3_RDY_OFFSET 5
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_FMC_IDELAY3_RDY 32'h00000020
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_RESERVED1_OFFSET 6
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_RESERVED1 32'h000000c0
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_TEST_DATA_EN_OFFSET 8
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_TEST_DATA_EN 32'h00000100
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_RESERVED2_OFFSET 9
`define WB_FMC_130M_4CH_CSR_FPGA_CTRL_RESERVED2 32'hfffffe00
`define ADDR_WB_FMC_130M_4CH_CSR_IDELAY0_CAL 6'h18
`define WB_FMC_130M_4CH_CSR_IDELAY0_CAL_UPDATE_OFFSET 0
`define WB_FMC_130M_4CH_CSR_IDELAY0_CAL_UPDATE 32'h00000001
`define WB_FMC_130M_4CH_CSR_IDELAY0_CAL_LINE_OFFSET 1
`define WB_FMC_130M_4CH_CSR_IDELAY0_CAL_LINE 32'h0003fffe
`define WB_FMC_130M_4CH_CSR_IDELAY0_CAL_VAL_OFFSET 18
`define WB_FMC_130M_4CH_CSR_IDELAY0_CAL_VAL 32'h007c0000
`define WB_FMC_130M_4CH_CSR_IDELAY0_CAL_RESERVED_OFFSET 23
`define WB_FMC_130M_4CH_CSR_IDELAY0_CAL_RESERVED 32'hff800000
`define ADDR_WB_FMC_130M_4CH_CSR_IDELAY1_CAL 6'h1c
`define WB_FMC_130M_4CH_CSR_IDELAY1_CAL_UPDATE_OFFSET 0
`define WB_FMC_130M_4CH_CSR_IDELAY1_CAL_UPDATE 32'h00000001
`define WB_FMC_130M_4CH_CSR_IDELAY1_CAL_LINE_OFFSET 1
`define WB_FMC_130M_4CH_CSR_IDELAY1_CAL_LINE 32'h0003fffe
`define WB_FMC_130M_4CH_CSR_IDELAY1_CAL_VAL_OFFSET 18
`define WB_FMC_130M_4CH_CSR_IDELAY1_CAL_VAL 32'h007c0000
`define WB_FMC_130M_4CH_CSR_IDELAY1_CAL_RESERVED_OFFSET 23
`define WB_FMC_130M_4CH_CSR_IDELAY1_CAL_RESERVED 32'hff800000
`define ADDR_WB_FMC_130M_4CH_CSR_IDELAY2_CAL 6'h20
`define WB_FMC_130M_4CH_CSR_IDELAY2_CAL_UPDATE_OFFSET 0
`define WB_FMC_130M_4CH_CSR_IDELAY2_CAL_UPDATE 32'h00000001
`define WB_FMC_130M_4CH_CSR_IDELAY2_CAL_LINE_OFFSET 1
`define WB_FMC_130M_4CH_CSR_IDELAY2_CAL_LINE 32'h0003fffe
`define WB_FMC_130M_4CH_CSR_IDELAY2_CAL_VAL_OFFSET 18
`define WB_FMC_130M_4CH_CSR_IDELAY2_CAL_VAL 32'h007c0000
`define WB_FMC_130M_4CH_CSR_IDELAY2_CAL_RESERVED_OFFSET 23
`define WB_FMC_130M_4CH_CSR_IDELAY2_CAL_RESERVED 32'hff800000
`define ADDR_WB_FMC_130M_4CH_CSR_IDELAY3_CAL 6'h24
`define WB_FMC_130M_4CH_CSR_IDELAY3_CAL_UPDATE_OFFSET 0
`define WB_FMC_130M_4CH_CSR_IDELAY3_CAL_UPDATE 32'h00000001
`define WB_FMC_130M_4CH_CSR_IDELAY3_CAL_LINE_OFFSET 1
`define WB_FMC_130M_4CH_CSR_IDELAY3_CAL_LINE 32'h0003fffe
`define WB_FMC_130M_4CH_CSR_IDELAY3_CAL_VAL_OFFSET 18
`define WB_FMC_130M_4CH_CSR_IDELAY3_CAL_VAL 32'h007c0000
`define WB_FMC_130M_4CH_CSR_IDELAY3_CAL_RESERVED_OFFSET 23
`define WB_FMC_130M_4CH_CSR_IDELAY3_CAL_RESERVED 32'hff800000
`define ADDR_WB_FMC_130M_4CH_CSR_DATA0 6'h28
`define WB_FMC_130M_4CH_CSR_DATA0_VAL_OFFSET 0
`define WB_FMC_130M_4CH_CSR_DATA0_VAL 32'hffffffff
`define ADDR_WB_FMC_130M_4CH_CSR_DATA1 6'h2c
`define WB_FMC_130M_4CH_CSR_DATA1_VAL_OFFSET 0
`define WB_FMC_130M_4CH_CSR_DATA1_VAL 32'hffffffff
`define ADDR_WB_FMC_130M_4CH_CSR_DATA2 6'h30
`define WB_FMC_130M_4CH_CSR_DATA2_VAL_OFFSET 0
`define WB_FMC_130M_4CH_CSR_DATA2_VAL 32'hffffffff
`define ADDR_WB_FMC_130M_4CH_CSR_DATA3 6'h34
`define WB_FMC_130M_4CH_CSR_DATA3_VAL_OFFSET 0
`define WB_FMC_130M_4CH_CSR_DATA3_VAL 32'hffffffff
`define ADDR_WB_FMC_130M_4CH_CSR_DCM   6'h38
`define WB_FMC_130M_4CH_CSR_DCM_ADC_EN_OFFSET 0
`define WB_FMC_130M_4CH_CSR_DCM_ADC_EN 32'h00000001
`define WB_FMC_130M_4CH_CSR_DCM_ADC_PHASE_OFFSET 1
`define WB_FMC_130M_4CH_CSR_DCM_ADC_PHASE 32'h00000002
`define WB_FMC_130M_4CH_CSR_DCM_ADC_DONE_OFFSET 2
`define WB_FMC_130M_4CH_CSR_DCM_ADC_DONE 32'h00000004
`define WB_FMC_130M_4CH_CSR_DCM_ADC_STATUS0_OFFSET 3
`define WB_FMC_130M_4CH_CSR_DCM_ADC_STATUS0 32'h00000008
`define WB_FMC_130M_4CH_CSR_DCM_ADC_RESET_OFFSET 4
`define WB_FMC_130M_4CH_CSR_DCM_ADC_RESET 32'h00000010
`define WB_FMC_130M_4CH_CSR_DCM_RESERVED_OFFSET 5
`define WB_FMC_130M_4CH_CSR_DCM_RESERVED 32'hffffffe0
