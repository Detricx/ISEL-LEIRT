-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "11/16/2026 22:09:56"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU IS
    PORT (
	W : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	OP : IN std_logic_vector(2 DOWNTO 0);
	CBi : IN std_logic;
	R : BUFFER std_logic_vector(3 DOWNTO 0);
	CBo : BUFFER std_logic;
	OV : BUFFER std_logic;
	Z : BUFFER std_logic;
	GE : BUFFER std_logic
	);
END ALU;

-- Design Ports Information
-- R[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- R[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CBo	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OV	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Z	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GE	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- Y[0]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- CBi	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- W[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- W[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_W : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OP : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CBi : std_logic;
SIGNAL ww_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CBo : std_logic;
SIGNAL ww_OV : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_GE : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \R[0]~output_o\ : std_logic;
SIGNAL \R[1]~output_o\ : std_logic;
SIGNAL \R[2]~output_o\ : std_logic;
SIGNAL \R[3]~output_o\ : std_logic;
SIGNAL \CBo~output_o\ : std_logic;
SIGNAL \OV~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \GE~output_o\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \OP[2]~input_o\ : std_logic;
SIGNAL \U4|R[0]~2_combout\ : std_logic;
SIGNAL \W[1]~input_o\ : std_logic;
SIGNAL \W[0]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \U4|R[0]~0_combout\ : std_logic;
SIGNAL \CBi~input_o\ : std_logic;
SIGNAL \U1|U0|A0|FA0|R~combout\ : std_logic;
SIGNAL \U4|R[0]~1_combout\ : std_logic;
SIGNAL \U4|R[0]~3_combout\ : std_logic;
SIGNAL \W[2]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \U4|R[1]~4_combout\ : std_logic;
SIGNAL \U4|R[1]~5_combout\ : std_logic;
SIGNAL \U1|U0|A0|FA1|R~0_combout\ : std_logic;
SIGNAL \U1|U0|A0|FA0|Cout~0_combout\ : std_logic;
SIGNAL \U4|R[1]~6_combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \U4|R[2]~7_combout\ : std_logic;
SIGNAL \W[3]~input_o\ : std_logic;
SIGNAL \U4|R[2]~8_combout\ : std_logic;
SIGNAL \U1|U0|A0|FA1|Cout~0_combout\ : std_logic;
SIGNAL \U1|U0|A0|FA2|R~0_combout\ : std_logic;
SIGNAL \U4|R[2]~9_combout\ : std_logic;
SIGNAL \U1|U0|A0|FA2|Cout~0_combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \U1|U0|A0|FA3|R~0_combout\ : std_logic;
SIGNAL \U4|R[3]~10_combout\ : std_logic;
SIGNAL \U4|R[3]~11_combout\ : std_logic;
SIGNAL \U4|R[3]~12_combout\ : std_logic;
SIGNAL \U5|CBo~0_combout\ : std_logic;
SIGNAL \U1|U0|A0|FA3|Cout~0_combout\ : std_logic;
SIGNAL \U5|CBo~1_combout\ : std_logic;
SIGNAL \U5|OVo~0_combout\ : std_logic;
SIGNAL \U5|Z~0_combout\ : std_logic;
SIGNAL \U5|GE~combout\ : std_logic;
SIGNAL \U0|B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|U0|Bx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|ALT_INV_GE~combout\ : std_logic;
SIGNAL \U5|ALT_INV_Z~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_W <= W;
ww_Y <= Y;
ww_OP <= OP;
ww_CBi <= CBi;
R <= ww_R;
CBo <= ww_CBo;
OV <= ww_OV;
Z <= ww_Z;
GE <= ww_GE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\U5|ALT_INV_GE~combout\ <= NOT \U5|GE~combout\;
\U5|ALT_INV_Z~0_combout\ <= NOT \U5|Z~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|R[0]~3_combout\,
	devoe => ww_devoe,
	o => \R[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|R[1]~6_combout\,
	devoe => ww_devoe,
	o => \R[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|R[2]~9_combout\,
	devoe => ww_devoe,
	o => \R[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|R[3]~12_combout\,
	devoe => ww_devoe,
	o => \R[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\CBo~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|CBo~1_combout\,
	devoe => ww_devoe,
	o => \CBo~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\OV~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|OVo~0_combout\,
	devoe => ww_devoe,
	o => \OV~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\Z~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_Z~0_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\GE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_GE~combout\,
	devoe => ww_devoe,
	o => \GE~output_o\);

-- Location: IOIBUF_X56_Y54_N1
\OP[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\OP[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\OP[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(2),
	o => \OP[2]~input_o\);

-- Location: LCCOMB_X54_Y53_N14
\U4|R[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[0]~2_combout\ = (\OP[1]~input_o\ & !\OP[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[1]~input_o\,
	datad => \OP[2]~input_o\,
	combout => \U4|R[0]~2_combout\);

-- Location: IOIBUF_X51_Y54_N22
\W[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(1),
	o => \W[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\W[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(0),
	o => \W[0]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\Y[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: LCCOMB_X54_Y53_N0
\U4|R[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[0]~0_combout\ = (\W[0]~input_o\ & (((!\OP[1]~input_o\ & \Y[0]~input_o\)) # (!\OP[0]~input_o\))) # (!\W[0]~input_o\ & (\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & \Y[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datab => \W[0]~input_o\,
	datac => \Y[0]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \U4|R[0]~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\CBi~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CBi,
	o => \CBi~input_o\);

-- Location: LCCOMB_X54_Y53_N2
\U1|U0|A0|FA0|R\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA0|R~combout\ = \CBi~input_o\ $ (\W[0]~input_o\ $ (((!\OP[1]~input_o\ & \Y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datab => \CBi~input_o\,
	datac => \Y[0]~input_o\,
	datad => \W[0]~input_o\,
	combout => \U1|U0|A0|FA0|R~combout\);

-- Location: LCCOMB_X54_Y53_N20
\U4|R[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[0]~1_combout\ = (\OP[2]~input_o\ & (((!\U1|U0|A0|FA0|R~combout\)))) # (!\OP[2]~input_o\ & (\U4|R[0]~0_combout\ & ((!\OP[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|R[0]~0_combout\,
	datab => \U1|U0|A0|FA0|R~combout\,
	datac => \OP[1]~input_o\,
	datad => \OP[2]~input_o\,
	combout => \U4|R[0]~1_combout\);

-- Location: LCCOMB_X54_Y53_N8
\U4|R[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[0]~3_combout\ = (\U4|R[0]~1_combout\) # ((\OP[0]~input_o\ & (\U4|R[0]~2_combout\ & \W[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \U4|R[0]~2_combout\,
	datac => \W[1]~input_o\,
	datad => \U4|R[0]~1_combout\,
	combout => \U4|R[0]~3_combout\);

-- Location: IOIBUF_X51_Y54_N1
\W[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(2),
	o => \W[2]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\Y[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LCCOMB_X54_Y53_N10
\U4|R[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[1]~4_combout\ = (\OP[1]~input_o\ & (((\OP[0]~input_o\)))) # (!\OP[1]~input_o\ & ((\Y[1]~input_o\ & ((\W[1]~input_o\) # (!\OP[0]~input_o\))) # (!\Y[1]~input_o\ & (\W[1]~input_o\ $ (\OP[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \W[1]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \U4|R[1]~4_combout\);

-- Location: LCCOMB_X54_Y53_N28
\U4|R[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[1]~5_combout\ = (\OP[1]~input_o\ & ((\U4|R[1]~4_combout\ & (\W[2]~input_o\)) # (!\U4|R[1]~4_combout\ & ((\W[0]~input_o\))))) # (!\OP[1]~input_o\ & (((\U4|R[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[2]~input_o\,
	datab => \W[0]~input_o\,
	datac => \OP[1]~input_o\,
	datad => \U4|R[1]~4_combout\,
	combout => \U4|R[1]~5_combout\);

-- Location: LCCOMB_X54_Y53_N18
\U1|U0|A0|FA1|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA1|R~0_combout\ = \W[1]~input_o\ $ (\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & \Y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \W[1]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \U1|U0|A0|FA1|R~0_combout\);

-- Location: LCCOMB_X54_Y53_N6
\U0|B[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|B\(0) = (\Y[0]~input_o\ & !\OP[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y[0]~input_o\,
	datac => \OP[1]~input_o\,
	combout => \U0|B\(0));

-- Location: LCCOMB_X54_Y53_N24
\U1|U0|A0|FA0|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA0|Cout~0_combout\ = (\U0|B\(0) & ((\CBi~input_o\ & (\W[0]~input_o\)) # (!\CBi~input_o\ & ((!\OP[0]~input_o\))))) # (!\U0|B\(0) & ((\CBi~input_o\ & ((\OP[0]~input_o\))) # (!\CBi~input_o\ & (\W[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|B\(0),
	datab => \W[0]~input_o\,
	datac => \CBi~input_o\,
	datad => \OP[0]~input_o\,
	combout => \U1|U0|A0|FA0|Cout~0_combout\);

-- Location: LCCOMB_X54_Y53_N4
\U4|R[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[1]~6_combout\ = (\OP[2]~input_o\ & ((\U1|U0|A0|FA1|R~0_combout\ $ (\U1|U0|A0|FA0|Cout~0_combout\)))) # (!\OP[2]~input_o\ & (\U4|R[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|R[1]~5_combout\,
	datab => \OP[2]~input_o\,
	datac => \U1|U0|A0|FA1|R~0_combout\,
	datad => \U1|U0|A0|FA0|Cout~0_combout\,
	combout => \U4|R[1]~6_combout\);

-- Location: IOIBUF_X54_Y54_N15
\Y[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LCCOMB_X55_Y53_N24
\U4|R[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[2]~7_combout\ = (\OP[1]~input_o\ & (((\OP[0]~input_o\)))) # (!\OP[1]~input_o\ & ((\W[2]~input_o\ & ((\Y[2]~input_o\) # (!\OP[0]~input_o\))) # (!\W[2]~input_o\ & (\Y[2]~input_o\ $ (\OP[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[2]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \U4|R[2]~7_combout\);

-- Location: IOIBUF_X54_Y54_N29
\W[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W(3),
	o => \W[3]~input_o\);

-- Location: LCCOMB_X55_Y53_N10
\U4|R[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[2]~8_combout\ = (\U4|R[2]~7_combout\ & (((\W[3]~input_o\) # (!\OP[1]~input_o\)))) # (!\U4|R[2]~7_combout\ & (\W[1]~input_o\ & ((\OP[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[1]~input_o\,
	datab => \U4|R[2]~7_combout\,
	datac => \W[3]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \U4|R[2]~8_combout\);

-- Location: LCCOMB_X54_Y53_N22
\U0|B[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|B\(1) = (!\OP[1]~input_o\ & \Y[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[1]~input_o\,
	datad => \Y[1]~input_o\,
	combout => \U0|B\(1));

-- Location: LCCOMB_X54_Y53_N16
\U1|U0|A0|FA1|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA1|Cout~0_combout\ = (\U1|U0|A0|FA0|Cout~0_combout\ & ((\W[1]~input_o\) # (\U0|B\(1) $ (\OP[0]~input_o\)))) # (!\U1|U0|A0|FA0|Cout~0_combout\ & (\W[1]~input_o\ & (\U0|B\(1) $ (\OP[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|B\(1),
	datab => \U1|U0|A0|FA0|Cout~0_combout\,
	datac => \W[1]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \U1|U0|A0|FA1|Cout~0_combout\);

-- Location: LCCOMB_X55_Y53_N28
\U1|U0|A0|FA2|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA2|R~0_combout\ = \W[2]~input_o\ $ (\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & \Y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[2]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \U1|U0|A0|FA2|R~0_combout\);

-- Location: LCCOMB_X55_Y53_N6
\U4|R[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[2]~9_combout\ = (\OP[2]~input_o\ & ((\U1|U0|A0|FA1|Cout~0_combout\ $ (\U1|U0|A0|FA2|R~0_combout\)))) # (!\OP[2]~input_o\ & (\U4|R[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|R[2]~8_combout\,
	datab => \OP[2]~input_o\,
	datac => \U1|U0|A0|FA1|Cout~0_combout\,
	datad => \U1|U0|A0|FA2|R~0_combout\,
	combout => \U4|R[2]~9_combout\);

-- Location: LCCOMB_X55_Y53_N12
\U0|B[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|B\(2) = (\Y[2]~input_o\ & !\OP[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[2]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \U0|B\(2));

-- Location: LCCOMB_X55_Y53_N30
\U1|U0|A0|FA2|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA2|Cout~0_combout\ = (\W[2]~input_o\ & ((\U1|U0|A0|FA1|Cout~0_combout\) # (\U0|B\(2) $ (\OP[0]~input_o\)))) # (!\W[2]~input_o\ & (\U1|U0|A0|FA1|Cout~0_combout\ & (\U0|B\(2) $ (\OP[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U0|B\(2),
	datab => \W[2]~input_o\,
	datac => \U1|U0|A0|FA1|Cout~0_combout\,
	datad => \OP[0]~input_o\,
	combout => \U1|U0|A0|FA2|Cout~0_combout\);

-- Location: IOIBUF_X58_Y54_N29
\Y[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X55_Y53_N8
\U1|U0|A0|FA3|R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA3|R~0_combout\ = \W[3]~input_o\ $ (\OP[0]~input_o\ $ (((!\OP[1]~input_o\ & \Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \U1|U0|A0|FA3|R~0_combout\);

-- Location: LCCOMB_X55_Y53_N0
\U4|R[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[3]~10_combout\ = (\OP[1]~input_o\ & (((\OP[0]~input_o\)))) # (!\OP[1]~input_o\ & ((\W[3]~input_o\ & ((\Y[3]~input_o\) # (!\OP[0]~input_o\))) # (!\W[3]~input_o\ & (\Y[3]~input_o\ $ (\OP[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~input_o\,
	datab => \OP[1]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \U4|R[3]~10_combout\);

-- Location: LCCOMB_X55_Y53_N18
\U4|R[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[3]~11_combout\ = (\U4|R[3]~10_combout\ & (((\W[3]~input_o\) # (!\OP[1]~input_o\)))) # (!\U4|R[3]~10_combout\ & (\W[2]~input_o\ & ((\OP[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[2]~input_o\,
	datab => \U4|R[3]~10_combout\,
	datac => \W[3]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \U4|R[3]~11_combout\);

-- Location: LCCOMB_X55_Y53_N2
\U4|R[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|R[3]~12_combout\ = (\OP[2]~input_o\ & (\U1|U0|A0|FA2|Cout~0_combout\ $ ((\U1|U0|A0|FA3|R~0_combout\)))) # (!\OP[2]~input_o\ & (((\U4|R[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|A0|FA2|Cout~0_combout\,
	datab => \OP[2]~input_o\,
	datac => \U1|U0|A0|FA3|R~0_combout\,
	datad => \U4|R[3]~11_combout\,
	combout => \U4|R[3]~12_combout\);

-- Location: LCCOMB_X54_Y53_N26
\U5|CBo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CBo~0_combout\ = (\U4|R[0]~2_combout\ & ((\OP[0]~input_o\ & ((\W[0]~input_o\))) # (!\OP[0]~input_o\ & (\W[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W[3]~input_o\,
	datab => \W[0]~input_o\,
	datac => \U4|R[0]~2_combout\,
	datad => \OP[0]~input_o\,
	combout => \U5|CBo~0_combout\);

-- Location: LCCOMB_X55_Y53_N4
\U0|B[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U0|B\(3) = (\Y[3]~input_o\ & !\OP[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Y[3]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \U0|B\(3));

-- Location: LCCOMB_X55_Y53_N22
\U1|U0|A0|FA3|Cout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|A0|FA3|Cout~0_combout\ = (\U1|U0|A0|FA2|Cout~0_combout\ & ((\W[3]~input_o\) # (\U0|B\(3) $ (\OP[0]~input_o\)))) # (!\U1|U0|A0|FA2|Cout~0_combout\ & (\W[3]~input_o\ & (\U0|B\(3) $ (\OP[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|A0|FA2|Cout~0_combout\,
	datab => \U0|B\(3),
	datac => \W[3]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \U1|U0|A0|FA3|Cout~0_combout\);

-- Location: LCCOMB_X54_Y53_N12
\U5|CBo~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|CBo~1_combout\ = (\U5|CBo~0_combout\) # ((\OP[2]~input_o\ & (\OP[0]~input_o\ $ (\U1|U0|A0|FA3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[2]~input_o\,
	datac => \U5|CBo~0_combout\,
	datad => \U1|U0|A0|FA3|Cout~0_combout\,
	combout => \U5|CBo~1_combout\);

-- Location: LCCOMB_X55_Y53_N16
\U1|U0|Bx[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|U0|Bx\(3) = \OP[0]~input_o\ $ (((\Y[3]~input_o\ & !\OP[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \U1|U0|Bx\(3));

-- Location: LCCOMB_X55_Y53_N26
\U5|OVo~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|OVo~0_combout\ = (\OP[2]~input_o\ & ((\U1|U0|A0|FA2|Cout~0_combout\ & (!\W[3]~input_o\ & !\U1|U0|Bx\(3))) # (!\U1|U0|A0|FA2|Cout~0_combout\ & (\W[3]~input_o\ & \U1|U0|Bx\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|U0|A0|FA2|Cout~0_combout\,
	datab => \OP[2]~input_o\,
	datac => \W[3]~input_o\,
	datad => \U1|U0|Bx\(3),
	combout => \U5|OVo~0_combout\);

-- Location: LCCOMB_X54_Y53_N30
\U5|Z~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|Z~0_combout\ = (\U4|R[3]~12_combout\) # ((\U4|R[1]~6_combout\) # ((\U4|R[0]~3_combout\) # (\U4|R[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|R[3]~12_combout\,
	datab => \U4|R[1]~6_combout\,
	datac => \U4|R[0]~3_combout\,
	datad => \U4|R[2]~9_combout\,
	combout => \U5|Z~0_combout\);

-- Location: LCCOMB_X55_Y53_N20
\U5|GE\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U5|GE~combout\ = (((\OP[1]~input_o\) # (!\U1|U0|A0|FA3|Cout~0_combout\)) # (!\OP[2]~input_o\)) # (!\OP[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \OP[2]~input_o\,
	datac => \U1|U0|A0|FA3|Cout~0_combout\,
	datad => \OP[1]~input_o\,
	combout => \U5|GE~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_R(0) <= \R[0]~output_o\;

ww_R(1) <= \R[1]~output_o\;

ww_R(2) <= \R[2]~output_o\;

ww_R(3) <= \R[3]~output_o\;

ww_CBo <= \CBo~output_o\;

ww_OV <= \OV~output_o\;

ww_Z <= \Z~output_o\;

ww_GE <= \GE~output_o\;
END structure;


