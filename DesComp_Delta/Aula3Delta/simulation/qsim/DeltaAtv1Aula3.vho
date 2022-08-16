-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "08/11/2022 15:54:17"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DeltaAtv1Aula3 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END DeltaAtv1Aula3;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DeltaAtv1Aula3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Contador|DOUT[0]~2_combout\ : std_logic;
SIGNAL \Contador|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Somador|Add0~0_combout\ : std_logic;
SIGNAL \Contador|DOUT[2]~1_combout\ : std_logic;
SIGNAL \Contador|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador|DOUT[3]~0_combout\ : std_logic;
SIGNAL \DHEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DHEX0|saida7seg~0_combout\ : std_logic;
SIGNAL \Contador|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \DHEX0|saida7seg~1_combout\ : std_logic;
SIGNAL \DHEX0|saida7seg~2_combout\ : std_logic;
SIGNAL \DHEX0|rascSaida7seg[3]~1_combout\ : std_logic;
SIGNAL \DHEX0|saida7seg~3_combout\ : std_logic;
SIGNAL \DHEX0|rascSaida7seg[4]~2_combout\ : std_logic;
SIGNAL \DHEX0|saida7seg~4_combout\ : std_logic;
SIGNAL \DHEX0|rascSaida7seg[5]~3_combout\ : std_logic;
SIGNAL \DHEX0|saida7seg~5_combout\ : std_logic;
SIGNAL \DHEX0|saida7seg~6_combout\ : std_logic;
SIGNAL \DHEX1|saida7seg~0_combout\ : std_logic;
SIGNAL \DHEX1|saida7seg~1_combout\ : std_logic;
SIGNAL \DHEX1|saida7seg~2_combout\ : std_logic;
SIGNAL \DHEX1|saida7seg~3_combout\ : std_logic;
SIGNAL \DHEX1|saida7seg~4_combout\ : std_logic;
SIGNAL \DHEX1|saida7seg~5_combout\ : std_logic;
SIGNAL \DHEX1|saida7seg~6_combout\ : std_logic;
SIGNAL \DHEX2|saida7seg~0_combout\ : std_logic;
SIGNAL \DHEX2|saida7seg~1_combout\ : std_logic;
SIGNAL \DHEX2|saida7seg~2_combout\ : std_logic;
SIGNAL \DHEX2|saida7seg~3_combout\ : std_logic;
SIGNAL \DHEX2|saida7seg~4_combout\ : std_logic;
SIGNAL \DHEX2|saida7seg~5_combout\ : std_logic;
SIGNAL \DHEX2|saida7seg~6_combout\ : std_logic;
SIGNAL \DHEX3|saida7seg~0_combout\ : std_logic;
SIGNAL \DHEX3|saida7seg~1_combout\ : std_logic;
SIGNAL \DHEX3|saida7seg~2_combout\ : std_logic;
SIGNAL \DHEX3|saida7seg~3_combout\ : std_logic;
SIGNAL \DHEX3|saida7seg~4_combout\ : std_logic;
SIGNAL \DHEX3|saida7seg~5_combout\ : std_logic;
SIGNAL \DHEX3|saida7seg~6_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Contador|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \DHEX0|ALT_INV_rascSaida7seg[5]~3_combout\ : std_logic;
SIGNAL \DHEX0|ALT_INV_rascSaida7seg[4]~2_combout\ : std_logic;
SIGNAL \DHEX0|ALT_INV_rascSaida7seg[3]~1_combout\ : std_logic;
SIGNAL \DHEX0|ALT_INV_rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \Contador|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Contador|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \Contador|DOUT[1]~DUPLICATE_q\;
\Contador|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \Contador|DOUT[2]~DUPLICATE_q\;
\Contador|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \Contador|DOUT[0]~DUPLICATE_q\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\DHEX0|ALT_INV_rascSaida7seg[5]~3_combout\ <= NOT \DHEX0|rascSaida7seg[5]~3_combout\;
\DHEX0|ALT_INV_rascSaida7seg[4]~2_combout\ <= NOT \DHEX0|rascSaida7seg[4]~2_combout\;
\DHEX0|ALT_INV_rascSaida7seg[3]~1_combout\ <= NOT \DHEX0|rascSaida7seg[3]~1_combout\;
\DHEX0|ALT_INV_rascSaida7seg[0]~0_combout\ <= NOT \DHEX0|rascSaida7seg[0]~0_combout\;
\Contador|ALT_INV_DOUT\(1) <= NOT \Contador|DOUT\(1);
\Contador|ALT_INV_DOUT\(2) <= NOT \Contador|DOUT\(2);
\Contador|ALT_INV_DOUT\(3) <= NOT \Contador|DOUT\(3);
\Contador|ALT_INV_DOUT\(0) <= NOT \Contador|DOUT\(0);

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX0|saida7seg~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX0|saida7seg~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX0|saida7seg~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX0|saida7seg~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX0|saida7seg~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX0|saida7seg~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX0|saida7seg~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX1|saida7seg~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX1|saida7seg~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX1|saida7seg~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX1|saida7seg~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX1|saida7seg~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX1|saida7seg~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX1|saida7seg~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX2|saida7seg~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X38_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX2|saida7seg~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X22_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX2|saida7seg~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X36_Y0_N19
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX2|saida7seg~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X38_Y0_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX2|saida7seg~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X46_Y0_N53
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX2|saida7seg~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX2|saida7seg~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX3|saida7seg~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X46_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX3|saida7seg~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X40_Y0_N42
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX3|saida7seg~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X46_Y0_N19
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX3|saida7seg~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X52_Y0_N2
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX3|saida7seg~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X51_Y0_N2
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX3|saida7seg~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DHEX3|saida7seg~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[8]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G4
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: FF_X44_Y1_N32
\Contador|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Contador|DOUT[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|DOUT\(0));

