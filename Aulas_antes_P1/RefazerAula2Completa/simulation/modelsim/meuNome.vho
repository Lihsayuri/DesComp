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

-- DATE "08/25/2022 08:03:41"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	meuNome IS
    PORT (
	Endereco : IN std_logic_vector(2 DOWNTO 0);
	Dado : OUT std_logic_vector(7 DOWNTO 0)
	);
END meuNome;

-- Design Ports Information
-- Dado[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[1]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[2]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[4]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[5]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[6]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dado[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Endereco[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF meuNome IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Endereco : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Dado : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Endereco[0]~input_o\ : std_logic;
SIGNAL \Endereco[1]~input_o\ : std_logic;
SIGNAL \Endereco[2]~input_o\ : std_logic;
SIGNAL \memROM~0_combout\ : std_logic;
SIGNAL \memROM~1_combout\ : std_logic;
SIGNAL \memROM~2_combout\ : std_logic;
SIGNAL \memROM~3_combout\ : std_logic;
SIGNAL \memROM~4_combout\ : std_logic;
SIGNAL \memROM~5_combout\ : std_logic;
SIGNAL \ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ALT_INV_Endereco[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Endereco[2]~input_o\ : std_logic;

BEGIN

ww_Endereco <= Endereco;
Dado <= ww_Dado;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_memROM~5_combout\ <= NOT \memROM~5_combout\;
\ALT_INV_Endereco[0]~input_o\ <= NOT \Endereco[0]~input_o\;
\ALT_INV_Endereco[1]~input_o\ <= NOT \Endereco[1]~input_o\;
\ALT_INV_Endereco[2]~input_o\ <= NOT \Endereco[2]~input_o\;

-- Location: IOOBUF_X0_Y18_N79
\Dado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~0_combout\,
	devoe => ww_devoe,
	o => ww_Dado(0));

-- Location: IOOBUF_X0_Y19_N22
\Dado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_Dado(1));

-- Location: IOOBUF_X0_Y20_N5
\Dado[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_Dado(2));

-- Location: IOOBUF_X0_Y20_N56
\Dado[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~3_combout\,
	devoe => ww_devoe,
	o => ww_Dado(3));

-- Location: IOOBUF_X0_Y19_N56
\Dado[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~1_combout\,
	devoe => ww_devoe,
	o => ww_Dado(4));

-- Location: IOOBUF_X0_Y20_N22
\Dado[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_Dado(5));

-- Location: IOOBUF_X0_Y20_N39
\Dado[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_memROM~5_combout\,
	devoe => ww_devoe,
	o => ww_Dado(6));

-- Location: IOOBUF_X46_Y45_N93
\Dado[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_Dado(7));

-- Location: IOIBUF_X0_Y19_N4
\Endereco[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(0),
	o => \Endereco[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N44
\Endereco[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(1),
	o => \Endereco[1]~input_o\);

-- Location: IOIBUF_X0_Y21_N55
\Endereco[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Endereco(2),
	o => \Endereco[2]~input_o\);

-- Location: LABCELL_X1_Y20_N0
\memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~0_combout\ = ( \Endereco[2]~input_o\ & ( (!\Endereco[1]~input_o\) # (\Endereco[0]~input_o\) ) ) # ( !\Endereco[2]~input_o\ & ( \Endereco[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111101011111010101010101010101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datac => \ALT_INV_Endereco[1]~input_o\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	combout => \memROM~0_combout\);

-- Location: LABCELL_X1_Y20_N39
\memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~1_combout\ = ( \Endereco[2]~input_o\ & ( !\Endereco[1]~input_o\ $ (!\Endereco[0]~input_o\) ) ) # ( !\Endereco[2]~input_o\ & ( (\Endereco[1]~input_o\ & !\Endereco[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011010101001010101000000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[1]~input_o\,
	datad => \ALT_INV_Endereco[0]~input_o\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	combout => \memROM~1_combout\);

-- Location: LABCELL_X1_Y20_N12
\memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~2_combout\ = ( \Endereco[2]~input_o\ & ( (\Endereco[0]~input_o\ & !\Endereco[1]~input_o\) ) ) # ( !\Endereco[2]~input_o\ & ( !\Endereco[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010010100000101000010101010101010100101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datac => \ALT_INV_Endereco[1]~input_o\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	combout => \memROM~2_combout\);

-- Location: LABCELL_X1_Y20_N21
\memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~3_combout\ = ( \Endereco[2]~input_o\ & ( (\Endereco[0]~input_o\) # (\Endereco[1]~input_o\) ) ) # ( !\Endereco[2]~input_o\ & ( (!\Endereco[1]~input_o\) # (\Endereco[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111010101011111111110101010111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[1]~input_o\,
	datad => \ALT_INV_Endereco[0]~input_o\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	combout => \memROM~3_combout\);

-- Location: LABCELL_X1_Y20_N54
\memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~4_combout\ = ( \Endereco[2]~input_o\ & ( (!\Endereco[0]~input_o\) # (\Endereco[1]~input_o\) ) ) # ( !\Endereco[2]~input_o\ & ( (\Endereco[1]~input_o\) # (\Endereco[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111101011111010111101011111010111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[0]~input_o\,
	datac => \ALT_INV_Endereco[1]~input_o\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	combout => \memROM~4_combout\);

-- Location: LABCELL_X1_Y20_N33
\memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \memROM~5_combout\ = ( \Endereco[2]~input_o\ & ( \Endereco[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Endereco[1]~input_o\,
	datae => \ALT_INV_Endereco[2]~input_o\,
	combout => \memROM~5_combout\);

-- Location: MLABCELL_X37_Y34_N3
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


