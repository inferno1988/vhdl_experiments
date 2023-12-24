-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "12/20/2023 18:26:17"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	experiments IS
    PORT (
	i_clock : IN std_logic;
	i_switch_1 : IN std_logic;
	i_switch_2 : IN std_logic;
	o_segments : OUT std_logic_vector(7 DOWNTO 0);
	o_digit_en : OUT std_logic_vector(3 DOWNTO 0)
	);
END experiments;

-- Design Ports Information
-- i_switch_1	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_switch_2	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_segments[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_segments[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_segments[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_segments[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_segments[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_segments[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_segments[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_segments[7]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_digit_en[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_digit_en[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_digit_en[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_digit_en[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF experiments IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_switch_1 : std_logic;
SIGNAL ww_i_switch_2 : std_logic;
SIGNAL ww_o_segments : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_digit_en : std_logic_vector(3 DOWNTO 0);
SIGNAL \display_clock|o_pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \slow_clock|o_pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_switch_1~input_o\ : std_logic;
SIGNAL \i_switch_2~input_o\ : std_logic;
SIGNAL \o_segments[0]~output_o\ : std_logic;
SIGNAL \o_segments[1]~output_o\ : std_logic;
SIGNAL \o_segments[2]~output_o\ : std_logic;
SIGNAL \o_segments[3]~output_o\ : std_logic;
SIGNAL \o_segments[4]~output_o\ : std_logic;
SIGNAL \o_segments[5]~output_o\ : std_logic;
SIGNAL \o_segments[6]~output_o\ : std_logic;
SIGNAL \o_segments[7]~output_o\ : std_logic;
SIGNAL \o_digit_en[0]~output_o\ : std_logic;
SIGNAL \o_digit_en[1]~output_o\ : std_logic;
SIGNAL \o_digit_en[2]~output_o\ : std_logic;
SIGNAL \o_digit_en[3]~output_o\ : std_logic;
SIGNAL \i_clock~input_o\ : std_logic;
SIGNAL \i_clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[0]~0_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[0]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[1]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[1]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[1]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[2]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[2]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[2]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[3]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[3]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[3]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[4]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[4]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[4]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[5]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[5]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[5]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[6]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[6]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[6]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[7]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[7]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[7]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[8]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[8]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[8]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[9]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[9]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[9]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[10]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[10]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[10]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[11]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[11]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[11]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[12]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[12]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[12]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[13]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[13]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[13]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[14]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[14]~q\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[14]~2\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[15]~1_combout\ : std_logic;
SIGNAL \display_clock|slow_clock:scnt[15]~q\ : std_logic;
SIGNAL \display_clock|o_pulse~feeder_combout\ : std_logic;
SIGNAL \display_clock|o_pulse~q\ : std_logic;
SIGNAL \display_clock|o_pulse~clkctrl_outclk\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~2_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~4_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~6_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~8_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~10_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~12_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~14_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~16_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~18_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~20_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~22_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~24_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~26_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~28_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~30_cout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~31_combout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~q\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[16]~32\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[17]~1_combout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[17]~q\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[17]~2\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[18]~1_combout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[18]~q\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[18]~2\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[19]~1_combout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[19]~q\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[19]~2\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[20]~1_combout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[20]~q\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[20]~2\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[21]~1_combout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[21]~q\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[21]~2\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[22]~1_combout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[22]~q\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[22]~2\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[23]~1_combout\ : std_logic;
SIGNAL \slow_clock|slow_clock:scnt[23]~q\ : std_logic;
SIGNAL \slow_clock|o_pulse~feeder_combout\ : std_logic;
SIGNAL \slow_clock|o_pulse~q\ : std_logic;
SIGNAL \slow_clock|o_pulse~clkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~33_combout\ : std_logic;
SIGNAL \counter[1]~11_combout\ : std_logic;
SIGNAL \counter[1]~12\ : std_logic;
SIGNAL \counter[2]~13_combout\ : std_logic;
SIGNAL \counter[2]~14\ : std_logic;
SIGNAL \counter[3]~15_combout\ : std_logic;
SIGNAL \counter[3]~16\ : std_logic;
SIGNAL \counter[4]~17_combout\ : std_logic;
SIGNAL \counter[4]~18\ : std_logic;
SIGNAL \counter[5]~19_combout\ : std_logic;
SIGNAL \counter[5]~20\ : std_logic;
SIGNAL \counter[6]~21_combout\ : std_logic;
SIGNAL \counter[6]~22\ : std_logic;
SIGNAL \counter[7]~23_combout\ : std_logic;
SIGNAL \counter[7]~24\ : std_logic;
SIGNAL \counter[8]~25_combout\ : std_logic;
SIGNAL \counter[8]~26\ : std_logic;
SIGNAL \counter[9]~27_combout\ : std_logic;
SIGNAL \counter[9]~28\ : std_logic;
SIGNAL \counter[10]~29_combout\ : std_logic;
SIGNAL \counter[10]~30\ : std_logic;
SIGNAL \counter[11]~31_combout\ : std_logic;
SIGNAL \bcd~9_combout\ : std_logic;
SIGNAL \bcd~10_combout\ : std_logic;
SIGNAL \bcd~11_combout\ : std_logic;
SIGNAL \bcd~65_combout\ : std_logic;
SIGNAL \bcd~66_combout\ : std_logic;
SIGNAL \bcd~15_combout\ : std_logic;
SIGNAL \bcd~14_combout\ : std_logic;
SIGNAL \bcd~13_combout\ : std_logic;
SIGNAL \bcd~16_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \bcd~27_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \bcd~21_combout\ : std_logic;
SIGNAL \bcd~20_combout\ : std_logic;
SIGNAL \bcd~23_combout\ : std_logic;
SIGNAL \bcd~24_combout\ : std_logic;
SIGNAL \bcd~22_combout\ : std_logic;
SIGNAL \bcd~25_combout\ : std_logic;
SIGNAL \bcd~12_combout\ : std_logic;
SIGNAL \bcd~17_combout\ : std_logic;
SIGNAL \bcd~18_combout\ : std_logic;
SIGNAL \bcd~19_combout\ : std_logic;
SIGNAL \bcd~26_combout\ : std_logic;
SIGNAL \bcd~36_combout\ : std_logic;
SIGNAL \bcd~37_combout\ : std_logic;
SIGNAL \bcd~38_combout\ : std_logic;
SIGNAL \bcd~29_combout\ : std_logic;
SIGNAL \bcd~32_combout\ : std_logic;
SIGNAL \bcd~31_combout\ : std_logic;
SIGNAL \bcd~33_combout\ : std_logic;
SIGNAL \bcd~34_combout\ : std_logic;
SIGNAL \bcd~28_combout\ : std_logic;
SIGNAL \bcd~30_combout\ : std_logic;
SIGNAL \bcd~35_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \bcd~39_combout\ : std_logic;
SIGNAL \bcd~3_combout\ : std_logic;
SIGNAL \bcd~67_combout\ : std_logic;
SIGNAL \bcd~62_combout\ : std_logic;
SIGNAL \bcd~63_combout\ : std_logic;
SIGNAL \bcd~45_combout\ : std_logic;
SIGNAL \bcd~44_combout\ : std_logic;
SIGNAL \bcd~43_combout\ : std_logic;
SIGNAL \bcd~46_combout\ : std_logic;
SIGNAL \bcd~42_combout\ : std_logic;
SIGNAL \bcd~41_combout\ : std_logic;
SIGNAL \bcd~40_combout\ : std_logic;
SIGNAL \bcd~47_combout\ : std_logic;
SIGNAL \bcd~48_combout\ : std_logic;
SIGNAL \Add14~3_combout\ : std_logic;
SIGNAL \bcd~49_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \digit_selector:digit_counter[1]~0_combout\ : std_logic;
SIGNAL \digit_selector:digit_counter[1]~q\ : std_logic;
SIGNAL \digit_selector:digit_counter[2]~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \digit_selector:digit_counter[0]~q\ : std_logic;
SIGNAL \digit_selector:digit_counter[3]~q\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \bcd~52_combout\ : std_logic;
SIGNAL \bcd~51_combout\ : std_logic;
SIGNAL \bcd~50_combout\ : std_logic;
SIGNAL \bcd~56_combout\ : std_logic;
SIGNAL \bcd~57_combout\ : std_logic;
SIGNAL \bcd~58_combout\ : std_logic;
SIGNAL \bcd~59_combout\ : std_logic;
SIGNAL \bcd~60_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \bcd~53_combout\ : std_logic;
SIGNAL \bcd~55_combout\ : std_logic;
SIGNAL \bcd~54_combout\ : std_logic;
SIGNAL \bcd~61_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \bcd~64_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Add17~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \bcd_coverter|Mux6~0_combout\ : std_logic;
SIGNAL \bcd_coverter|Mux5~0_combout\ : std_logic;
SIGNAL \bcd_coverter|Mux4~0_combout\ : std_logic;
SIGNAL \bcd_coverter|Mux3~0_combout\ : std_logic;
SIGNAL \bcd_coverter|Mux2~0_combout\ : std_logic;
SIGNAL \bcd_coverter|Mux1~0_combout\ : std_logic;
SIGNAL \bcd_coverter|Mux0~0_combout\ : std_logic;
SIGNAL \o_digit_en[0]~0_combout\ : std_logic;
SIGNAL \o_digit_en[0]~reg0_q\ : std_logic;
SIGNAL \o_digit_en[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_digit_en[1]~reg0_q\ : std_logic;
SIGNAL \o_digit_en[2]~reg0_q\ : std_logic;
SIGNAL \o_digit_en[3]~reg0_q\ : std_logic;
SIGNAL w_bcd : std_logic_vector(3 DOWNTO 0);
SIGNAL counter : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_o_digit_en[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_o_digit_en[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_o_digit_en[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_o_digit_en[0]~reg0_q\ : std_logic;
SIGNAL \bcd_coverter|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clock <= i_clock;
ww_i_switch_1 <= i_switch_1;
ww_i_switch_2 <= i_switch_2;
o_segments <= ww_o_segments;
o_digit_en <= ww_o_digit_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\display_clock|o_pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \display_clock|o_pulse~q\);

\slow_clock|o_pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \slow_clock|o_pulse~q\);

\i_clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clock~input_o\);
\ALT_INV_o_digit_en[3]~reg0_q\ <= NOT \o_digit_en[3]~reg0_q\;
\ALT_INV_o_digit_en[2]~reg0_q\ <= NOT \o_digit_en[2]~reg0_q\;
\ALT_INV_o_digit_en[1]~reg0_q\ <= NOT \o_digit_en[1]~reg0_q\;
\ALT_INV_o_digit_en[0]~reg0_q\ <= NOT \o_digit_en[0]~reg0_q\;
\bcd_coverter|ALT_INV_Mux0~0_combout\ <= NOT \bcd_coverter|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y24_N16
\o_segments[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_coverter|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \o_segments[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\o_segments[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_coverter|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \o_segments[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\o_segments[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_coverter|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \o_segments[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\o_segments[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_coverter|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \o_segments[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\o_segments[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_coverter|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \o_segments[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\o_segments[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_coverter|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \o_segments[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\o_segments[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_coverter|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \o_segments[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\o_segments[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_segments[7]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\o_digit_en[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_digit_en[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_digit_en[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\o_digit_en[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_digit_en[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_digit_en[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\o_digit_en[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_digit_en[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_digit_en[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\o_digit_en[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_digit_en[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_digit_en[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\i_clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clock,
	o => \i_clock~input_o\);

-- Location: CLKCTRL_G2
\i_clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y15_N4
\display_clock|slow_clock:scnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[0]~0_combout\ = !\display_clock|slow_clock:scnt[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_clock|slow_clock:scnt[0]~q\,
	combout => \display_clock|slow_clock:scnt[0]~0_combout\);

-- Location: FF_X33_Y15_N5
\display_clock|slow_clock:scnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[0]~q\);

-- Location: LCCOMB_X32_Y15_N2
\display_clock|slow_clock:scnt[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[1]~1_combout\ = (\display_clock|slow_clock:scnt[0]~q\ & (\display_clock|slow_clock:scnt[1]~q\ $ (VCC))) # (!\display_clock|slow_clock:scnt[0]~q\ & (\display_clock|slow_clock:scnt[1]~q\ & VCC))
-- \display_clock|slow_clock:scnt[1]~2\ = CARRY((\display_clock|slow_clock:scnt[0]~q\ & \display_clock|slow_clock:scnt[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[0]~q\,
	datab => \display_clock|slow_clock:scnt[1]~q\,
	datad => VCC,
	combout => \display_clock|slow_clock:scnt[1]~1_combout\,
	cout => \display_clock|slow_clock:scnt[1]~2\);

-- Location: FF_X32_Y15_N3
\display_clock|slow_clock:scnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[1]~q\);

-- Location: LCCOMB_X32_Y15_N4
\display_clock|slow_clock:scnt[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[2]~1_combout\ = (\display_clock|slow_clock:scnt[2]~q\ & (!\display_clock|slow_clock:scnt[1]~2\)) # (!\display_clock|slow_clock:scnt[2]~q\ & ((\display_clock|slow_clock:scnt[1]~2\) # (GND)))
-- \display_clock|slow_clock:scnt[2]~2\ = CARRY((!\display_clock|slow_clock:scnt[1]~2\) # (!\display_clock|slow_clock:scnt[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[2]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[1]~2\,
	combout => \display_clock|slow_clock:scnt[2]~1_combout\,
	cout => \display_clock|slow_clock:scnt[2]~2\);

-- Location: FF_X32_Y15_N5
\display_clock|slow_clock:scnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[2]~q\);

-- Location: LCCOMB_X32_Y15_N6
\display_clock|slow_clock:scnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[3]~1_combout\ = (\display_clock|slow_clock:scnt[3]~q\ & (\display_clock|slow_clock:scnt[2]~2\ $ (GND))) # (!\display_clock|slow_clock:scnt[3]~q\ & (!\display_clock|slow_clock:scnt[2]~2\ & VCC))
-- \display_clock|slow_clock:scnt[3]~2\ = CARRY((\display_clock|slow_clock:scnt[3]~q\ & !\display_clock|slow_clock:scnt[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[3]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[2]~2\,
	combout => \display_clock|slow_clock:scnt[3]~1_combout\,
	cout => \display_clock|slow_clock:scnt[3]~2\);

-- Location: FF_X32_Y15_N7
\display_clock|slow_clock:scnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[3]~q\);

-- Location: LCCOMB_X32_Y15_N8
\display_clock|slow_clock:scnt[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[4]~1_combout\ = (\display_clock|slow_clock:scnt[4]~q\ & (!\display_clock|slow_clock:scnt[3]~2\)) # (!\display_clock|slow_clock:scnt[4]~q\ & ((\display_clock|slow_clock:scnt[3]~2\) # (GND)))
-- \display_clock|slow_clock:scnt[4]~2\ = CARRY((!\display_clock|slow_clock:scnt[3]~2\) # (!\display_clock|slow_clock:scnt[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[4]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[3]~2\,
	combout => \display_clock|slow_clock:scnt[4]~1_combout\,
	cout => \display_clock|slow_clock:scnt[4]~2\);

-- Location: FF_X32_Y15_N9
\display_clock|slow_clock:scnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[4]~q\);

-- Location: LCCOMB_X32_Y15_N10
\display_clock|slow_clock:scnt[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[5]~1_combout\ = (\display_clock|slow_clock:scnt[5]~q\ & (\display_clock|slow_clock:scnt[4]~2\ $ (GND))) # (!\display_clock|slow_clock:scnt[5]~q\ & (!\display_clock|slow_clock:scnt[4]~2\ & VCC))
-- \display_clock|slow_clock:scnt[5]~2\ = CARRY((\display_clock|slow_clock:scnt[5]~q\ & !\display_clock|slow_clock:scnt[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[5]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[4]~2\,
	combout => \display_clock|slow_clock:scnt[5]~1_combout\,
	cout => \display_clock|slow_clock:scnt[5]~2\);

-- Location: FF_X32_Y15_N11
\display_clock|slow_clock:scnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[5]~q\);

-- Location: LCCOMB_X32_Y15_N12
\display_clock|slow_clock:scnt[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[6]~1_combout\ = (\display_clock|slow_clock:scnt[6]~q\ & (!\display_clock|slow_clock:scnt[5]~2\)) # (!\display_clock|slow_clock:scnt[6]~q\ & ((\display_clock|slow_clock:scnt[5]~2\) # (GND)))
-- \display_clock|slow_clock:scnt[6]~2\ = CARRY((!\display_clock|slow_clock:scnt[5]~2\) # (!\display_clock|slow_clock:scnt[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[6]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[5]~2\,
	combout => \display_clock|slow_clock:scnt[6]~1_combout\,
	cout => \display_clock|slow_clock:scnt[6]~2\);

-- Location: FF_X32_Y15_N13
\display_clock|slow_clock:scnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[6]~q\);

-- Location: LCCOMB_X32_Y15_N14
\display_clock|slow_clock:scnt[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[7]~1_combout\ = (\display_clock|slow_clock:scnt[7]~q\ & (\display_clock|slow_clock:scnt[6]~2\ $ (GND))) # (!\display_clock|slow_clock:scnt[7]~q\ & (!\display_clock|slow_clock:scnt[6]~2\ & VCC))
-- \display_clock|slow_clock:scnt[7]~2\ = CARRY((\display_clock|slow_clock:scnt[7]~q\ & !\display_clock|slow_clock:scnt[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[7]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[6]~2\,
	combout => \display_clock|slow_clock:scnt[7]~1_combout\,
	cout => \display_clock|slow_clock:scnt[7]~2\);

-- Location: FF_X32_Y15_N15
\display_clock|slow_clock:scnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[7]~q\);

-- Location: LCCOMB_X32_Y15_N16
\display_clock|slow_clock:scnt[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[8]~1_combout\ = (\display_clock|slow_clock:scnt[8]~q\ & (!\display_clock|slow_clock:scnt[7]~2\)) # (!\display_clock|slow_clock:scnt[8]~q\ & ((\display_clock|slow_clock:scnt[7]~2\) # (GND)))
-- \display_clock|slow_clock:scnt[8]~2\ = CARRY((!\display_clock|slow_clock:scnt[7]~2\) # (!\display_clock|slow_clock:scnt[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[8]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[7]~2\,
	combout => \display_clock|slow_clock:scnt[8]~1_combout\,
	cout => \display_clock|slow_clock:scnt[8]~2\);

-- Location: FF_X32_Y15_N17
\display_clock|slow_clock:scnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[8]~q\);

-- Location: LCCOMB_X32_Y15_N18
\display_clock|slow_clock:scnt[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[9]~1_combout\ = (\display_clock|slow_clock:scnt[9]~q\ & (\display_clock|slow_clock:scnt[8]~2\ $ (GND))) # (!\display_clock|slow_clock:scnt[9]~q\ & (!\display_clock|slow_clock:scnt[8]~2\ & VCC))
-- \display_clock|slow_clock:scnt[9]~2\ = CARRY((\display_clock|slow_clock:scnt[9]~q\ & !\display_clock|slow_clock:scnt[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[9]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[8]~2\,
	combout => \display_clock|slow_clock:scnt[9]~1_combout\,
	cout => \display_clock|slow_clock:scnt[9]~2\);

-- Location: FF_X32_Y15_N19
\display_clock|slow_clock:scnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[9]~q\);

-- Location: LCCOMB_X32_Y15_N20
\display_clock|slow_clock:scnt[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[10]~1_combout\ = (\display_clock|slow_clock:scnt[10]~q\ & (!\display_clock|slow_clock:scnt[9]~2\)) # (!\display_clock|slow_clock:scnt[10]~q\ & ((\display_clock|slow_clock:scnt[9]~2\) # (GND)))
-- \display_clock|slow_clock:scnt[10]~2\ = CARRY((!\display_clock|slow_clock:scnt[9]~2\) # (!\display_clock|slow_clock:scnt[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[10]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[9]~2\,
	combout => \display_clock|slow_clock:scnt[10]~1_combout\,
	cout => \display_clock|slow_clock:scnt[10]~2\);

-- Location: FF_X32_Y15_N21
\display_clock|slow_clock:scnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[10]~q\);

-- Location: LCCOMB_X32_Y15_N22
\display_clock|slow_clock:scnt[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[11]~1_combout\ = (\display_clock|slow_clock:scnt[11]~q\ & (\display_clock|slow_clock:scnt[10]~2\ $ (GND))) # (!\display_clock|slow_clock:scnt[11]~q\ & (!\display_clock|slow_clock:scnt[10]~2\ & VCC))
-- \display_clock|slow_clock:scnt[11]~2\ = CARRY((\display_clock|slow_clock:scnt[11]~q\ & !\display_clock|slow_clock:scnt[10]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[11]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[10]~2\,
	combout => \display_clock|slow_clock:scnt[11]~1_combout\,
	cout => \display_clock|slow_clock:scnt[11]~2\);

-- Location: FF_X32_Y15_N23
\display_clock|slow_clock:scnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[11]~q\);

-- Location: LCCOMB_X32_Y15_N24
\display_clock|slow_clock:scnt[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[12]~1_combout\ = (\display_clock|slow_clock:scnt[12]~q\ & (!\display_clock|slow_clock:scnt[11]~2\)) # (!\display_clock|slow_clock:scnt[12]~q\ & ((\display_clock|slow_clock:scnt[11]~2\) # (GND)))
-- \display_clock|slow_clock:scnt[12]~2\ = CARRY((!\display_clock|slow_clock:scnt[11]~2\) # (!\display_clock|slow_clock:scnt[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[12]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[11]~2\,
	combout => \display_clock|slow_clock:scnt[12]~1_combout\,
	cout => \display_clock|slow_clock:scnt[12]~2\);

-- Location: FF_X32_Y15_N25
\display_clock|slow_clock:scnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[12]~q\);

-- Location: LCCOMB_X32_Y15_N26
\display_clock|slow_clock:scnt[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[13]~1_combout\ = (\display_clock|slow_clock:scnt[13]~q\ & (\display_clock|slow_clock:scnt[12]~2\ $ (GND))) # (!\display_clock|slow_clock:scnt[13]~q\ & (!\display_clock|slow_clock:scnt[12]~2\ & VCC))
-- \display_clock|slow_clock:scnt[13]~2\ = CARRY((\display_clock|slow_clock:scnt[13]~q\ & !\display_clock|slow_clock:scnt[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[13]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[12]~2\,
	combout => \display_clock|slow_clock:scnt[13]~1_combout\,
	cout => \display_clock|slow_clock:scnt[13]~2\);

-- Location: FF_X32_Y15_N27
\display_clock|slow_clock:scnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[13]~q\);

-- Location: LCCOMB_X32_Y15_N28
\display_clock|slow_clock:scnt[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[14]~1_combout\ = (\display_clock|slow_clock:scnt[14]~q\ & (!\display_clock|slow_clock:scnt[13]~2\)) # (!\display_clock|slow_clock:scnt[14]~q\ & ((\display_clock|slow_clock:scnt[13]~2\) # (GND)))
-- \display_clock|slow_clock:scnt[14]~2\ = CARRY((!\display_clock|slow_clock:scnt[13]~2\) # (!\display_clock|slow_clock:scnt[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[14]~q\,
	datad => VCC,
	cin => \display_clock|slow_clock:scnt[13]~2\,
	combout => \display_clock|slow_clock:scnt[14]~1_combout\,
	cout => \display_clock|slow_clock:scnt[14]~2\);

-- Location: FF_X32_Y15_N29
\display_clock|slow_clock:scnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[14]~q\);

-- Location: LCCOMB_X32_Y15_N30
\display_clock|slow_clock:scnt[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|slow_clock:scnt[15]~1_combout\ = \display_clock|slow_clock:scnt[15]~q\ $ (!\display_clock|slow_clock:scnt[14]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[15]~q\,
	cin => \display_clock|slow_clock:scnt[14]~2\,
	combout => \display_clock|slow_clock:scnt[15]~1_combout\);

-- Location: FF_X32_Y15_N31
\display_clock|slow_clock:scnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|slow_clock:scnt[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|slow_clock:scnt[15]~q\);

-- Location: LCCOMB_X33_Y12_N2
\display_clock|o_pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \display_clock|o_pulse~feeder_combout\ = \display_clock|slow_clock:scnt[15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \display_clock|slow_clock:scnt[15]~q\,
	combout => \display_clock|o_pulse~feeder_combout\);

-- Location: FF_X33_Y12_N3
\display_clock|o_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \display_clock|o_pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \display_clock|o_pulse~q\);

-- Location: CLKCTRL_G7
\display_clock|o_pulse~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \display_clock|o_pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \display_clock|o_pulse~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y15_N10
\slow_clock|slow_clock:scnt[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~2_cout\ = CARRY((\display_clock|slow_clock:scnt[1]~q\ & \display_clock|slow_clock:scnt[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[1]~q\,
	datab => \display_clock|slow_clock:scnt[0]~q\,
	datad => VCC,
	cout => \slow_clock|slow_clock:scnt[16]~2_cout\);

-- Location: LCCOMB_X33_Y15_N12
\slow_clock|slow_clock:scnt[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~4_cout\ = CARRY((!\slow_clock|slow_clock:scnt[16]~2_cout\) # (!\display_clock|slow_clock:scnt[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[2]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~2_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~4_cout\);

-- Location: LCCOMB_X33_Y15_N14
\slow_clock|slow_clock:scnt[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~6_cout\ = CARRY((\display_clock|slow_clock:scnt[3]~q\ & !\slow_clock|slow_clock:scnt[16]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[3]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~4_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~6_cout\);

-- Location: LCCOMB_X33_Y15_N16
\slow_clock|slow_clock:scnt[16]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~8_cout\ = CARRY((!\slow_clock|slow_clock:scnt[16]~6_cout\) # (!\display_clock|slow_clock:scnt[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[4]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~6_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~8_cout\);

-- Location: LCCOMB_X33_Y15_N18
\slow_clock|slow_clock:scnt[16]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~10_cout\ = CARRY((\display_clock|slow_clock:scnt[5]~q\ & !\slow_clock|slow_clock:scnt[16]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[5]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~8_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~10_cout\);

-- Location: LCCOMB_X33_Y15_N20
\slow_clock|slow_clock:scnt[16]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~12_cout\ = CARRY((!\slow_clock|slow_clock:scnt[16]~10_cout\) # (!\display_clock|slow_clock:scnt[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[6]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~10_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~12_cout\);

-- Location: LCCOMB_X33_Y15_N22
\slow_clock|slow_clock:scnt[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~14_cout\ = CARRY((\display_clock|slow_clock:scnt[7]~q\ & !\slow_clock|slow_clock:scnt[16]~12_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[7]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~12_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~14_cout\);

-- Location: LCCOMB_X33_Y15_N24
\slow_clock|slow_clock:scnt[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~16_cout\ = CARRY((!\slow_clock|slow_clock:scnt[16]~14_cout\) # (!\display_clock|slow_clock:scnt[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[8]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~14_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~16_cout\);

-- Location: LCCOMB_X33_Y15_N26
\slow_clock|slow_clock:scnt[16]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~18_cout\ = CARRY((\display_clock|slow_clock:scnt[9]~q\ & !\slow_clock|slow_clock:scnt[16]~16_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[9]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~16_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~18_cout\);

-- Location: LCCOMB_X33_Y15_N28
\slow_clock|slow_clock:scnt[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~20_cout\ = CARRY((!\slow_clock|slow_clock:scnt[16]~18_cout\) # (!\display_clock|slow_clock:scnt[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[10]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~18_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~20_cout\);

-- Location: LCCOMB_X33_Y15_N30
\slow_clock|slow_clock:scnt[16]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~22_cout\ = CARRY((\display_clock|slow_clock:scnt[11]~q\ & !\slow_clock|slow_clock:scnt[16]~20_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[11]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~20_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~22_cout\);

-- Location: LCCOMB_X33_Y14_N0
\slow_clock|slow_clock:scnt[16]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~24_cout\ = CARRY((!\slow_clock|slow_clock:scnt[16]~22_cout\) # (!\display_clock|slow_clock:scnt[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[12]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~22_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~24_cout\);

-- Location: LCCOMB_X33_Y14_N2
\slow_clock|slow_clock:scnt[16]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~26_cout\ = CARRY((\display_clock|slow_clock:scnt[13]~q\ & !\slow_clock|slow_clock:scnt[16]~24_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[13]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~24_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~26_cout\);

-- Location: LCCOMB_X33_Y14_N4
\slow_clock|slow_clock:scnt[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~28_cout\ = CARRY((!\slow_clock|slow_clock:scnt[16]~26_cout\) # (!\display_clock|slow_clock:scnt[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \display_clock|slow_clock:scnt[14]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~26_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~28_cout\);

-- Location: LCCOMB_X33_Y14_N6
\slow_clock|slow_clock:scnt[16]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~30_cout\ = CARRY((\display_clock|slow_clock:scnt[15]~q\ & !\slow_clock|slow_clock:scnt[16]~28_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \display_clock|slow_clock:scnt[15]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~28_cout\,
	cout => \slow_clock|slow_clock:scnt[16]~30_cout\);

-- Location: LCCOMB_X33_Y14_N8
\slow_clock|slow_clock:scnt[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[16]~31_combout\ = (\slow_clock|slow_clock:scnt[16]~q\ & (!\slow_clock|slow_clock:scnt[16]~30_cout\)) # (!\slow_clock|slow_clock:scnt[16]~q\ & ((\slow_clock|slow_clock:scnt[16]~30_cout\) # (GND)))
-- \slow_clock|slow_clock:scnt[16]~32\ = CARRY((!\slow_clock|slow_clock:scnt[16]~30_cout\) # (!\slow_clock|slow_clock:scnt[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow_clock|slow_clock:scnt[16]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~30_cout\,
	combout => \slow_clock|slow_clock:scnt[16]~31_combout\,
	cout => \slow_clock|slow_clock:scnt[16]~32\);

-- Location: FF_X33_Y14_N9
\slow_clock|slow_clock:scnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \slow_clock|slow_clock:scnt[16]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow_clock|slow_clock:scnt[16]~q\);

-- Location: LCCOMB_X33_Y14_N10
\slow_clock|slow_clock:scnt[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[17]~1_combout\ = (\slow_clock|slow_clock:scnt[17]~q\ & (\slow_clock|slow_clock:scnt[16]~32\ $ (GND))) # (!\slow_clock|slow_clock:scnt[17]~q\ & (!\slow_clock|slow_clock:scnt[16]~32\ & VCC))
-- \slow_clock|slow_clock:scnt[17]~2\ = CARRY((\slow_clock|slow_clock:scnt[17]~q\ & !\slow_clock|slow_clock:scnt[16]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow_clock|slow_clock:scnt[17]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[16]~32\,
	combout => \slow_clock|slow_clock:scnt[17]~1_combout\,
	cout => \slow_clock|slow_clock:scnt[17]~2\);

-- Location: FF_X33_Y14_N11
\slow_clock|slow_clock:scnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \slow_clock|slow_clock:scnt[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow_clock|slow_clock:scnt[17]~q\);

-- Location: LCCOMB_X33_Y14_N12
\slow_clock|slow_clock:scnt[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[18]~1_combout\ = (\slow_clock|slow_clock:scnt[18]~q\ & (!\slow_clock|slow_clock:scnt[17]~2\)) # (!\slow_clock|slow_clock:scnt[18]~q\ & ((\slow_clock|slow_clock:scnt[17]~2\) # (GND)))
-- \slow_clock|slow_clock:scnt[18]~2\ = CARRY((!\slow_clock|slow_clock:scnt[17]~2\) # (!\slow_clock|slow_clock:scnt[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow_clock|slow_clock:scnt[18]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[17]~2\,
	combout => \slow_clock|slow_clock:scnt[18]~1_combout\,
	cout => \slow_clock|slow_clock:scnt[18]~2\);

-- Location: FF_X33_Y14_N13
\slow_clock|slow_clock:scnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \slow_clock|slow_clock:scnt[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow_clock|slow_clock:scnt[18]~q\);

-- Location: LCCOMB_X33_Y14_N14
\slow_clock|slow_clock:scnt[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[19]~1_combout\ = (\slow_clock|slow_clock:scnt[19]~q\ & (\slow_clock|slow_clock:scnt[18]~2\ $ (GND))) # (!\slow_clock|slow_clock:scnt[19]~q\ & (!\slow_clock|slow_clock:scnt[18]~2\ & VCC))
-- \slow_clock|slow_clock:scnt[19]~2\ = CARRY((\slow_clock|slow_clock:scnt[19]~q\ & !\slow_clock|slow_clock:scnt[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow_clock|slow_clock:scnt[19]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[18]~2\,
	combout => \slow_clock|slow_clock:scnt[19]~1_combout\,
	cout => \slow_clock|slow_clock:scnt[19]~2\);

-- Location: FF_X33_Y14_N15
\slow_clock|slow_clock:scnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \slow_clock|slow_clock:scnt[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow_clock|slow_clock:scnt[19]~q\);

-- Location: LCCOMB_X33_Y14_N16
\slow_clock|slow_clock:scnt[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[20]~1_combout\ = (\slow_clock|slow_clock:scnt[20]~q\ & (!\slow_clock|slow_clock:scnt[19]~2\)) # (!\slow_clock|slow_clock:scnt[20]~q\ & ((\slow_clock|slow_clock:scnt[19]~2\) # (GND)))
-- \slow_clock|slow_clock:scnt[20]~2\ = CARRY((!\slow_clock|slow_clock:scnt[19]~2\) # (!\slow_clock|slow_clock:scnt[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow_clock|slow_clock:scnt[20]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[19]~2\,
	combout => \slow_clock|slow_clock:scnt[20]~1_combout\,
	cout => \slow_clock|slow_clock:scnt[20]~2\);

-- Location: FF_X33_Y14_N17
\slow_clock|slow_clock:scnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \slow_clock|slow_clock:scnt[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow_clock|slow_clock:scnt[20]~q\);

-- Location: LCCOMB_X33_Y14_N18
\slow_clock|slow_clock:scnt[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[21]~1_combout\ = (\slow_clock|slow_clock:scnt[21]~q\ & (\slow_clock|slow_clock:scnt[20]~2\ $ (GND))) # (!\slow_clock|slow_clock:scnt[21]~q\ & (!\slow_clock|slow_clock:scnt[20]~2\ & VCC))
-- \slow_clock|slow_clock:scnt[21]~2\ = CARRY((\slow_clock|slow_clock:scnt[21]~q\ & !\slow_clock|slow_clock:scnt[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow_clock|slow_clock:scnt[21]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[20]~2\,
	combout => \slow_clock|slow_clock:scnt[21]~1_combout\,
	cout => \slow_clock|slow_clock:scnt[21]~2\);

-- Location: FF_X33_Y14_N19
\slow_clock|slow_clock:scnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \slow_clock|slow_clock:scnt[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow_clock|slow_clock:scnt[21]~q\);

-- Location: LCCOMB_X33_Y14_N20
\slow_clock|slow_clock:scnt[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[22]~1_combout\ = (\slow_clock|slow_clock:scnt[22]~q\ & (!\slow_clock|slow_clock:scnt[21]~2\)) # (!\slow_clock|slow_clock:scnt[22]~q\ & ((\slow_clock|slow_clock:scnt[21]~2\) # (GND)))
-- \slow_clock|slow_clock:scnt[22]~2\ = CARRY((!\slow_clock|slow_clock:scnt[21]~2\) # (!\slow_clock|slow_clock:scnt[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \slow_clock|slow_clock:scnt[22]~q\,
	datad => VCC,
	cin => \slow_clock|slow_clock:scnt[21]~2\,
	combout => \slow_clock|slow_clock:scnt[22]~1_combout\,
	cout => \slow_clock|slow_clock:scnt[22]~2\);

-- Location: FF_X33_Y14_N21
\slow_clock|slow_clock:scnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \slow_clock|slow_clock:scnt[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow_clock|slow_clock:scnt[22]~q\);

-- Location: LCCOMB_X33_Y14_N22
\slow_clock|slow_clock:scnt[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|slow_clock:scnt[23]~1_combout\ = \slow_clock|slow_clock:scnt[23]~q\ $ (!\slow_clock|slow_clock:scnt[22]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \slow_clock|slow_clock:scnt[23]~q\,
	cin => \slow_clock|slow_clock:scnt[22]~2\,
	combout => \slow_clock|slow_clock:scnt[23]~1_combout\);

-- Location: FF_X33_Y14_N23
\slow_clock|slow_clock:scnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \slow_clock|slow_clock:scnt[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow_clock|slow_clock:scnt[23]~q\);

-- Location: LCCOMB_X33_Y12_N4
\slow_clock|o_pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \slow_clock|o_pulse~feeder_combout\ = \slow_clock|slow_clock:scnt[23]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \slow_clock|slow_clock:scnt[23]~q\,
	combout => \slow_clock|o_pulse~feeder_combout\);

-- Location: FF_X33_Y12_N5
\slow_clock|o_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clock~inputclkctrl_outclk\,
	d => \slow_clock|o_pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slow_clock|o_pulse~q\);

-- Location: CLKCTRL_G8
\slow_clock|o_pulse~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \slow_clock|o_pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \slow_clock|o_pulse~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y21_N6
\counter[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~33_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	combout => \counter[0]~33_combout\);

-- Location: FF_X10_Y21_N7
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clock|o_pulse~clkctrl_outclk\,
	d => \counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X9_Y21_N8
\counter[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~11_combout\ = (counter(0) & (counter(1) $ (VCC))) # (!counter(0) & (counter(1) & VCC))
-- \counter[1]~12\ = CARRY((counter(0) & counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datad => VCC,
	combout => \counter[1]~11_combout\,
	cout => \counter[1]~12\);

-- Location: FF_X9_Y21_N9
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clock|o_pulse~clkctrl_outclk\,
	d => \counter[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X9_Y21_N10
\counter[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~13_combout\ = (counter(2) & (!\counter[1]~12\)) # (!counter(2) & ((\counter[1]~12\) # (GND)))
-- \counter[2]~14\ = CARRY((!\counter[1]~12\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~12\,
	combout => \counter[2]~13_combout\,
	cout => \counter[2]~14\);

-- Location: FF_X9_Y21_N11
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clock|o_pulse~clkctrl_outclk\,
	d => \counter[2]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X9_Y21_N12
\counter[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~15_combout\ = (counter(3) & (\counter[2]~14\ $ (GND))) # (!counter(3) & (!\counter[2]~14\ & VCC))
-- \counter[3]~16\ = CARRY((counter(3) & !\counter[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~14\,
	combout => \counter[3]~15_combout\,
	cout => \counter[3]~16\);

-- Location: FF_X9_Y21_N13
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clock|o_pulse~clkctrl_outclk\,
	d => \counter[3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X9_Y21_N14
\counter[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~17_combout\ = (counter(4) & (!\counter[3]~16\)) # (!counter(4) & ((\counter[3]~16\) # (GND)))
-- \counter[4]~18\ = CARRY((!\counter[3]~16\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~16\,
	combout => \counter[4]~17_combout\,
	cout => \counter[4]~18\);

-- Location: FF_X9_Y21_N15
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clock|o_pulse~clkctrl_outclk\,
	d => \counter[4]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X9_Y21_N16
\counter[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~19_combout\ = (counter(5) & (\counter[4]~18\ $ (GND))) # (!counter(5) & (!\counter[4]~18\ & VCC))
-- \counter[5]~20\ = CARRY((counter(5) & !\counter[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~18\,
	combout => \counter[5]~19_combout\,
	cout => \counter[5]~20\);

-- Location: FF_X9_Y21_N17
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clock|o_pulse~clkctrl_outclk\,
	d => \counter[5]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X9_Y21_N18
\counter[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~21_combout\ = (counter(6) & (!\counter[5]~20\)) # (!counter(6) & ((\counter[5]~20\) # (GND)))
-- \counter[6]~22\ = CARRY((!\counter[5]~20\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~20\,
	combout => \counter[6]~21_combout\,
	cout => \counter[6]~22\);

-- Location: FF_X9_Y21_N19
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clock|o_pulse~clkctrl_outclk\,
	d => \counter[6]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X9_Y21_N20
\counter[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~23_combout\ = (counter(7) & (\counter[6]~22\ $ (GND))) # (!counter(7) & (!\counter[6]~22\ & VCC))
-- \counter[7]~24\ = CARRY((counter(7) & !\counter[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~22\,
	combout => \counter[7]~23_combout\,
	cout => \counter[7]~24\);

-- Location: FF_X9_Y21_N21
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clock|o_pulse~clkctrl_outclk\,
	d => \counter[7]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X9_Y21_N22
\counter[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~25_combout\ = (counter(8) & (!\counter[7]~24\)) # (!counter(8) & ((\counter[7]~24\) # (GND)))
-- \counter[8]~26\ = CARRY((!\counter[7]~24\) # (!counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~24\,
	combout => \counter[8]~25_combout\,
	cout => \counter[8]~26\);

-- Location: FF_X9_Y21_N23
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clock|o_pulse~clkctrl_outclk\,
	d => \counter[8]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X9_Y21_N24
\counter[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~27_combout\ = (counter(9) & (\counter[8]~26\ $ (GND))) # (!counter(9) & (!\counter[8]~26\ & VCC))
-- \counter[9]~28\ = CARRY((counter(9) & !\counter[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~26\,
	combout => \counter[9]~27_combout\,
	cout => \counter[9]~28\);

-- Location: FF_X9_Y21_N25
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clock|o_pulse~clkctrl_outclk\,
	d => \counter[9]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X9_Y21_N26
\counter[10]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~29_combout\ = (counter(10) & (!\counter[9]~28\)) # (!counter(10) & ((\counter[9]~28\) # (GND)))
-- \counter[10]~30\ = CARRY((!\counter[9]~28\) # (!counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~28\,
	combout => \counter[10]~29_combout\,
	cout => \counter[10]~30\);

-- Location: FF_X9_Y21_N27
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clock|o_pulse~clkctrl_outclk\,
	d => \counter[10]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X9_Y21_N28
\counter[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~31_combout\ = \counter[10]~30\ $ (!counter(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(11),
	cin => \counter[10]~30\,
	combout => \counter[11]~31_combout\);

-- Location: FF_X9_Y21_N29
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slow_clock|o_pulse~clkctrl_outclk\,
	d => \counter[11]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X9_Y21_N0
\bcd~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~9_combout\ = (counter(9) & (!counter(11) & ((counter(8)) # (!counter(10))))) # (!counter(9) & (counter(11) & ((counter(10)) # (!counter(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(9),
	datac => counter(10),
	datad => counter(11),
	combout => \bcd~9_combout\);

-- Location: LCCOMB_X9_Y21_N6
\bcd~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~10_combout\ = (counter(10) & (!counter(8) & (counter(9) $ (!counter(11))))) # (!counter(10) & (!counter(9) & (counter(8) & counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => counter(9),
	datac => counter(8),
	datad => counter(11),
	combout => \bcd~10_combout\);

-- Location: LCCOMB_X9_Y21_N4
\bcd~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~11_combout\ = (counter(10) & ((counter(9) & ((counter(8)) # (counter(11)))) # (!counter(9) & ((!counter(11)) # (!counter(8)))))) # (!counter(10) & (counter(8) $ (((counter(9)) # (!counter(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => counter(9),
	datac => counter(8),
	datad => counter(11),
	combout => \bcd~11_combout\);

-- Location: LCCOMB_X11_Y21_N6
\bcd~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~65_combout\ = \bcd~10_combout\ $ ((((!counter(7) & \bcd~11_combout\)) # (!\bcd~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => \bcd~9_combout\,
	datac => \bcd~10_combout\,
	datad => \bcd~11_combout\,
	combout => \bcd~65_combout\);

-- Location: LCCOMB_X11_Y21_N14
\bcd~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~66_combout\ = (counter(11) & ((counter(9) & (counter(8) & counter(10))) # (!counter(9) & ((!counter(10)))))) # (!counter(11) & (counter(10) & ((counter(8)) # (counter(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(8),
	datac => counter(9),
	datad => counter(10),
	combout => \bcd~66_combout\);

-- Location: LCCOMB_X9_Y21_N2
\bcd~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~15_combout\ = (counter(7) & ((\bcd~9_combout\) # ((\bcd~10_combout\)))) # (!counter(7) & (!\bcd~10_combout\ & ((\bcd~11_combout\) # (!\bcd~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => \bcd~9_combout\,
	datac => \bcd~11_combout\,
	datad => \bcd~10_combout\,
	combout => \bcd~15_combout\);

-- Location: LCCOMB_X9_Y21_N30
\bcd~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~14_combout\ = (\bcd~9_combout\ & (!counter(7) & (\bcd~11_combout\))) # (!\bcd~9_combout\ & (\bcd~10_combout\ & ((counter(7)) # (!\bcd~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => \bcd~9_combout\,
	datac => \bcd~11_combout\,
	datad => \bcd~10_combout\,
	combout => \bcd~14_combout\);

-- Location: LCCOMB_X8_Y21_N24
\bcd~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~13_combout\ = (\bcd~10_combout\ & (counter(7) $ (((\bcd~11_combout\))))) # (!\bcd~10_combout\ & (!\bcd~11_combout\ & ((counter(7)) # (!\bcd~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~10_combout\,
	datab => counter(7),
	datac => \bcd~9_combout\,
	datad => \bcd~11_combout\,
	combout => \bcd~13_combout\);

-- Location: LCCOMB_X12_Y21_N12
\bcd~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~16_combout\ = \bcd~14_combout\ $ ((((!counter(6) & \bcd~15_combout\)) # (!\bcd~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \bcd~15_combout\,
	datac => \bcd~14_combout\,
	datad => \bcd~13_combout\,
	combout => \bcd~16_combout\);

-- Location: LCCOMB_X11_Y21_N24
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (counter(11) & ((counter(9)) # (counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(11),
	datad => counter(10),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y21_N8
\bcd~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~27_combout\ = (\bcd~65_combout\ & ((\bcd~66_combout\ & ((\bcd~16_combout\) # (\LessThan0~0_combout\))) # (!\bcd~66_combout\ & ((!\LessThan0~0_combout\))))) # (!\bcd~65_combout\ & (((\bcd~16_combout\ & \LessThan0~0_combout\)) # (!\bcd~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~65_combout\,
	datab => \bcd~66_combout\,
	datac => \bcd~16_combout\,
	datad => \LessThan0~0_combout\,
	combout => \bcd~27_combout\);

-- Location: LCCOMB_X11_Y21_N30
\LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (\LessThan0~0_combout\ & ((\bcd~66_combout\) # (!\bcd~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \bcd~66_combout\,
	datad => \bcd~65_combout\,
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X12_Y21_N30
\bcd~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~21_combout\ = (\bcd~66_combout\ & (\bcd~16_combout\ & (\LessThan0~0_combout\ $ (\bcd~65_combout\)))) # (!\bcd~66_combout\ & (\LessThan0~0_combout\ & (\bcd~65_combout\ & !\bcd~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~66_combout\,
	datab => \LessThan0~0_combout\,
	datac => \bcd~65_combout\,
	datad => \bcd~16_combout\,
	combout => \bcd~21_combout\);

-- Location: LCCOMB_X12_Y21_N20
\bcd~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~20_combout\ = (\bcd~66_combout\ & ((\LessThan0~0_combout\ & (\bcd~65_combout\ & !\bcd~16_combout\)) # (!\LessThan0~0_combout\ & (!\bcd~65_combout\ & \bcd~16_combout\)))) # (!\bcd~66_combout\ & (\bcd~16_combout\ $ (((!\bcd~65_combout\) # 
-- (!\LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~66_combout\,
	datab => \LessThan0~0_combout\,
	datac => \bcd~65_combout\,
	datad => \bcd~16_combout\,
	combout => \bcd~20_combout\);

-- Location: LCCOMB_X8_Y21_N8
\bcd~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~23_combout\ = (\bcd~13_combout\ & (\bcd~15_combout\ & (!counter(6)))) # (!\bcd~13_combout\ & (\bcd~14_combout\ & ((counter(6)) # (!\bcd~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~15_combout\,
	datab => counter(6),
	datac => \bcd~14_combout\,
	datad => \bcd~13_combout\,
	combout => \bcd~23_combout\);

-- Location: LCCOMB_X8_Y21_N30
\bcd~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~24_combout\ = (counter(6) & ((\bcd~13_combout\) # ((\bcd~14_combout\)))) # (!counter(6) & (!\bcd~14_combout\ & ((\bcd~15_combout\) # (!\bcd~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \bcd~13_combout\,
	datac => \bcd~14_combout\,
	datad => \bcd~15_combout\,
	combout => \bcd~24_combout\);

-- Location: LCCOMB_X8_Y21_N6
\bcd~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~22_combout\ = (counter(6) & (((!\bcd~15_combout\)))) # (!counter(6) & ((\bcd~14_combout\ & ((\bcd~15_combout\))) # (!\bcd~14_combout\ & (!\bcd~13_combout\ & !\bcd~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \bcd~13_combout\,
	datac => \bcd~14_combout\,
	datad => \bcd~15_combout\,
	combout => \bcd~22_combout\);

-- Location: LCCOMB_X12_Y21_N4
\bcd~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~25_combout\ = \bcd~23_combout\ $ ((((!counter(5) & \bcd~24_combout\)) # (!\bcd~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~23_combout\,
	datab => counter(5),
	datac => \bcd~24_combout\,
	datad => \bcd~22_combout\,
	combout => \bcd~25_combout\);

-- Location: LCCOMB_X11_Y21_N4
\bcd~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~12_combout\ = (counter(9) & (\bcd~65_combout\ $ (((!counter(8)) # (!counter(10)))))) # (!counter(9) & (counter(10) & ((!\bcd~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(10),
	datac => counter(8),
	datad => \bcd~65_combout\,
	combout => \bcd~12_combout\);

-- Location: LCCOMB_X12_Y21_N22
\bcd~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~17_combout\ = (\bcd~66_combout\ & (\bcd~65_combout\ $ (((!\LessThan0~0_combout\ & !\bcd~16_combout\))))) # (!\bcd~66_combout\ & (\bcd~65_combout\ & ((\bcd~16_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~66_combout\,
	datab => \LessThan0~0_combout\,
	datac => \bcd~65_combout\,
	datad => \bcd~16_combout\,
	combout => \bcd~17_combout\);

-- Location: LCCOMB_X12_Y21_N24
\bcd~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~18_combout\ = (\bcd~66_combout\ & ((\bcd~65_combout\) # (\LessThan0~0_combout\ $ (\bcd~16_combout\)))) # (!\bcd~66_combout\ & (\bcd~65_combout\ & ((!\bcd~16_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~66_combout\,
	datab => \LessThan0~0_combout\,
	datac => \bcd~65_combout\,
	datad => \bcd~16_combout\,
	combout => \bcd~18_combout\);

-- Location: LCCOMB_X12_Y21_N10
\bcd~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~19_combout\ = (counter(11) & ((\bcd~12_combout\ & (\bcd~17_combout\)) # (!\bcd~12_combout\ & ((!\bcd~18_combout\))))) # (!counter(11) & (((!\bcd~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => \bcd~12_combout\,
	datac => \bcd~17_combout\,
	datad => \bcd~18_combout\,
	combout => \bcd~19_combout\);

-- Location: LCCOMB_X12_Y21_N2
\bcd~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~26_combout\ = \bcd~21_combout\ $ ((((!\bcd~20_combout\ & \bcd~25_combout\)) # (!\bcd~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~21_combout\,
	datab => \bcd~20_combout\,
	datac => \bcd~25_combout\,
	datad => \bcd~19_combout\,
	combout => \bcd~26_combout\);

-- Location: LCCOMB_X11_Y21_N12
\bcd~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~36_combout\ = (!\bcd~27_combout\ & ((!\bcd~26_combout\) # (!\LessThan11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd~27_combout\,
	datac => \LessThan11~0_combout\,
	datad => \bcd~26_combout\,
	combout => \bcd~36_combout\);

-- Location: LCCOMB_X11_Y21_N2
\bcd~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~37_combout\ = (\bcd~27_combout\ & \bcd~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd~27_combout\,
	datad => \bcd~26_combout\,
	combout => \bcd~37_combout\);

-- Location: LCCOMB_X11_Y21_N28
\bcd~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~38_combout\ = (\LessThan0~0_combout\ & (\bcd~37_combout\ & ((\bcd~66_combout\) # (!\bcd~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~65_combout\,
	datab => \LessThan0~0_combout\,
	datac => \bcd~66_combout\,
	datad => \bcd~37_combout\,
	combout => \bcd~38_combout\);

-- Location: LCCOMB_X12_Y21_N26
\bcd~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~29_combout\ = (\bcd~21_combout\ & (((\bcd~25_combout\)))) # (!\bcd~21_combout\ & ((\bcd~25_combout\ & (\bcd~20_combout\ & \bcd~19_combout\)) # (!\bcd~25_combout\ & ((!\bcd~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~21_combout\,
	datab => \bcd~20_combout\,
	datac => \bcd~25_combout\,
	datad => \bcd~19_combout\,
	combout => \bcd~29_combout\);

-- Location: LCCOMB_X8_Y21_N26
\bcd~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~32_combout\ = (\bcd~22_combout\ & (!counter(5) & ((\bcd~24_combout\)))) # (!\bcd~22_combout\ & (\bcd~23_combout\ & ((counter(5)) # (!\bcd~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \bcd~23_combout\,
	datac => \bcd~24_combout\,
	datad => \bcd~22_combout\,
	combout => \bcd~32_combout\);

-- Location: LCCOMB_X8_Y21_N4
\bcd~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~31_combout\ = (counter(5) & (((!\bcd~24_combout\)))) # (!counter(5) & ((\bcd~23_combout\ & (\bcd~24_combout\)) # (!\bcd~23_combout\ & (!\bcd~24_combout\ & !\bcd~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \bcd~23_combout\,
	datac => \bcd~24_combout\,
	datad => \bcd~22_combout\,
	combout => \bcd~31_combout\);

-- Location: LCCOMB_X8_Y21_N20
\bcd~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~33_combout\ = (counter(5) & ((\bcd~23_combout\) # ((\bcd~22_combout\)))) # (!counter(5) & (!\bcd~23_combout\ & ((\bcd~24_combout\) # (!\bcd~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \bcd~23_combout\,
	datac => \bcd~24_combout\,
	datad => \bcd~22_combout\,
	combout => \bcd~33_combout\);

-- Location: LCCOMB_X8_Y21_N18
\bcd~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~34_combout\ = \bcd~32_combout\ $ ((((!counter(4) & \bcd~33_combout\)) # (!\bcd~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~32_combout\,
	datab => counter(4),
	datac => \bcd~31_combout\,
	datad => \bcd~33_combout\,
	combout => \bcd~34_combout\);

-- Location: LCCOMB_X12_Y21_N8
\bcd~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~28_combout\ = (\bcd~21_combout\ & (\bcd~20_combout\ $ ((\bcd~25_combout\)))) # (!\bcd~21_combout\ & (\bcd~20_combout\ & ((!\bcd~19_combout\) # (!\bcd~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~21_combout\,
	datab => \bcd~20_combout\,
	datac => \bcd~25_combout\,
	datad => \bcd~19_combout\,
	combout => \bcd~28_combout\);

-- Location: LCCOMB_X12_Y21_N28
\bcd~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~30_combout\ = (\bcd~19_combout\ & (((!\bcd~20_combout\ & \bcd~25_combout\)))) # (!\bcd~19_combout\ & (\bcd~21_combout\ & ((\bcd~20_combout\) # (!\bcd~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~21_combout\,
	datab => \bcd~20_combout\,
	datac => \bcd~25_combout\,
	datad => \bcd~19_combout\,
	combout => \bcd~30_combout\);

-- Location: LCCOMB_X12_Y21_N18
\bcd~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~35_combout\ = \bcd~30_combout\ $ ((((!\bcd~29_combout\ & \bcd~34_combout\)) # (!\bcd~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~29_combout\,
	datab => \bcd~34_combout\,
	datac => \bcd~28_combout\,
	datad => \bcd~30_combout\,
	combout => \bcd~35_combout\);

-- Location: LCCOMB_X12_Y21_N0
\LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (\bcd~27_combout\) # ((\bcd~26_combout\ & ((\LessThan11~0_combout\) # (\bcd~35_combout\))) # (!\bcd~26_combout\ & (\LessThan11~0_combout\ & \bcd~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~27_combout\,
	datab => \bcd~26_combout\,
	datac => \LessThan11~0_combout\,
	datad => \bcd~35_combout\,
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X11_Y21_N18
\Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (\bcd~35_combout\ & (\bcd~27_combout\ $ (((\LessThan11~0_combout\) # (\bcd~26_combout\))))) # (!\bcd~35_combout\ & ((\bcd~27_combout\) # ((\LessThan11~0_combout\ & \bcd~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~0_combout\,
	datab => \bcd~27_combout\,
	datac => \bcd~26_combout\,
	datad => \bcd~35_combout\,
	combout => \Add14~2_combout\);

-- Location: LCCOMB_X11_Y21_N22
\bcd~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~39_combout\ = (\bcd~38_combout\ & (((\Add14~2_combout\)))) # (!\bcd~38_combout\ & ((\LessThan14~0_combout\ & (\bcd~36_combout\)) # (!\LessThan14~0_combout\ & ((\Add14~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~36_combout\,
	datab => \bcd~38_combout\,
	datac => \LessThan14~0_combout\,
	datad => \Add14~2_combout\,
	combout => \bcd~39_combout\);

-- Location: LCCOMB_X11_Y21_N16
\bcd~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~3_combout\ = (counter(7)) # (counter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(7),
	datad => counter(8),
	combout => \bcd~3_combout\);

-- Location: LCCOMB_X11_Y21_N26
\bcd~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~67_combout\ = (counter(10) & (counter(11) & ((counter(9)) # (\bcd~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(10),
	datac => counter(11),
	datad => \bcd~3_combout\,
	combout => \bcd~67_combout\);

-- Location: LCCOMB_X13_Y21_N22
\bcd~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~62_combout\ = (\bcd~27_combout\) # ((\bcd~26_combout\ & ((\LessThan11~0_combout\) # (\bcd~35_combout\))) # (!\bcd~26_combout\ & (\LessThan11~0_combout\ & \bcd~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~27_combout\,
	datab => \bcd~26_combout\,
	datac => \LessThan11~0_combout\,
	datad => \bcd~35_combout\,
	combout => \bcd~62_combout\);

-- Location: LCCOMB_X13_Y21_N28
\bcd~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~63_combout\ = \bcd~35_combout\ $ (((\bcd~62_combout\ & ((!\bcd~37_combout\) # (!\bcd~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~67_combout\,
	datab => \bcd~37_combout\,
	datac => \bcd~62_combout\,
	datad => \bcd~35_combout\,
	combout => \bcd~63_combout\);

-- Location: LCCOMB_X8_Y21_N12
\bcd~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~45_combout\ = (\bcd~32_combout\ & (counter(4))) # (!\bcd~32_combout\ & ((counter(4) & (\bcd~31_combout\)) # (!counter(4) & ((\bcd~33_combout\) # (!\bcd~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~32_combout\,
	datab => counter(4),
	datac => \bcd~31_combout\,
	datad => \bcd~33_combout\,
	combout => \bcd~45_combout\);

-- Location: LCCOMB_X8_Y21_N22
\bcd~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~44_combout\ = (\bcd~31_combout\ & (((!counter(4) & \bcd~33_combout\)))) # (!\bcd~31_combout\ & (\bcd~32_combout\ & ((counter(4)) # (!\bcd~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~32_combout\,
	datab => counter(4),
	datac => \bcd~31_combout\,
	datad => \bcd~33_combout\,
	combout => \bcd~44_combout\);

-- Location: LCCOMB_X8_Y21_N16
\bcd~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~43_combout\ = (counter(4) & (((!\bcd~33_combout\)))) # (!counter(4) & ((\bcd~32_combout\ & ((\bcd~33_combout\))) # (!\bcd~32_combout\ & (!\bcd~31_combout\ & !\bcd~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \bcd~31_combout\,
	datac => \bcd~32_combout\,
	datad => \bcd~33_combout\,
	combout => \bcd~43_combout\);

-- Location: LCCOMB_X8_Y21_N14
\bcd~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~46_combout\ = \bcd~44_combout\ $ ((((\bcd~45_combout\ & !counter(3))) # (!\bcd~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~45_combout\,
	datab => counter(3),
	datac => \bcd~44_combout\,
	datad => \bcd~43_combout\,
	combout => \bcd~46_combout\);

-- Location: LCCOMB_X12_Y21_N6
\bcd~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~42_combout\ = (\bcd~28_combout\ & (!\bcd~29_combout\ & (\bcd~34_combout\))) # (!\bcd~28_combout\ & (\bcd~30_combout\ & ((\bcd~29_combout\) # (!\bcd~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~29_combout\,
	datab => \bcd~28_combout\,
	datac => \bcd~34_combout\,
	datad => \bcd~30_combout\,
	combout => \bcd~42_combout\);

-- Location: LCCOMB_X12_Y21_N16
\bcd~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~41_combout\ = (\bcd~28_combout\ & (\bcd~34_combout\ & ((\bcd~29_combout\) # (\bcd~30_combout\)))) # (!\bcd~28_combout\ & ((\bcd~34_combout\ $ (!\bcd~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~29_combout\,
	datab => \bcd~28_combout\,
	datac => \bcd~34_combout\,
	datad => \bcd~30_combout\,
	combout => \bcd~41_combout\);

-- Location: LCCOMB_X12_Y21_N14
\bcd~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~40_combout\ = (\bcd~29_combout\ & (((!\bcd~28_combout\ & !\bcd~30_combout\)) # (!\bcd~34_combout\))) # (!\bcd~29_combout\ & (((\bcd~34_combout\ & \bcd~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~29_combout\,
	datab => \bcd~28_combout\,
	datac => \bcd~34_combout\,
	datad => \bcd~30_combout\,
	combout => \bcd~40_combout\);

-- Location: LCCOMB_X13_Y21_N26
\bcd~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~47_combout\ = \bcd~42_combout\ $ ((((\bcd~46_combout\ & !\bcd~41_combout\)) # (!\bcd~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~46_combout\,
	datab => \bcd~42_combout\,
	datac => \bcd~41_combout\,
	datad => \bcd~40_combout\,
	combout => \bcd~47_combout\);

-- Location: LCCOMB_X13_Y21_N12
\bcd~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~48_combout\ = (\LessThan11~0_combout\ & (\bcd~26_combout\ & !\bcd~27_combout\)) # (!\LessThan11~0_combout\ & (!\bcd~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~0_combout\,
	datab => \bcd~26_combout\,
	datad => \bcd~27_combout\,
	combout => \bcd~48_combout\);

-- Location: LCCOMB_X13_Y21_N14
\Add14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~3_combout\ = \bcd~35_combout\ $ (((\LessThan11~0_combout\ & ((\bcd~27_combout\) # (!\bcd~26_combout\))) # (!\LessThan11~0_combout\ & ((\bcd~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~27_combout\,
	datab => \LessThan11~0_combout\,
	datac => \bcd~26_combout\,
	datad => \bcd~35_combout\,
	combout => \Add14~3_combout\);

-- Location: LCCOMB_X13_Y21_N20
\bcd~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~49_combout\ = (\LessThan14~0_combout\ & ((\bcd~38_combout\ & ((!\Add14~3_combout\))) # (!\bcd~38_combout\ & (\bcd~48_combout\)))) # (!\LessThan14~0_combout\ & (((!\Add14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~48_combout\,
	datab => \Add14~3_combout\,
	datac => \LessThan14~0_combout\,
	datad => \bcd~38_combout\,
	combout => \bcd~49_combout\);

-- Location: LCCOMB_X13_Y21_N24
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\bcd~39_combout\ & (\bcd~63_combout\ $ ((\bcd~47_combout\)))) # (!\bcd~39_combout\ & (\bcd~63_combout\ & ((!\bcd~49_combout\) # (!\bcd~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~39_combout\,
	datab => \bcd~63_combout\,
	datac => \bcd~47_combout\,
	datad => \bcd~49_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X14_Y21_N14
\digit_selector:digit_counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit_selector:digit_counter[1]~0_combout\ = !\digit_selector:digit_counter[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digit_selector:digit_counter[0]~q\,
	combout => \digit_selector:digit_counter[1]~0_combout\);

-- Location: FF_X14_Y21_N15
\digit_selector:digit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_clock|o_pulse~clkctrl_outclk\,
	d => \digit_selector:digit_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit_selector:digit_counter[1]~q\);

-- Location: FF_X14_Y21_N9
\digit_selector:digit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_clock|o_pulse~clkctrl_outclk\,
	asdata => \digit_selector:digit_counter[1]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit_selector:digit_counter[2]~q\);

-- Location: LCCOMB_X14_Y21_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\digit_selector:digit_counter[2]~q\) # ((\digit_selector:digit_counter[1]~q\) # (!\digit_selector:digit_counter[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_selector:digit_counter[2]~q\,
	datac => \digit_selector:digit_counter[0]~q\,
	datad => \digit_selector:digit_counter[1]~q\,
	combout => \Equal0~0_combout\);

-- Location: FF_X14_Y21_N25
\digit_selector:digit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_clock|o_pulse~clkctrl_outclk\,
	d => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit_selector:digit_counter[0]~q\);

-- Location: FF_X14_Y21_N21
\digit_selector:digit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_clock|o_pulse~clkctrl_outclk\,
	asdata => \digit_selector:digit_counter[2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \digit_selector:digit_counter[3]~q\);

-- Location: LCCOMB_X14_Y21_N8
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\digit_selector:digit_counter[0]~q\ & (!\digit_selector:digit_counter[1]~q\ & (\digit_selector:digit_counter[2]~q\ & !\digit_selector:digit_counter[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_selector:digit_counter[0]~q\,
	datab => \digit_selector:digit_counter[1]~q\,
	datac => \digit_selector:digit_counter[2]~q\,
	datad => \digit_selector:digit_counter[3]~q\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X14_Y21_N28
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\digit_selector:digit_counter[0]~q\ & (!\digit_selector:digit_counter[1]~q\ & (!\digit_selector:digit_counter[2]~q\ & \digit_selector:digit_counter[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_selector:digit_counter[0]~q\,
	datab => \digit_selector:digit_counter[1]~q\,
	datac => \digit_selector:digit_counter[2]~q\,
	datad => \digit_selector:digit_counter[3]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X13_Y21_N10
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\LessThan11~0_combout\ & (\Mux1~0_combout\ & ((!\bcd~26_combout\) # (!\bcd~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~27_combout\,
	datab => \bcd~26_combout\,
	datac => \LessThan11~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X14_Y21_N16
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\digit_selector:digit_counter[2]~q\ & (!\digit_selector:digit_counter[3]~q\ & (\digit_selector:digit_counter[0]~q\ $ (!\digit_selector:digit_counter[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_selector:digit_counter[0]~q\,
	datab => \digit_selector:digit_counter[1]~q\,
	datac => \digit_selector:digit_counter[2]~q\,
	datad => \digit_selector:digit_counter[3]~q\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X8_Y21_N0
\bcd~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~52_combout\ = (\bcd~43_combout\ & (\bcd~45_combout\ & (!counter(3)))) # (!\bcd~43_combout\ & (\bcd~44_combout\ & ((counter(3)) # (!\bcd~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~45_combout\,
	datab => counter(3),
	datac => \bcd~44_combout\,
	datad => \bcd~43_combout\,
	combout => \bcd~52_combout\);

-- Location: LCCOMB_X8_Y21_N2
\bcd~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~51_combout\ = (counter(3) & ((\bcd~43_combout\) # ((\bcd~44_combout\)))) # (!counter(3) & (!\bcd~44_combout\ & ((\bcd~45_combout\) # (!\bcd~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => \bcd~43_combout\,
	datac => \bcd~44_combout\,
	datad => \bcd~45_combout\,
	combout => \bcd~51_combout\);

-- Location: LCCOMB_X8_Y21_N28
\bcd~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~50_combout\ = (counter(3) & (((!\bcd~45_combout\)))) # (!counter(3) & ((\bcd~44_combout\ & ((\bcd~45_combout\))) # (!\bcd~44_combout\ & (!\bcd~43_combout\ & !\bcd~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => \bcd~43_combout\,
	datac => \bcd~44_combout\,
	datad => \bcd~45_combout\,
	combout => \bcd~50_combout\);

-- Location: LCCOMB_X8_Y21_N10
\bcd~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~56_combout\ = \bcd~52_combout\ $ ((((!counter(2) & \bcd~51_combout\)) # (!\bcd~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => \bcd~52_combout\,
	datac => \bcd~51_combout\,
	datad => \bcd~50_combout\,
	combout => \bcd~56_combout\);

-- Location: LCCOMB_X14_Y21_N4
\bcd~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~57_combout\ = (\bcd~46_combout\ & ((\bcd~42_combout\) # ((\bcd~40_combout\ & \bcd~41_combout\)))) # (!\bcd~46_combout\ & (!\bcd~40_combout\ & (!\bcd~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~46_combout\,
	datab => \bcd~40_combout\,
	datac => \bcd~42_combout\,
	datad => \bcd~41_combout\,
	combout => \bcd~57_combout\);

-- Location: LCCOMB_X14_Y21_N2
\bcd~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~58_combout\ = (\bcd~40_combout\ & (\bcd~46_combout\ & ((!\bcd~41_combout\)))) # (!\bcd~40_combout\ & (\bcd~42_combout\ & ((\bcd~41_combout\) # (!\bcd~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~46_combout\,
	datab => \bcd~42_combout\,
	datac => \bcd~40_combout\,
	datad => \bcd~41_combout\,
	combout => \bcd~58_combout\);

-- Location: LCCOMB_X14_Y21_N0
\bcd~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~59_combout\ = (\bcd~46_combout\ & ((\bcd~42_combout\ & ((!\bcd~41_combout\))) # (!\bcd~42_combout\ & (!\bcd~40_combout\ & \bcd~41_combout\)))) # (!\bcd~46_combout\ & (((\bcd~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~46_combout\,
	datab => \bcd~40_combout\,
	datac => \bcd~42_combout\,
	datad => \bcd~41_combout\,
	combout => \bcd~59_combout\);

-- Location: LCCOMB_X14_Y21_N18
\bcd~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~60_combout\ = (!\bcd~58_combout\ & (((\bcd~56_combout\ & !\bcd~57_combout\)) # (!\bcd~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~56_combout\,
	datab => \bcd~58_combout\,
	datac => \bcd~57_combout\,
	datad => \bcd~59_combout\,
	combout => \bcd~60_combout\);

-- Location: LCCOMB_X14_Y21_N12
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\digit_selector:digit_counter[1]~q\ & (\bcd~57_combout\ $ (((\bcd~56_combout\ & !\bcd~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~56_combout\,
	datab => \bcd~57_combout\,
	datac => \digit_selector:digit_counter[1]~q\,
	datad => \bcd~60_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X10_Y21_N26
\bcd~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~53_combout\ = (\bcd~50_combout\ & ((counter(2)) # ((\bcd~51_combout\ & !\bcd~52_combout\)))) # (!\bcd~50_combout\ & (counter(2) $ (((!\bcd~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~50_combout\,
	datab => counter(2),
	datac => \bcd~51_combout\,
	datad => \bcd~52_combout\,
	combout => \bcd~53_combout\);

-- Location: LCCOMB_X10_Y21_N18
\bcd~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~55_combout\ = (\bcd~51_combout\ & (!counter(2) & ((\bcd~52_combout\)))) # (!\bcd~51_combout\ & ((counter(2)) # ((!\bcd~50_combout\ & !\bcd~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~51_combout\,
	datab => counter(2),
	datac => \bcd~50_combout\,
	datad => \bcd~52_combout\,
	combout => \bcd~55_combout\);

-- Location: LCCOMB_X10_Y21_N20
\bcd~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~54_combout\ = (\bcd~50_combout\ & (\bcd~51_combout\ & (!counter(2)))) # (!\bcd~50_combout\ & (\bcd~52_combout\ & ((counter(2)) # (!\bcd~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~51_combout\,
	datab => counter(2),
	datac => \bcd~50_combout\,
	datad => \bcd~52_combout\,
	combout => \bcd~54_combout\);

-- Location: LCCOMB_X10_Y21_N16
\bcd~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~61_combout\ = (!\bcd~54_combout\ & (((!counter(1) & \bcd~53_combout\)) # (!\bcd~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \bcd~55_combout\,
	datac => \bcd~53_combout\,
	datad => \bcd~54_combout\,
	combout => \bcd~61_combout\);

-- Location: LCCOMB_X13_Y21_N16
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\digit_selector:digit_counter[1]~q\ & (\bcd~53_combout\ $ (((counter(1)) # (\bcd~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \bcd~53_combout\,
	datac => \digit_selector:digit_counter[1]~q\,
	datad => \bcd~61_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X13_Y21_N2
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~2_combout\) # ((\Mux1~1_combout\ & ((\Mux1~4_combout\) # (\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux1~1_combout\,
	datac => \Mux1~4_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X13_Y21_N18
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\Mux1~5_combout\) # ((\Mux1~6_combout\ & \Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~6_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~7_combout\);

-- Location: FF_X13_Y21_N19
\w_bcd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_clock|o_pulse~clkctrl_outclk\,
	d => \Mux1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_bcd(2));

-- Location: LCCOMB_X13_Y21_N30
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\digit_selector:digit_counter[1]~q\ & (!\bcd~56_combout\)) # (!\digit_selector:digit_counter[1]~q\ & ((counter(1) $ (!\bcd~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~56_combout\,
	datab => counter(1),
	datac => \digit_selector:digit_counter[1]~q\,
	datad => \bcd~61_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X13_Y21_N8
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux1~1_combout\ & (\Mux2~0_combout\ $ (((\digit_selector:digit_counter[1]~q\ & !\bcd~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_selector:digit_counter[1]~q\,
	datab => \bcd~60_combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X14_Y21_N20
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (!\digit_selector:digit_counter[2]~q\ & (\digit_selector:digit_counter[3]~q\ & (\LessThan14~0_combout\ $ (!\bcd~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~0_combout\,
	datab => \digit_selector:digit_counter[2]~q\,
	datac => \digit_selector:digit_counter[3]~q\,
	datad => \bcd~38_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X13_Y21_N6
\bcd~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd~64_combout\ = (\bcd~47_combout\ & ((\bcd~39_combout\) # ((\bcd~63_combout\ & \bcd~49_combout\)))) # (!\bcd~47_combout\ & (((!\bcd~39_combout\ & !\bcd~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~47_combout\,
	datab => \bcd~63_combout\,
	datac => \bcd~39_combout\,
	datad => \bcd~49_combout\,
	combout => \bcd~64_combout\);

-- Location: LCCOMB_X13_Y21_N0
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\) # ((\digit_selector:digit_counter[2]~q\ & (!\digit_selector:digit_counter[3]~q\ & \bcd~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_selector:digit_counter[2]~q\,
	datab => \digit_selector:digit_counter[3]~q\,
	datac => \Mux2~2_combout\,
	datad => \bcd~64_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X13_Y21_N4
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux2~1_combout\) # ((\digit_selector:digit_counter[0]~q\ & (!\digit_selector:digit_counter[1]~q\ & \Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_selector:digit_counter[0]~q\,
	datab => \digit_selector:digit_counter[1]~q\,
	datac => \Mux2~1_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: FF_X13_Y21_N5
\w_bcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_clock|o_pulse~clkctrl_outclk\,
	d => \Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_bcd(1));

-- Location: LCCOMB_X10_Y21_N14
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = \bcd~58_combout\ $ (((\bcd~59_combout\ & ((\bcd~57_combout\) # (!\bcd~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~56_combout\,
	datab => \bcd~59_combout\,
	datac => \bcd~58_combout\,
	datad => \bcd~57_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X10_Y21_N28
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = \bcd~54_combout\ $ (((\bcd~55_combout\ & ((counter(1)) # (!\bcd~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \bcd~55_combout\,
	datac => \bcd~53_combout\,
	datad => \bcd~54_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X10_Y21_N8
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux1~1_combout\ & ((\digit_selector:digit_counter[1]~q\ & (\Mux3~1_combout\)) # (!\digit_selector:digit_counter[1]~q\ & ((counter(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_selector:digit_counter[1]~q\,
	datab => \Mux3~1_combout\,
	datac => counter(0),
	datad => \Mux1~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X11_Y21_N20
\Add17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add17~0_combout\ = (\bcd~35_combout\ $ (((!\bcd~38_combout\ & \LessThan14~0_combout\)))) # (!\bcd~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~38_combout\,
	datab => \bcd~35_combout\,
	datac => \LessThan14~0_combout\,
	datad => \bcd~47_combout\,
	combout => \Add17~0_combout\);

-- Location: LCCOMB_X10_Y21_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux1~0_combout\ & (\bcd~39_combout\ $ (((\bcd~49_combout\ & \Add17~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~49_combout\,
	datab => \bcd~39_combout\,
	datac => \Add17~0_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X10_Y21_N24
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~2_combout\) # ((\Mux3~0_combout\) # ((\Mux3~3_combout\ & \Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux3~4_combout\,
	datac => \Mux3~2_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~5_combout\);

-- Location: FF_X10_Y21_N25
\w_bcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_clock|o_pulse~clkctrl_outclk\,
	d => \Mux3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_bcd(0));

-- Location: LCCOMB_X10_Y21_N10
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\bcd~55_combout\ & (!counter(1) & (\bcd~53_combout\))) # (!\bcd~55_combout\ & (\bcd~54_combout\ & ((counter(1)) # (!\bcd~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \bcd~55_combout\,
	datac => \bcd~53_combout\,
	datad => \bcd~54_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X14_Y21_N22
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\bcd~58_combout\ & (\bcd~59_combout\ $ (((\bcd~57_combout\) # (!\bcd~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd~56_combout\,
	datab => \bcd~59_combout\,
	datac => \bcd~57_combout\,
	datad => \bcd~58_combout\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X14_Y21_N10
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mux0~2_combout\) # ((\bcd~59_combout\ & \bcd~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd~59_combout\,
	datac => \Mux0~2_combout\,
	datad => \bcd~60_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X14_Y21_N30
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\digit_selector:digit_counter[0]~q\ & (\digit_selector:digit_counter[1]~q\ & ((\Mux0~3_combout\)))) # (!\digit_selector:digit_counter[0]~q\ & (!\digit_selector:digit_counter[1]~q\ & (\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_selector:digit_counter[0]~q\,
	datab => \digit_selector:digit_counter[1]~q\,
	datac => \Mux0~1_combout\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X14_Y21_N6
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mux3~3_combout\ & ((\bcd~49_combout\ & ((!\Add17~0_combout\))) # (!\bcd~49_combout\ & (\bcd~39_combout\ & \Add17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \bcd~49_combout\,
	datac => \bcd~39_combout\,
	datad => \Add17~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X14_Y21_N26
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~0_combout\) # ((!\digit_selector:digit_counter[2]~q\ & (!\digit_selector:digit_counter[3]~q\ & \Mux0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_selector:digit_counter[2]~q\,
	datab => \digit_selector:digit_counter[3]~q\,
	datac => \Mux0~4_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~5_combout\);

-- Location: FF_X14_Y21_N27
\w_bcd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_clock|o_pulse~clkctrl_outclk\,
	d => \Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_bcd(3));

-- Location: LCCOMB_X16_Y21_N0
\bcd_coverter|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_coverter|Mux6~0_combout\ = (!w_bcd(1) & (!w_bcd(3) & (w_bcd(2) $ (w_bcd(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_bcd(2),
	datab => w_bcd(1),
	datac => w_bcd(0),
	datad => w_bcd(3),
	combout => \bcd_coverter|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y21_N26
\bcd_coverter|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_coverter|Mux5~0_combout\ = (w_bcd(2) & ((w_bcd(3)) # (w_bcd(1) $ (w_bcd(0))))) # (!w_bcd(2) & (w_bcd(1) & ((w_bcd(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_bcd(2),
	datab => w_bcd(1),
	datac => w_bcd(0),
	datad => w_bcd(3),
	combout => \bcd_coverter|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y21_N24
\bcd_coverter|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_coverter|Mux4~0_combout\ = (w_bcd(2) & (((w_bcd(3))))) # (!w_bcd(2) & (w_bcd(1) & ((w_bcd(3)) # (!w_bcd(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_bcd(2),
	datab => w_bcd(1),
	datac => w_bcd(0),
	datad => w_bcd(3),
	combout => \bcd_coverter|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y21_N2
\bcd_coverter|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_coverter|Mux3~0_combout\ = (!w_bcd(3) & ((w_bcd(2) & (w_bcd(1) $ (!w_bcd(0)))) # (!w_bcd(2) & (!w_bcd(1) & w_bcd(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_bcd(2),
	datab => w_bcd(1),
	datac => w_bcd(0),
	datad => w_bcd(3),
	combout => \bcd_coverter|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y21_N8
\bcd_coverter|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_coverter|Mux2~0_combout\ = (w_bcd(1) & (((w_bcd(0) & !w_bcd(3))))) # (!w_bcd(1) & ((w_bcd(2) & ((!w_bcd(3)))) # (!w_bcd(2) & (w_bcd(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_bcd(2),
	datab => w_bcd(1),
	datac => w_bcd(0),
	datad => w_bcd(3),
	combout => \bcd_coverter|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y21_N22
\bcd_coverter|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_coverter|Mux1~0_combout\ = (!w_bcd(3) & ((w_bcd(2) & (w_bcd(1) & w_bcd(0))) # (!w_bcd(2) & ((w_bcd(1)) # (w_bcd(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_bcd(2),
	datab => w_bcd(1),
	datac => w_bcd(0),
	datad => w_bcd(3),
	combout => \bcd_coverter|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y21_N12
\bcd_coverter|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_coverter|Mux0~0_combout\ = (w_bcd(3)) # ((w_bcd(2) & ((!w_bcd(0)) # (!w_bcd(1)))) # (!w_bcd(2) & (w_bcd(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_bcd(2),
	datab => w_bcd(1),
	datac => w_bcd(0),
	datad => w_bcd(3),
	combout => \bcd_coverter|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y22_N4
\o_digit_en[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_digit_en[0]~0_combout\ = !\digit_selector:digit_counter[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \digit_selector:digit_counter[0]~q\,
	combout => \o_digit_en[0]~0_combout\);

-- Location: FF_X13_Y22_N5
\o_digit_en[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_clock|o_pulse~clkctrl_outclk\,
	d => \o_digit_en[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_digit_en[0]~reg0_q\);

-- Location: LCCOMB_X10_Y21_N22
\o_digit_en[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \o_digit_en[1]~reg0feeder_combout\ = \digit_selector:digit_counter[1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \digit_selector:digit_counter[1]~q\,
	combout => \o_digit_en[1]~reg0feeder_combout\);

-- Location: FF_X10_Y21_N23
\o_digit_en[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_clock|o_pulse~clkctrl_outclk\,
	d => \o_digit_en[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_digit_en[1]~reg0_q\);

-- Location: FF_X14_Y21_N17
\o_digit_en[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_clock|o_pulse~clkctrl_outclk\,
	asdata => \digit_selector:digit_counter[2]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_digit_en[2]~reg0_q\);

-- Location: FF_X13_Y21_N13
\o_digit_en[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \display_clock|o_pulse~clkctrl_outclk\,
	asdata => \digit_selector:digit_counter[3]~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_digit_en[3]~reg0_q\);

-- Location: IOIBUF_X34_Y12_N22
\i_switch_1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_switch_1,
	o => \i_switch_1~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\i_switch_2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_switch_2,
	o => \i_switch_2~input_o\);

ww_o_segments(0) <= \o_segments[0]~output_o\;

ww_o_segments(1) <= \o_segments[1]~output_o\;

ww_o_segments(2) <= \o_segments[2]~output_o\;

ww_o_segments(3) <= \o_segments[3]~output_o\;

ww_o_segments(4) <= \o_segments[4]~output_o\;

ww_o_segments(5) <= \o_segments[5]~output_o\;

ww_o_segments(6) <= \o_segments[6]~output_o\;

ww_o_segments(7) <= \o_segments[7]~output_o\;

ww_o_digit_en(0) <= \o_digit_en[0]~output_o\;

ww_o_digit_en(1) <= \o_digit_en[1]~output_o\;

ww_o_digit_en(2) <= \o_digit_en[2]~output_o\;

ww_o_digit_en(3) <= \o_digit_en[3]~output_o\;
END structure;