-- Location: LABCELL_X44_Y1_N30
\Contador|DOUT[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador|DOUT[0]~2_combout\ = !\Contador|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador|ALT_INV_DOUT\(0),
	combout => \Contador|DOUT[0]~2_combout\);

-- Location: FF_X44_Y1_N31
\Contador|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Contador|DOUT[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|DOUT[0]~DUPLICATE_q\);

-- Location: MLABCELL_X45_Y1_N27
\Somador|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Somador|Add0~0_combout\ = ( \Contador|DOUT[0]~DUPLICATE_q\ & ( !\Contador|DOUT\(1) ) ) # ( !\Contador|DOUT[0]~DUPLICATE_q\ & ( \Contador|DOUT\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Contador|ALT_INV_DOUT\(1),
	dataf => \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \Somador|Add0~0_combout\);

-- Location: FF_X45_Y1_N29
\Contador|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Somador|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|DOUT\(1));

-- Location: MLABCELL_X45_Y1_N18
\Contador|DOUT[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador|DOUT[2]~1_combout\ = ( \Contador|DOUT[0]~DUPLICATE_q\ & ( !\Contador|DOUT\(1) $ (!\Contador|DOUT\(2)) ) ) # ( !\Contador|DOUT[0]~DUPLICATE_q\ & ( \Contador|DOUT\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Contador|ALT_INV_DOUT\(1),
	datad => \Contador|ALT_INV_DOUT\(2),
	dataf => \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \Contador|DOUT[2]~1_combout\);

-- Location: FF_X45_Y1_N20
\Contador|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Contador|DOUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|DOUT\(2));

-- Location: FF_X45_Y1_N28
\Contador|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Somador|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|DOUT[1]~DUPLICATE_q\);

-- Location: MLABCELL_X45_Y1_N48
\Contador|DOUT[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Contador|DOUT[3]~0_combout\ = ( \Contador|DOUT[0]~DUPLICATE_q\ & ( !\Contador|DOUT\(3) $ (((!\Contador|DOUT\(2)) # (!\Contador|DOUT\(1)))) ) ) # ( !\Contador|DOUT[0]~DUPLICATE_q\ & ( \Contador|DOUT\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|ALT_INV_DOUT\(2),
	datac => \Contador|ALT_INV_DOUT\(1),
	datad => \Contador|ALT_INV_DOUT\(3),
	dataf => \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \Contador|DOUT[3]~0_combout\);

-- Location: FF_X45_Y1_N49
\Contador|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Contador|DOUT[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|DOUT\(3));

-- Location: MLABCELL_X45_Y1_N51
\DHEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|rascSaida7seg[0]~0_combout\ = ( \Contador|DOUT[0]~DUPLICATE_q\ & ( (!\Contador|DOUT\(2) & (!\Contador|DOUT[1]~DUPLICATE_q\ $ (\Contador|DOUT\(3)))) # (\Contador|DOUT\(2) & (!\Contador|DOUT[1]~DUPLICATE_q\ & \Contador|DOUT\(3))) ) ) # ( 
-- !\Contador|DOUT[0]~DUPLICATE_q\ & ( (\Contador|DOUT\(2) & (!\Contador|DOUT[1]~DUPLICATE_q\ & !\Contador|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010000110100001101000011010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|ALT_INV_DOUT\(2),
	datab => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \Contador|ALT_INV_DOUT\(3),
	dataf => \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \DHEX0|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X45_Y1_N24
\DHEX0|saida7seg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|saida7seg~0_combout\ = ( \DHEX0|rascSaida7seg[0]~0_combout\ ) # ( !\DHEX0|rascSaida7seg[0]~0_combout\ & ( (\SW[1]~input_o\) # (\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	dataf => \DHEX0|ALT_INV_rascSaida7seg[0]~0_combout\,
	combout => \DHEX0|saida7seg~0_combout\);

-- Location: FF_X45_Y1_N19
\Contador|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Contador|DOUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Contador|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X45_Y1_N6
\DHEX0|saida7seg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|saida7seg~1_combout\ = ( \Contador|DOUT\(3) & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( (((\SW[0]~input_o\) # (\Contador|DOUT[0]~DUPLICATE_q\)) # (\Contador|DOUT[2]~DUPLICATE_q\)) # (\SW[1]~input_o\) ) ) ) # ( !\Contador|DOUT\(3) & ( 
-- \Contador|DOUT[1]~DUPLICATE_q\ & ( (((\Contador|DOUT[2]~DUPLICATE_q\ & !\Contador|DOUT[0]~DUPLICATE_q\)) # (\SW[0]~input_o\)) # (\SW[1]~input_o\) ) ) ) # ( \Contador|DOUT\(3) & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( (((\Contador|DOUT[2]~DUPLICATE_q\ & 
-- !\Contador|DOUT[0]~DUPLICATE_q\)) # (\SW[0]~input_o\)) # (\SW[1]~input_o\) ) ) ) # ( !\Contador|DOUT\(3) & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( (((\Contador|DOUT[2]~DUPLICATE_q\ & \Contador|DOUT[0]~DUPLICATE_q\)) # (\SW[0]~input_o\)) # (\SW[1]~input_o\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111111111011101011111111101110101111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \Contador|ALT_INV_DOUT\(3),
	dataf => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \DHEX0|saida7seg~1_combout\);

-- Location: MLABCELL_X45_Y1_N36
\DHEX0|saida7seg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|saida7seg~2_combout\ = ( \Contador|DOUT\(3) & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( ((\SW[0]~input_o\) # (\Contador|DOUT[2]~DUPLICATE_q\)) # (\SW[1]~input_o\) ) ) ) # ( !\Contador|DOUT\(3) & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( 
-- (((!\Contador|DOUT[2]~DUPLICATE_q\ & !\Contador|DOUT[0]~DUPLICATE_q\)) # (\SW[0]~input_o\)) # (\SW[1]~input_o\) ) ) ) # ( \Contador|DOUT\(3) & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( (((\Contador|DOUT[2]~DUPLICATE_q\ & !\Contador|DOUT[0]~DUPLICATE_q\)) # 
-- (\SW[0]~input_o\)) # (\SW[1]~input_o\) ) ) ) # ( !\Contador|DOUT\(3) & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( (\SW[0]~input_o\) # (\SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111011101011111111111010101111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \Contador|ALT_INV_DOUT\(3),
	dataf => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \DHEX0|saida7seg~2_combout\);

-- Location: LABCELL_X44_Y1_N54
\DHEX0|rascSaida7seg[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|rascSaida7seg[3]~1_combout\ = ( \Contador|DOUT[2]~DUPLICATE_q\ & ( (!\Contador|DOUT\(0) & (!\Contador|DOUT[1]~DUPLICATE_q\ & !\Contador|DOUT\(3))) # (\Contador|DOUT\(0) & (\Contador|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\Contador|DOUT[2]~DUPLICATE_q\ & ( 
-- (!\Contador|DOUT\(0) & (\Contador|DOUT[1]~DUPLICATE_q\ & \Contador|DOUT\(3))) # (\Contador|DOUT\(0) & (!\Contador|DOUT[1]~DUPLICATE_q\ & !\Contador|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|ALT_INV_DOUT\(0),
	datab => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \Contador|ALT_INV_DOUT\(3),
	dataf => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \DHEX0|rascSaida7seg[3]~1_combout\);

-- Location: LABCELL_X44_Y1_N12
\DHEX0|saida7seg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|saida7seg~3_combout\ = ((\SW[1]~input_o\) # (\SW[0]~input_o\)) # (\DHEX0|rascSaida7seg[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DHEX0|ALT_INV_rascSaida7seg[3]~1_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	combout => \DHEX0|saida7seg~3_combout\);

-- Location: LABCELL_X43_Y1_N24
\DHEX0|rascSaida7seg[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|rascSaida7seg[4]~2_combout\ = ( \Contador|DOUT[2]~DUPLICATE_q\ & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( (!\Contador|DOUT\(3) & \Contador|DOUT\(0)) ) ) ) # ( !\Contador|DOUT[2]~DUPLICATE_q\ & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( (!\Contador|DOUT\(3) & 
-- \Contador|DOUT\(0)) ) ) ) # ( \Contador|DOUT[2]~DUPLICATE_q\ & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( !\Contador|DOUT\(3) ) ) ) # ( !\Contador|DOUT[2]~DUPLICATE_q\ & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( \Contador|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111110011001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Contador|ALT_INV_DOUT\(3),
	datac => \Contador|ALT_INV_DOUT\(0),
	datae => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \DHEX0|rascSaida7seg[4]~2_combout\);

-- Location: LABCELL_X44_Y1_N42
\DHEX0|saida7seg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|saida7seg~4_combout\ = ( \DHEX0|rascSaida7seg[4]~2_combout\ ) # ( !\DHEX0|rascSaida7seg[4]~2_combout\ & ( (\SW[0]~input_o\) # (\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	dataf => \DHEX0|ALT_INV_rascSaida7seg[4]~2_combout\,
	combout => \DHEX0|saida7seg~4_combout\);

-- Location: LABCELL_X43_Y1_N45
\DHEX0|rascSaida7seg[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|rascSaida7seg[5]~3_combout\ = ( \Contador|DOUT[2]~DUPLICATE_q\ & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( (\Contador|DOUT\(0) & !\Contador|DOUT\(3)) ) ) ) # ( !\Contador|DOUT[2]~DUPLICATE_q\ & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( !\Contador|DOUT\(3) ) 
-- ) ) # ( \Contador|DOUT[2]~DUPLICATE_q\ & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( (\Contador|DOUT\(0) & \Contador|DOUT\(3)) ) ) ) # ( !\Contador|DOUT[2]~DUPLICATE_q\ & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( (\Contador|DOUT\(0) & !\Contador|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000001010000010111110000111100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|ALT_INV_DOUT\(0),
	datac => \Contador|ALT_INV_DOUT\(3),
	datae => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \DHEX0|rascSaida7seg[5]~3_combout\);

-- Location: LABCELL_X44_Y1_N9
\DHEX0|saida7seg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|saida7seg~5_combout\ = ( \DHEX0|rascSaida7seg[5]~3_combout\ ) # ( !\DHEX0|rascSaida7seg[5]~3_combout\ & ( (\SW[0]~input_o\) # (\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	dataf => \DHEX0|ALT_INV_rascSaida7seg[5]~3_combout\,
	combout => \DHEX0|saida7seg~5_combout\);

-- Location: MLABCELL_X45_Y1_N42
\DHEX0|saida7seg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX0|saida7seg~6_combout\ = ( \Contador|DOUT\(3) & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( (\SW[0]~input_o\) # (\SW[1]~input_o\) ) ) ) # ( !\Contador|DOUT\(3) & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( (((\Contador|DOUT\(0) & \Contador|DOUT[2]~DUPLICATE_q\)) # 
-- (\SW[0]~input_o\)) # (\SW[1]~input_o\) ) ) ) # ( \Contador|DOUT\(3) & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( (((!\Contador|DOUT\(0) & \Contador|DOUT[2]~DUPLICATE_q\)) # (\SW[0]~input_o\)) # (\SW[1]~input_o\) ) ) ) # ( !\Contador|DOUT\(3) & ( 
-- !\Contador|DOUT[1]~DUPLICATE_q\ & ( ((!\Contador|DOUT[2]~DUPLICATE_q\) # (\SW[0]~input_o\)) # (\SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111010111011111111101010111111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \Contador|ALT_INV_DOUT\(0),
	datac => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \Contador|ALT_INV_DOUT\(3),
	dataf => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \DHEX0|saida7seg~6_combout\);

-- Location: LABCELL_X44_Y1_N33
\DHEX1|saida7seg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|saida7seg~0_combout\ = ( \DHEX0|rascSaida7seg[0]~0_combout\ ) # ( !\DHEX0|rascSaida7seg[0]~0_combout\ & ( (!\SW[0]~input_o\) # (\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \DHEX0|ALT_INV_rascSaida7seg[0]~0_combout\,
	combout => \DHEX1|saida7seg~0_combout\);

-- Location: MLABCELL_X45_Y1_N0
\DHEX1|saida7seg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|saida7seg~1_combout\ = ( \SW[0]~input_o\ & ( \SW[1]~input_o\ ) ) # ( !\SW[0]~input_o\ & ( \SW[1]~input_o\ ) ) # ( \SW[0]~input_o\ & ( !\SW[1]~input_o\ & ( (!\Contador|DOUT\(3) & (\Contador|DOUT[2]~DUPLICATE_q\ & (!\Contador|DOUT[0]~DUPLICATE_q\ $ 
-- (!\Contador|DOUT[1]~DUPLICATE_q\)))) # (\Contador|DOUT\(3) & ((!\Contador|DOUT[0]~DUPLICATE_q\ & (\Contador|DOUT[2]~DUPLICATE_q\)) # (\Contador|DOUT[0]~DUPLICATE_q\ & ((\Contador|DOUT[1]~DUPLICATE_q\))))) ) ) ) # ( !\SW[0]~input_o\ & ( !\SW[1]~input_o\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000101000101001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \Contador|ALT_INV_DOUT\(3),
	datac => \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \DHEX1|saida7seg~1_combout\);

-- Location: MLABCELL_X45_Y1_N54
\DHEX1|saida7seg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|saida7seg~2_combout\ = ( \SW[0]~input_o\ & ( \SW[1]~input_o\ ) ) # ( !\SW[0]~input_o\ & ( \SW[1]~input_o\ ) ) # ( \SW[0]~input_o\ & ( !\SW[1]~input_o\ & ( (!\Contador|DOUT[2]~DUPLICATE_q\ & (\Contador|DOUT[1]~DUPLICATE_q\ & 
-- (!\Contador|DOUT[0]~DUPLICATE_q\ & !\Contador|DOUT\(3)))) # (\Contador|DOUT[2]~DUPLICATE_q\ & (\Contador|DOUT\(3) & ((!\Contador|DOUT[0]~DUPLICATE_q\) # (\Contador|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\SW[0]~input_o\ & ( !\SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010000000011000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Contador|ALT_INV_DOUT\(3),
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \DHEX1|saida7seg~2_combout\);

-- Location: LABCELL_X44_Y1_N15
\DHEX1|saida7seg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|saida7seg~3_combout\ = ((!\SW[0]~input_o\) # (\SW[1]~input_o\)) # (\DHEX0|rascSaida7seg[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111111110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DHEX0|ALT_INV_rascSaida7seg[3]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \DHEX1|saida7seg~3_combout\);

-- Location: LABCELL_X44_Y1_N24
\DHEX1|saida7seg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|saida7seg~4_combout\ = ( \DHEX0|rascSaida7seg[4]~2_combout\ ) # ( !\DHEX0|rascSaida7seg[4]~2_combout\ & ( (!\SW[0]~input_o\) # (\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	dataf => \DHEX0|ALT_INV_rascSaida7seg[4]~2_combout\,
	combout => \DHEX1|saida7seg~4_combout\);

-- Location: LABCELL_X44_Y1_N6
\DHEX1|saida7seg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|saida7seg~5_combout\ = ( \DHEX0|rascSaida7seg[5]~3_combout\ ) # ( !\DHEX0|rascSaida7seg[5]~3_combout\ & ( (!\SW[0]~input_o\) # (\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111011101110111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	dataf => \DHEX0|ALT_INV_rascSaida7seg[5]~3_combout\,
	combout => \DHEX1|saida7seg~5_combout\);

-- Location: MLABCELL_X45_Y1_N12
\DHEX1|saida7seg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX1|saida7seg~6_combout\ = ( \SW[0]~input_o\ & ( \SW[1]~input_o\ ) ) # ( !\SW[0]~input_o\ & ( \SW[1]~input_o\ ) ) # ( \SW[0]~input_o\ & ( !\SW[1]~input_o\ & ( (!\Contador|DOUT[0]~DUPLICATE_q\ & (!\Contador|DOUT[1]~DUPLICATE_q\ & 
-- (!\Contador|DOUT[2]~DUPLICATE_q\ $ (\Contador|DOUT\(3))))) # (\Contador|DOUT[0]~DUPLICATE_q\ & (!\Contador|DOUT\(3) & (!\Contador|DOUT[2]~DUPLICATE_q\ $ (\Contador|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\SW[0]~input_o\ & ( !\SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111100110000000010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \Contador|ALT_INV_DOUT\(3),
	datac => \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \DHEX1|saida7seg~6_combout\);

-- Location: MLABCELL_X45_Y1_N21
\DHEX2|saida7seg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|saida7seg~0_combout\ = ( \DHEX0|rascSaida7seg[0]~0_combout\ ) # ( !\DHEX0|rascSaida7seg[0]~0_combout\ & ( (!\SW[1]~input_o\) # (\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \DHEX0|ALT_INV_rascSaida7seg[0]~0_combout\,
	combout => \DHEX2|saida7seg~0_combout\);

-- Location: MLABCELL_X45_Y1_N3
\DHEX2|saida7seg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|saida7seg~1_combout\ = ( \SW[1]~input_o\ & ( \SW[0]~input_o\ ) ) # ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ ) ) # ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ & ( (!\Contador|DOUT\(3) & (\Contador|DOUT[2]~DUPLICATE_q\ & (!\Contador|DOUT[1]~DUPLICATE_q\ $ 
-- (!\Contador|DOUT[0]~DUPLICATE_q\)))) # (\Contador|DOUT\(3) & ((!\Contador|DOUT[0]~DUPLICATE_q\ & (\Contador|DOUT[2]~DUPLICATE_q\)) # (\Contador|DOUT[0]~DUPLICATE_q\ & ((\Contador|DOUT[1]~DUPLICATE_q\))))) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[0]~input_o\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000101010100001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \Contador|ALT_INV_DOUT\(3),
	datac => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \DHEX2|saida7seg~1_combout\);

-- Location: MLABCELL_X45_Y1_N57
\DHEX2|saida7seg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|saida7seg~2_combout\ = ( \SW[1]~input_o\ & ( \SW[0]~input_o\ ) ) # ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ ) ) # ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ & ( (!\Contador|DOUT[2]~DUPLICATE_q\ & (\Contador|DOUT[1]~DUPLICATE_q\ & (!\Contador|DOUT\(3) & 
-- !\Contador|DOUT[0]~DUPLICATE_q\))) # (\Contador|DOUT[2]~DUPLICATE_q\ & (\Contador|DOUT\(3) & ((!\Contador|DOUT[0]~DUPLICATE_q\) # (\Contador|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010000110000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Contador|ALT_INV_DOUT\(3),
	datad => \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \DHEX2|saida7seg~2_combout\);

-- Location: LABCELL_X44_Y1_N21
\DHEX2|saida7seg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|saida7seg~3_combout\ = ((!\SW[1]~input_o\) # (\SW[0]~input_o\)) # (\DHEX0|rascSaida7seg[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111111111110101111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DHEX0|ALT_INV_rascSaida7seg[3]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \DHEX2|saida7seg~3_combout\);

-- Location: LABCELL_X44_Y1_N27
\DHEX2|saida7seg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|saida7seg~4_combout\ = ( \DHEX0|rascSaida7seg[4]~2_combout\ ) # ( !\DHEX0|rascSaida7seg[4]~2_combout\ & ( (!\SW[1]~input_o\) # (\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \DHEX0|ALT_INV_rascSaida7seg[4]~2_combout\,
	combout => \DHEX2|saida7seg~4_combout\);

-- Location: LABCELL_X44_Y1_N36
\DHEX2|saida7seg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|saida7seg~5_combout\ = ( \DHEX0|rascSaida7seg[5]~3_combout\ ) # ( !\DHEX0|rascSaida7seg[5]~3_combout\ & ( (!\SW[1]~input_o\) # (\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	dataf => \DHEX0|ALT_INV_rascSaida7seg[5]~3_combout\,
	combout => \DHEX2|saida7seg~5_combout\);

-- Location: MLABCELL_X45_Y1_N15
\DHEX2|saida7seg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX2|saida7seg~6_combout\ = ( \SW[1]~input_o\ & ( \SW[0]~input_o\ ) ) # ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ ) ) # ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ & ( (!\Contador|DOUT[0]~DUPLICATE_q\ & (!\Contador|DOUT[1]~DUPLICATE_q\ & 
-- (!\Contador|DOUT[2]~DUPLICATE_q\ $ (\Contador|DOUT\(3))))) # (\Contador|DOUT[0]~DUPLICATE_q\ & (!\Contador|DOUT\(3) & (!\Contador|DOUT[2]~DUPLICATE_q\ $ (\Contador|DOUT[1]~DUPLICATE_q\)))) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111100100001000010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \Contador|ALT_INV_DOUT\(3),
	datac => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \Contador|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \DHEX2|saida7seg~6_combout\);

-- Location: LABCELL_X44_Y1_N57
\DHEX3|saida7seg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|saida7seg~0_combout\ = ( \DHEX0|rascSaida7seg[0]~0_combout\ ) # ( !\DHEX0|rascSaida7seg[0]~0_combout\ & ( (!\SW[0]~input_o\) # (!\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \DHEX0|ALT_INV_rascSaida7seg[0]~0_combout\,
	combout => \DHEX3|saida7seg~0_combout\);

-- Location: LABCELL_X44_Y1_N48
\DHEX3|saida7seg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|saida7seg~1_combout\ = ( \SW[1]~input_o\ & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( (!\SW[0]~input_o\) # ((!\Contador|DOUT\(0) & ((\Contador|DOUT[2]~DUPLICATE_q\))) # (\Contador|DOUT\(0) & (\Contador|DOUT\(3)))) ) ) ) # ( !\SW[1]~input_o\ & ( 
-- \Contador|DOUT[1]~DUPLICATE_q\ ) ) # ( \SW[1]~input_o\ & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( (!\SW[0]~input_o\) # ((\Contador|DOUT[2]~DUPLICATE_q\ & (!\Contador|DOUT\(3) $ (!\Contador|DOUT\(0))))) ) ) ) # ( !\SW[1]~input_o\ & ( 
-- !\Contador|DOUT[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100011111001011111111111111111111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|ALT_INV_DOUT\(3),
	datab => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \Contador|ALT_INV_DOUT\(0),
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \DHEX3|saida7seg~1_combout\);

-- Location: LABCELL_X44_Y1_N0
\DHEX3|saida7seg~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|saida7seg~2_combout\ = ( \SW[1]~input_o\ & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( (!\SW[0]~input_o\) # ((!\Contador|DOUT\(3) & (!\Contador|DOUT[2]~DUPLICATE_q\ & !\Contador|DOUT\(0))) # (\Contador|DOUT\(3) & (\Contador|DOUT[2]~DUPLICATE_q\))) ) ) ) # 
-- ( !\SW[1]~input_o\ & ( \Contador|DOUT[1]~DUPLICATE_q\ ) ) # ( \SW[1]~input_o\ & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( (!\SW[0]~input_o\) # ((\Contador|DOUT\(3) & (\Contador|DOUT[2]~DUPLICATE_q\ & !\Contador|DOUT\(0)))) ) ) ) # ( !\SW[1]~input_o\ & ( 
-- !\Contador|DOUT[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100011111000011111111111111111111100111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Contador|ALT_INV_DOUT\(3),
	datab => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \Contador|ALT_INV_DOUT\(0),
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \DHEX3|saida7seg~2_combout\);

-- Location: LABCELL_X44_Y1_N18
\DHEX3|saida7seg~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|saida7seg~3_combout\ = (!\SW[0]~input_o\) # ((!\SW[1]~input_o\) # (\DHEX0|rascSaida7seg[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001111111111111100111111111111110011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \DHEX0|ALT_INV_rascSaida7seg[3]~1_combout\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \DHEX3|saida7seg~3_combout\);

-- Location: LABCELL_X44_Y1_N45
\DHEX3|saida7seg~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|saida7seg~4_combout\ = ( \DHEX0|rascSaida7seg[4]~2_combout\ ) # ( !\DHEX0|rascSaida7seg[4]~2_combout\ & ( (!\SW[1]~input_o\) # (!\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \DHEX0|ALT_INV_rascSaida7seg[4]~2_combout\,
	combout => \DHEX3|saida7seg~4_combout\);

-- Location: LABCELL_X44_Y1_N39
\DHEX3|saida7seg~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|saida7seg~5_combout\ = ( \DHEX0|rascSaida7seg[5]~3_combout\ ) # ( !\DHEX0|rascSaida7seg[5]~3_combout\ & ( (!\SW[1]~input_o\) # (!\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	dataf => \DHEX0|ALT_INV_rascSaida7seg[5]~3_combout\,
	combout => \DHEX3|saida7seg~5_combout\);

-- Location: MLABCELL_X45_Y1_N30
\DHEX3|saida7seg~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DHEX3|saida7seg~6_combout\ = ( \Contador|DOUT\(3) & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( (!\SW[1]~input_o\) # (!\SW[0]~input_o\) ) ) ) # ( !\Contador|DOUT\(3) & ( \Contador|DOUT[1]~DUPLICATE_q\ & ( (!\SW[1]~input_o\) # ((!\SW[0]~input_o\) # 
-- ((\Contador|DOUT\(0) & \Contador|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( \Contador|DOUT\(3) & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( (!\SW[1]~input_o\) # ((!\SW[0]~input_o\) # ((!\Contador|DOUT\(0) & \Contador|DOUT[2]~DUPLICATE_q\))) ) ) ) # ( 
-- !\Contador|DOUT\(3) & ( !\Contador|DOUT[1]~DUPLICATE_q\ & ( (!\SW[1]~input_o\) # ((!\Contador|DOUT[2]~DUPLICATE_q\) # (!\SW[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111010111011111111101010111111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \Contador|ALT_INV_DOUT\(0),
	datac => \Contador|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \Contador|ALT_INV_DOUT\(3),
	dataf => \Contador|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \DHEX3|saida7seg~6_combout\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X19_Y23_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


