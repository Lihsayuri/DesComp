-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "11/07/2022 20:37:55"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	stackLogic IS
    PORT (
	clk : IN std_logic;
	addr_in : IN std_logic_vector(8 DOWNTO 0);
	hab : IN std_logic;
	sel_push_pop : IN std_logic;
	addr_out : OUT std_logic_vector(8 DOWNTO 0);
	sp : OUT std_logic_vector(2 DOWNTO 0);
	stack_overflow : OUT std_logic
	);
END stackLogic;

ARCHITECTURE structure OF stackLogic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_addr_in : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_hab : std_logic;
SIGNAL ww_sel_push_pop : std_logic;
SIGNAL ww_addr_out : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_sp : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_stack_overflow : std_logic;
SIGNAL \addr_out[0]~output_o\ : std_logic;
SIGNAL \addr_out[1]~output_o\ : std_logic;
SIGNAL \addr_out[2]~output_o\ : std_logic;
SIGNAL \addr_out[3]~output_o\ : std_logic;
SIGNAL \addr_out[4]~output_o\ : std_logic;
SIGNAL \addr_out[5]~output_o\ : std_logic;
SIGNAL \addr_out[6]~output_o\ : std_logic;
SIGNAL \addr_out[7]~output_o\ : std_logic;
SIGNAL \addr_out[8]~output_o\ : std_logic;
SIGNAL \sp[0]~output_o\ : std_logic;
SIGNAL \sp[1]~output_o\ : std_logic;
SIGNAL \sp[2]~output_o\ : std_logic;
SIGNAL \stack_overflow~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \STACK_POINTER|DOUT[0]~1_combout\ : std_logic;
SIGNAL \hab~input_o\ : std_logic;
SIGNAL \sel_push_pop~input_o\ : std_logic;
SIGNAL \ADDER|Add0~0_combout\ : std_logic;
SIGNAL \addr_in[0]~input_o\ : std_logic;
SIGNAL \ADDER|Add0~1_combout\ : std_logic;
SIGNAL \STACK|mem~122_combout\ : std_logic;
SIGNAL \STACK|mem~50_q\ : std_logic;
SIGNAL \STACK|mem~123_combout\ : std_logic;
SIGNAL \STACK|mem~59_q\ : std_logic;
SIGNAL \STACK|mem~124_combout\ : std_logic;
SIGNAL \STACK|mem~68_q\ : std_logic;
SIGNAL \STACK|mem~125_combout\ : std_logic;
SIGNAL \STACK|mem~77_q\ : std_logic;
SIGNAL \STACK|mem~95_combout\ : std_logic;
SIGNAL \STACK|mem~126_combout\ : std_logic;
SIGNAL \STACK|mem~14_q\ : std_logic;
SIGNAL \STACK|mem~127_combout\ : std_logic;
SIGNAL \STACK|mem~23_q\ : std_logic;
SIGNAL \STACK|mem~128_combout\ : std_logic;
SIGNAL \STACK|mem~32_q\ : std_logic;
SIGNAL \STACK|mem~129_combout\ : std_logic;
SIGNAL \STACK|mem~41_q\ : std_logic;
SIGNAL \STACK|mem~96_combout\ : std_logic;
SIGNAL \STACK|mem~97_combout\ : std_logic;
SIGNAL \addr_in[1]~input_o\ : std_logic;
SIGNAL \STACK|mem~51_q\ : std_logic;
SIGNAL \STACK|mem~60_q\ : std_logic;
SIGNAL \STACK|mem~69_q\ : std_logic;
SIGNAL \STACK|mem~78_q\ : std_logic;
SIGNAL \STACK|mem~98_combout\ : std_logic;
SIGNAL \STACK|mem~15_q\ : std_logic;
SIGNAL \STACK|mem~24_q\ : std_logic;
SIGNAL \STACK|mem~33_q\ : std_logic;
SIGNAL \STACK|mem~42_q\ : std_logic;
SIGNAL \STACK|mem~99_combout\ : std_logic;
SIGNAL \STACK|mem~100_combout\ : std_logic;
SIGNAL \addr_in[2]~input_o\ : std_logic;
SIGNAL \STACK|mem~52_q\ : std_logic;
SIGNAL \STACK|mem~61_q\ : std_logic;
SIGNAL \STACK|mem~70_q\ : std_logic;
SIGNAL \STACK|mem~79_q\ : std_logic;
SIGNAL \STACK|mem~101_combout\ : std_logic;
SIGNAL \STACK|mem~16_q\ : std_logic;
SIGNAL \STACK|mem~25_q\ : std_logic;
SIGNAL \STACK|mem~34_q\ : std_logic;
SIGNAL \STACK|mem~43_q\ : std_logic;
SIGNAL \STACK|mem~102_combout\ : std_logic;
SIGNAL \STACK|mem~103_combout\ : std_logic;
SIGNAL \addr_in[3]~input_o\ : std_logic;
SIGNAL \STACK|mem~53_q\ : std_logic;
SIGNAL \STACK|mem~62_q\ : std_logic;
SIGNAL \STACK|mem~71_q\ : std_logic;
SIGNAL \STACK|mem~80_q\ : std_logic;
SIGNAL \STACK|mem~104_combout\ : std_logic;
SIGNAL \STACK|mem~17_q\ : std_logic;
SIGNAL \STACK|mem~26_q\ : std_logic;
SIGNAL \STACK|mem~35_q\ : std_logic;
SIGNAL \STACK|mem~44_q\ : std_logic;
SIGNAL \STACK|mem~105_combout\ : std_logic;
SIGNAL \STACK|mem~106_combout\ : std_logic;
SIGNAL \addr_in[4]~input_o\ : std_logic;
SIGNAL \STACK|mem~54_q\ : std_logic;
SIGNAL \STACK|mem~63_q\ : std_logic;
SIGNAL \STACK|mem~72_q\ : std_logic;
SIGNAL \STACK|mem~81_q\ : std_logic;
SIGNAL \STACK|mem~107_combout\ : std_logic;
SIGNAL \STACK|mem~18_q\ : std_logic;
SIGNAL \STACK|mem~27_q\ : std_logic;
SIGNAL \STACK|mem~36_q\ : std_logic;
SIGNAL \STACK|mem~45_q\ : std_logic;
SIGNAL \STACK|mem~108_combout\ : std_logic;
SIGNAL \STACK|mem~109_combout\ : std_logic;
SIGNAL \addr_in[5]~input_o\ : std_logic;
SIGNAL \STACK|mem~55_q\ : std_logic;
SIGNAL \STACK|mem~64_q\ : std_logic;
SIGNAL \STACK|mem~73_q\ : std_logic;
SIGNAL \STACK|mem~82_q\ : std_logic;
SIGNAL \STACK|mem~110_combout\ : std_logic;
SIGNAL \STACK|mem~19_q\ : std_logic;
SIGNAL \STACK|mem~28_q\ : std_logic;
SIGNAL \STACK|mem~37_q\ : std_logic;
SIGNAL \STACK|mem~46_q\ : std_logic;
SIGNAL \STACK|mem~111_combout\ : std_logic;
SIGNAL \STACK|mem~112_combout\ : std_logic;
SIGNAL \addr_in[6]~input_o\ : std_logic;
SIGNAL \STACK|mem~56_q\ : std_logic;
SIGNAL \STACK|mem~65_q\ : std_logic;
SIGNAL \STACK|mem~74_q\ : std_logic;
SIGNAL \STACK|mem~83_q\ : std_logic;
SIGNAL \STACK|mem~113_combout\ : std_logic;
SIGNAL \STACK|mem~20_q\ : std_logic;
SIGNAL \STACK|mem~29_q\ : std_logic;
SIGNAL \STACK|mem~38_q\ : std_logic;
SIGNAL \STACK|mem~47_q\ : std_logic;
SIGNAL \STACK|mem~114_combout\ : std_logic;
SIGNAL \STACK|mem~115_combout\ : std_logic;
SIGNAL \addr_in[7]~input_o\ : std_logic;
SIGNAL \STACK|mem~57_q\ : std_logic;
SIGNAL \STACK|mem~66_q\ : std_logic;
SIGNAL \STACK|mem~75_q\ : std_logic;
SIGNAL \STACK|mem~84_q\ : std_logic;
SIGNAL \STACK|mem~116_combout\ : std_logic;
SIGNAL \STACK|mem~21_q\ : std_logic;
SIGNAL \STACK|mem~30_q\ : std_logic;
SIGNAL \STACK|mem~39_q\ : std_logic;
SIGNAL \STACK|mem~48_q\ : std_logic;
SIGNAL \STACK|mem~117_combout\ : std_logic;
SIGNAL \STACK|mem~118_combout\ : std_logic;
SIGNAL \addr_in[8]~input_o\ : std_logic;
SIGNAL \STACK|mem~58_q\ : std_logic;
SIGNAL \STACK|mem~67_q\ : std_logic;
SIGNAL \STACK|mem~76_q\ : std_logic;
SIGNAL \STACK|mem~85_q\ : std_logic;
SIGNAL \STACK|mem~119_combout\ : std_logic;
SIGNAL \STACK|mem~22_q\ : std_logic;
SIGNAL \STACK|mem~31_q\ : std_logic;
SIGNAL \STACK|mem~40_q\ : std_logic;
SIGNAL \STACK|mem~49_q\ : std_logic;
SIGNAL \STACK|mem~120_combout\ : std_logic;
SIGNAL \STACK|mem~121_combout\ : std_logic;
SIGNAL \stack_overflow~0_combout\ : std_logic;
SIGNAL \STACK_POINTER|DOUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \STACK|ALT_INV_mem~17_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~104_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~15_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~24_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~70_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~101_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~41_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~42_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~43_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~60_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~14_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~69_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~102_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~32_q\ : std_logic;
SIGNAL \STACK_POINTER|ALT_INV_DOUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \STACK|ALT_INV_mem~33_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~99_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~68_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~96_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~78_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~52_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~61_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~98_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~16_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~25_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~51_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~79_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~34_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~53_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~62_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~59_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~23_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~71_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~95_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~80_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~50_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~77_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~39_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~37_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~117_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~40_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~120_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~63_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~108_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~55_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~26_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~36_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~110_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~56_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~75_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~44_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~107_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~45_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~72_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~65_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~30_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~28_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~19_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~83_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~113_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~114_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~21_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~48_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~58_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~66_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~82_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~81_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~29_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~84_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~85_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~119_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~73_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~22_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~105_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~31_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~18_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~49_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~47_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~64_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~46_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~111_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~54_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~27_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~74_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~38_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~116_combout\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~67_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~20_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~57_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~76_q\ : std_logic;
SIGNAL \STACK|ALT_INV_mem~35_q\ : std_logic;
SIGNAL \ALT_INV_hab~input_o\ : std_logic;
SIGNAL \ALT_INV_sel_push_pop~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_addr_in <= addr_in;
ww_hab <= hab;
ww_sel_push_pop <= sel_push_pop;
addr_out <= ww_addr_out;
sp <= ww_sp;
stack_overflow <= ww_stack_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\STACK|ALT_INV_mem~17_q\ <= NOT \STACK|mem~17_q\;
\STACK|ALT_INV_mem~104_combout\ <= NOT \STACK|mem~104_combout\;
\STACK|ALT_INV_mem~15_q\ <= NOT \STACK|mem~15_q\;
\STACK|ALT_INV_mem~24_q\ <= NOT \STACK|mem~24_q\;
\STACK|ALT_INV_mem~70_q\ <= NOT \STACK|mem~70_q\;
\STACK|ALT_INV_mem~101_combout\ <= NOT \STACK|mem~101_combout\;
\STACK|ALT_INV_mem~41_q\ <= NOT \STACK|mem~41_q\;
\STACK|ALT_INV_mem~42_q\ <= NOT \STACK|mem~42_q\;
\STACK|ALT_INV_mem~43_q\ <= NOT \STACK|mem~43_q\;
\STACK|ALT_INV_mem~60_q\ <= NOT \STACK|mem~60_q\;
\STACK|ALT_INV_mem~14_q\ <= NOT \STACK|mem~14_q\;
\STACK|ALT_INV_mem~69_q\ <= NOT \STACK|mem~69_q\;
\STACK|ALT_INV_mem~102_combout\ <= NOT \STACK|mem~102_combout\;
\STACK|ALT_INV_mem~32_q\ <= NOT \STACK|mem~32_q\;
\STACK_POINTER|ALT_INV_DOUT\(0) <= NOT \STACK_POINTER|DOUT\(0);
\STACK|ALT_INV_mem~33_q\ <= NOT \STACK|mem~33_q\;
\STACK|ALT_INV_mem~99_combout\ <= NOT \STACK|mem~99_combout\;
\STACK|ALT_INV_mem~68_q\ <= NOT \STACK|mem~68_q\;
\STACK|ALT_INV_mem~96_combout\ <= NOT \STACK|mem~96_combout\;
\STACK|ALT_INV_mem~78_q\ <= NOT \STACK|mem~78_q\;
\STACK|ALT_INV_mem~52_q\ <= NOT \STACK|mem~52_q\;
\STACK|ALT_INV_mem~61_q\ <= NOT \STACK|mem~61_q\;
\STACK|ALT_INV_mem~98_combout\ <= NOT \STACK|mem~98_combout\;
\STACK|ALT_INV_mem~16_q\ <= NOT \STACK|mem~16_q\;
\STACK|ALT_INV_mem~25_q\ <= NOT \STACK|mem~25_q\;
\STACK|ALT_INV_mem~51_q\ <= NOT \STACK|mem~51_q\;
\STACK|ALT_INV_mem~79_q\ <= NOT \STACK|mem~79_q\;
\STACK_POINTER|ALT_INV_DOUT\(1) <= NOT \STACK_POINTER|DOUT\(1);
\STACK|ALT_INV_mem~34_q\ <= NOT \STACK|mem~34_q\;
\STACK|ALT_INV_mem~53_q\ <= NOT \STACK|mem~53_q\;
\STACK|ALT_INV_mem~62_q\ <= NOT \STACK|mem~62_q\;
\STACK|ALT_INV_mem~59_q\ <= NOT \STACK|mem~59_q\;
\STACK|ALT_INV_mem~23_q\ <= NOT \STACK|mem~23_q\;
\STACK|ALT_INV_mem~71_q\ <= NOT \STACK|mem~71_q\;
\STACK|ALT_INV_mem~95_combout\ <= NOT \STACK|mem~95_combout\;
\STACK|ALT_INV_mem~80_q\ <= NOT \STACK|mem~80_q\;
\STACK_POINTER|ALT_INV_DOUT\(2) <= NOT \STACK_POINTER|DOUT\(2);
\STACK|ALT_INV_mem~50_q\ <= NOT \STACK|mem~50_q\;
\STACK|ALT_INV_mem~77_q\ <= NOT \STACK|mem~77_q\;
\STACK|ALT_INV_mem~39_q\ <= NOT \STACK|mem~39_q\;
\STACK|ALT_INV_mem~37_q\ <= NOT \STACK|mem~37_q\;
\STACK|ALT_INV_mem~117_combout\ <= NOT \STACK|mem~117_combout\;
\STACK|ALT_INV_mem~40_q\ <= NOT \STACK|mem~40_q\;
\STACK|ALT_INV_mem~120_combout\ <= NOT \STACK|mem~120_combout\;
\STACK|ALT_INV_mem~63_q\ <= NOT \STACK|mem~63_q\;
\STACK|ALT_INV_mem~108_combout\ <= NOT \STACK|mem~108_combout\;
\STACK|ALT_INV_mem~55_q\ <= NOT \STACK|mem~55_q\;
\STACK|ALT_INV_mem~26_q\ <= NOT \STACK|mem~26_q\;
\STACK|ALT_INV_mem~36_q\ <= NOT \STACK|mem~36_q\;
\STACK|ALT_INV_mem~110_combout\ <= NOT \STACK|mem~110_combout\;
\STACK|ALT_INV_mem~56_q\ <= NOT \STACK|mem~56_q\;
\STACK|ALT_INV_mem~75_q\ <= NOT \STACK|mem~75_q\;
\STACK|ALT_INV_mem~44_q\ <= NOT \STACK|mem~44_q\;
\STACK|ALT_INV_mem~107_combout\ <= NOT \STACK|mem~107_combout\;
\STACK|ALT_INV_mem~45_q\ <= NOT \STACK|mem~45_q\;
\STACK|ALT_INV_mem~72_q\ <= NOT \STACK|mem~72_q\;
\STACK|ALT_INV_mem~65_q\ <= NOT \STACK|mem~65_q\;
\STACK|ALT_INV_mem~30_q\ <= NOT \STACK|mem~30_q\;
\STACK|ALT_INV_mem~28_q\ <= NOT \STACK|mem~28_q\;
\STACK|ALT_INV_mem~19_q\ <= NOT \STACK|mem~19_q\;
\STACK|ALT_INV_mem~83_q\ <= NOT \STACK|mem~83_q\;
\STACK|ALT_INV_mem~113_combout\ <= NOT \STACK|mem~113_combout\;
\STACK|ALT_INV_mem~114_combout\ <= NOT \STACK|mem~114_combout\;
\STACK|ALT_INV_mem~21_q\ <= NOT \STACK|mem~21_q\;
\STACK|ALT_INV_mem~48_q\ <= NOT \STACK|mem~48_q\;
\STACK|ALT_INV_mem~58_q\ <= NOT \STACK|mem~58_q\;
\STACK|ALT_INV_mem~66_q\ <= NOT \STACK|mem~66_q\;
\STACK|ALT_INV_mem~82_q\ <= NOT \STACK|mem~82_q\;
\STACK|ALT_INV_mem~81_q\ <= NOT \STACK|mem~81_q\;
\STACK|ALT_INV_mem~29_q\ <= NOT \STACK|mem~29_q\;
\STACK|ALT_INV_mem~84_q\ <= NOT \STACK|mem~84_q\;
\STACK|ALT_INV_mem~85_q\ <= NOT \STACK|mem~85_q\;
\STACK|ALT_INV_mem~119_combout\ <= NOT \STACK|mem~119_combout\;
\STACK|ALT_INV_mem~73_q\ <= NOT \STACK|mem~73_q\;
\STACK|ALT_INV_mem~22_q\ <= NOT \STACK|mem~22_q\;
\STACK|ALT_INV_mem~105_combout\ <= NOT \STACK|mem~105_combout\;
\STACK|ALT_INV_mem~31_q\ <= NOT \STACK|mem~31_q\;
\STACK|ALT_INV_mem~18_q\ <= NOT \STACK|mem~18_q\;
\STACK|ALT_INV_mem~49_q\ <= NOT \STACK|mem~49_q\;
\STACK|ALT_INV_mem~47_q\ <= NOT \STACK|mem~47_q\;
\STACK|ALT_INV_mem~64_q\ <= NOT \STACK|mem~64_q\;
\STACK|ALT_INV_mem~46_q\ <= NOT \STACK|mem~46_q\;
\STACK|ALT_INV_mem~111_combout\ <= NOT \STACK|mem~111_combout\;
\STACK|ALT_INV_mem~54_q\ <= NOT \STACK|mem~54_q\;
\STACK|ALT_INV_mem~27_q\ <= NOT \STACK|mem~27_q\;
\STACK|ALT_INV_mem~74_q\ <= NOT \STACK|mem~74_q\;
\STACK|ALT_INV_mem~38_q\ <= NOT \STACK|mem~38_q\;
\STACK|ALT_INV_mem~116_combout\ <= NOT \STACK|mem~116_combout\;
\STACK|ALT_INV_mem~67_q\ <= NOT \STACK|mem~67_q\;
\STACK|ALT_INV_mem~20_q\ <= NOT \STACK|mem~20_q\;
\STACK|ALT_INV_mem~57_q\ <= NOT \STACK|mem~57_q\;
\STACK|ALT_INV_mem~76_q\ <= NOT \STACK|mem~76_q\;
\STACK|ALT_INV_mem~35_q\ <= NOT \STACK|mem~35_q\;
\ALT_INV_hab~input_o\ <= NOT \hab~input_o\;
\ALT_INV_sel_push_pop~input_o\ <= NOT \sel_push_pop~input_o\;

\addr_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STACK|mem~97_combout\,
	devoe => ww_devoe,
	o => \addr_out[0]~output_o\);

\addr_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STACK|mem~100_combout\,
	devoe => ww_devoe,
	o => \addr_out[1]~output_o\);

\addr_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STACK|mem~103_combout\,
	devoe => ww_devoe,
	o => \addr_out[2]~output_o\);

\addr_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STACK|mem~106_combout\,
	devoe => ww_devoe,
	o => \addr_out[3]~output_o\);

\addr_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STACK|mem~109_combout\,
	devoe => ww_devoe,
	o => \addr_out[4]~output_o\);

\addr_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STACK|mem~112_combout\,
	devoe => ww_devoe,
	o => \addr_out[5]~output_o\);

\addr_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STACK|mem~115_combout\,
	devoe => ww_devoe,
	o => \addr_out[6]~output_o\);

\addr_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STACK|mem~118_combout\,
	devoe => ww_devoe,
	o => \addr_out[7]~output_o\);

\addr_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STACK|mem~121_combout\,
	devoe => ww_devoe,
	o => \addr_out[8]~output_o\);

\sp[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STACK_POINTER|DOUT\(0),
	devoe => ww_devoe,
	o => \sp[0]~output_o\);

\sp[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STACK_POINTER|DOUT\(1),
	devoe => ww_devoe,
	o => \sp[1]~output_o\);

\sp[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \STACK_POINTER|DOUT\(2),
	devoe => ww_devoe,
	o => \sp[2]~output_o\);

\stack_overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stack_overflow~0_combout\,
	devoe => ww_devoe,
	o => \stack_overflow~output_o\);

\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\STACK_POINTER|DOUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK_POINTER|DOUT[0]~1_combout\ = !\STACK_POINTER|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(0),
	combout => \STACK_POINTER|DOUT[0]~1_combout\);

\hab~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hab,
	o => \hab~input_o\);

\STACK_POINTER|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \STACK_POINTER|DOUT[0]~1_combout\,
	ena => \hab~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|DOUT\(0));

\sel_push_pop~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel_push_pop,
	o => \sel_push_pop~input_o\);

\ADDER|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDER|Add0~0_combout\ = !\STACK_POINTER|DOUT\(1) $ (!\STACK_POINTER|DOUT\(0) $ (!\sel_push_pop~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \ALT_INV_sel_push_pop~input_o\,
	combout => \ADDER|Add0~0_combout\);

\STACK_POINTER|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ADDER|Add0~0_combout\,
	ena => \hab~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|DOUT\(1));

\addr_in[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(0),
	o => \addr_in[0]~input_o\);

\ADDER|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ADDER|Add0~1_combout\ = !\STACK_POINTER|DOUT\(2) $ (((!\STACK_POINTER|DOUT\(1) & ((\sel_push_pop~input_o\) # (\STACK_POINTER|DOUT\(0)))) # (\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # (!\sel_push_pop~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011100011110100001110001111010000111000111101000011100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	datad => \ALT_INV_sel_push_pop~input_o\,
	combout => \ADDER|Add0~1_combout\);

\STACK_POINTER|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ADDER|Add0~1_combout\,
	ena => \hab~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK_POINTER|DOUT\(2));

\STACK|mem~122\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~122_combout\ = (!\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & \STACK_POINTER|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	combout => \STACK|mem~122_combout\);

\STACK|mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[0]~input_o\,
	ena => \STACK|mem~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~50_q\);

\STACK|mem~123\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~123_combout\ = (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & \STACK_POINTER|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	combout => \STACK|mem~123_combout\);

\STACK|mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[0]~input_o\,
	ena => \STACK|mem~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~59_q\);

\STACK|mem~124\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~124_combout\ = (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & \STACK_POINTER|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	combout => \STACK|mem~124_combout\);

\STACK|mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[0]~input_o\,
	ena => \STACK|mem~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~68_q\);

\STACK|mem~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~125_combout\ = (\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & \STACK_POINTER|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	combout => \STACK|mem~125_combout\);

\STACK|mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[0]~input_o\,
	ena => \STACK|mem~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~77_q\);

\STACK|mem~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~95_combout\ = ( \STACK|mem~68_q\ & ( \STACK|mem~77_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~50_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~59_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~68_q\ & ( \STACK|mem~77_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~50_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~59_q\)))) ) ) ) # ( \STACK|mem~68_q\ & ( !\STACK|mem~77_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~50_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~59_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~68_q\ & ( !\STACK|mem~77_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~50_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~59_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~50_q\,
	datad => \STACK|ALT_INV_mem~59_q\,
	datae => \STACK|ALT_INV_mem~68_q\,
	dataf => \STACK|ALT_INV_mem~77_q\,
	combout => \STACK|mem~95_combout\);

\STACK|mem~126\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~126_combout\ = (!\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & !\STACK_POINTER|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	combout => \STACK|mem~126_combout\);

\STACK|mem~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[0]~input_o\,
	ena => \STACK|mem~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~14_q\);

\STACK|mem~127\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~127_combout\ = (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & !\STACK_POINTER|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	combout => \STACK|mem~127_combout\);

\STACK|mem~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[0]~input_o\,
	ena => \STACK|mem~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~23_q\);

\STACK|mem~128\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~128_combout\ = (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & !\STACK_POINTER|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	combout => \STACK|mem~128_combout\);

\STACK|mem~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[0]~input_o\,
	ena => \STACK|mem~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~32_q\);

\STACK|mem~129\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~129_combout\ = (\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & !\STACK_POINTER|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	combout => \STACK|mem~129_combout\);

\STACK|mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[0]~input_o\,
	ena => \STACK|mem~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~41_q\);

\STACK|mem~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~96_combout\ = ( \STACK|mem~32_q\ & ( \STACK|mem~41_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~14_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~23_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~32_q\ & ( \STACK|mem~41_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~14_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~23_q\)))) ) ) ) # ( \STACK|mem~32_q\ & ( !\STACK|mem~41_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~14_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~23_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~32_q\ & ( !\STACK|mem~41_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~14_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~23_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~14_q\,
	datad => \STACK|ALT_INV_mem~23_q\,
	datae => \STACK|ALT_INV_mem~32_q\,
	dataf => \STACK|ALT_INV_mem~41_q\,
	combout => \STACK|mem~96_combout\);

\STACK|mem~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~97_combout\ = ( \STACK|mem~96_combout\ & ( (!\STACK_POINTER|DOUT\(2) & (((\STACK_POINTER|DOUT\(0))) # (\STACK_POINTER|DOUT\(1)))) # (\STACK_POINTER|DOUT\(2) & (((!\STACK_POINTER|DOUT\(1) & !\STACK_POINTER|DOUT\(0))) # (\STACK|mem~95_combout\))) 
-- ) ) # ( !\STACK|mem~96_combout\ & ( (\STACK|mem~95_combout\ & (\STACK_POINTER|DOUT\(2) & ((\STACK_POINTER|DOUT\(0)) # (\STACK_POINTER|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111011101111000111100000000000001110111011110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~95_combout\,
	datad => \STACK_POINTER|ALT_INV_DOUT\(2),
	datae => \STACK|ALT_INV_mem~96_combout\,
	combout => \STACK|mem~97_combout\);

\addr_in[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(1),
	o => \addr_in[1]~input_o\);

\STACK|mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[1]~input_o\,
	ena => \STACK|mem~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~51_q\);

\STACK|mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[1]~input_o\,
	ena => \STACK|mem~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~60_q\);

\STACK|mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[1]~input_o\,
	ena => \STACK|mem~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~69_q\);

\STACK|mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[1]~input_o\,
	ena => \STACK|mem~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~78_q\);

\STACK|mem~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~98_combout\ = ( \STACK|mem~69_q\ & ( \STACK|mem~78_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~51_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~60_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~69_q\ & ( \STACK|mem~78_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~51_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~60_q\)))) ) ) ) # ( \STACK|mem~69_q\ & ( !\STACK|mem~78_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~51_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~60_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~69_q\ & ( !\STACK|mem~78_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~51_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~60_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~51_q\,
	datad => \STACK|ALT_INV_mem~60_q\,
	datae => \STACK|ALT_INV_mem~69_q\,
	dataf => \STACK|ALT_INV_mem~78_q\,
	combout => \STACK|mem~98_combout\);

\STACK|mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[1]~input_o\,
	ena => \STACK|mem~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~15_q\);

\STACK|mem~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[1]~input_o\,
	ena => \STACK|mem~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~24_q\);

\STACK|mem~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[1]~input_o\,
	ena => \STACK|mem~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~33_q\);

\STACK|mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[1]~input_o\,
	ena => \STACK|mem~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~42_q\);

\STACK|mem~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~99_combout\ = ( \STACK|mem~33_q\ & ( \STACK|mem~42_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~15_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~24_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~33_q\ & ( \STACK|mem~42_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~15_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~24_q\)))) ) ) ) # ( \STACK|mem~33_q\ & ( !\STACK|mem~42_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~15_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~24_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~33_q\ & ( !\STACK|mem~42_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~15_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~24_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~15_q\,
	datad => \STACK|ALT_INV_mem~24_q\,
	datae => \STACK|ALT_INV_mem~33_q\,
	dataf => \STACK|ALT_INV_mem~42_q\,
	combout => \STACK|mem~99_combout\);

\STACK|mem~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~100_combout\ = ( \STACK|mem~99_combout\ & ( (!\STACK_POINTER|DOUT\(2) & (((\STACK_POINTER|DOUT\(0))) # (\STACK_POINTER|DOUT\(1)))) # (\STACK_POINTER|DOUT\(2) & (((!\STACK_POINTER|DOUT\(1) & !\STACK_POINTER|DOUT\(0))) # 
-- (\STACK|mem~98_combout\))) ) ) # ( !\STACK|mem~99_combout\ & ( (\STACK_POINTER|DOUT\(2) & (\STACK|mem~98_combout\ & ((\STACK_POINTER|DOUT\(0)) # (\STACK_POINTER|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111011110000111111100000000000001110111100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	datad => \STACK|ALT_INV_mem~98_combout\,
	datae => \STACK|ALT_INV_mem~99_combout\,
	combout => \STACK|mem~100_combout\);

\addr_in[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(2),
	o => \addr_in[2]~input_o\);

\STACK|mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[2]~input_o\,
	ena => \STACK|mem~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~52_q\);

\STACK|mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[2]~input_o\,
	ena => \STACK|mem~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~61_q\);

\STACK|mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[2]~input_o\,
	ena => \STACK|mem~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~70_q\);

\STACK|mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[2]~input_o\,
	ena => \STACK|mem~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~79_q\);

\STACK|mem~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~101_combout\ = ( \STACK|mem~70_q\ & ( \STACK|mem~79_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~52_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~61_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~70_q\ & ( \STACK|mem~79_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~52_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~61_q\)))) ) ) ) # ( \STACK|mem~70_q\ & ( !\STACK|mem~79_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~52_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~61_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~70_q\ & ( !\STACK|mem~79_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~52_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~61_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~52_q\,
	datad => \STACK|ALT_INV_mem~61_q\,
	datae => \STACK|ALT_INV_mem~70_q\,
	dataf => \STACK|ALT_INV_mem~79_q\,
	combout => \STACK|mem~101_combout\);

\STACK|mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[2]~input_o\,
	ena => \STACK|mem~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~16_q\);

\STACK|mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[2]~input_o\,
	ena => \STACK|mem~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~25_q\);

\STACK|mem~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[2]~input_o\,
	ena => \STACK|mem~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~34_q\);

\STACK|mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[2]~input_o\,
	ena => \STACK|mem~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~43_q\);

\STACK|mem~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~102_combout\ = ( \STACK|mem~34_q\ & ( \STACK|mem~43_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~16_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~25_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~34_q\ & ( \STACK|mem~43_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~16_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~25_q\)))) ) ) ) # ( \STACK|mem~34_q\ & ( !\STACK|mem~43_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~16_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~25_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~34_q\ & ( !\STACK|mem~43_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~16_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~25_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~16_q\,
	datad => \STACK|ALT_INV_mem~25_q\,
	datae => \STACK|ALT_INV_mem~34_q\,
	dataf => \STACK|ALT_INV_mem~43_q\,
	combout => \STACK|mem~102_combout\);

\STACK|mem~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~103_combout\ = ( \STACK|mem~102_combout\ & ( (!\STACK_POINTER|DOUT\(2) & (((\STACK_POINTER|DOUT\(0))) # (\STACK_POINTER|DOUT\(1)))) # (\STACK_POINTER|DOUT\(2) & (((!\STACK_POINTER|DOUT\(1) & !\STACK_POINTER|DOUT\(0))) # 
-- (\STACK|mem~101_combout\))) ) ) # ( !\STACK|mem~102_combout\ & ( (\STACK_POINTER|DOUT\(2) & (\STACK|mem~101_combout\ & ((\STACK_POINTER|DOUT\(0)) # (\STACK_POINTER|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111011110000111111100000000000001110111100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	datad => \STACK|ALT_INV_mem~101_combout\,
	datae => \STACK|ALT_INV_mem~102_combout\,
	combout => \STACK|mem~103_combout\);

\addr_in[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(3),
	o => \addr_in[3]~input_o\);

\STACK|mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[3]~input_o\,
	ena => \STACK|mem~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~53_q\);

\STACK|mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[3]~input_o\,
	ena => \STACK|mem~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~62_q\);

\STACK|mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[3]~input_o\,
	ena => \STACK|mem~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~71_q\);

\STACK|mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[3]~input_o\,
	ena => \STACK|mem~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~80_q\);

\STACK|mem~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~104_combout\ = ( \STACK|mem~71_q\ & ( \STACK|mem~80_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~53_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~62_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~71_q\ & ( \STACK|mem~80_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~53_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~62_q\)))) ) ) ) # ( \STACK|mem~71_q\ & ( !\STACK|mem~80_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~53_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~62_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~71_q\ & ( !\STACK|mem~80_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~53_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~62_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~53_q\,
	datad => \STACK|ALT_INV_mem~62_q\,
	datae => \STACK|ALT_INV_mem~71_q\,
	dataf => \STACK|ALT_INV_mem~80_q\,
	combout => \STACK|mem~104_combout\);

\STACK|mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[3]~input_o\,
	ena => \STACK|mem~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~17_q\);

\STACK|mem~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[3]~input_o\,
	ena => \STACK|mem~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~26_q\);

\STACK|mem~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[3]~input_o\,
	ena => \STACK|mem~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~35_q\);

\STACK|mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[3]~input_o\,
	ena => \STACK|mem~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~44_q\);

\STACK|mem~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~105_combout\ = ( \STACK|mem~35_q\ & ( \STACK|mem~44_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~17_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~26_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~35_q\ & ( \STACK|mem~44_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~17_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~26_q\)))) ) ) ) # ( \STACK|mem~35_q\ & ( !\STACK|mem~44_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~17_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~26_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~35_q\ & ( !\STACK|mem~44_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~17_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~26_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~17_q\,
	datad => \STACK|ALT_INV_mem~26_q\,
	datae => \STACK|ALT_INV_mem~35_q\,
	dataf => \STACK|ALT_INV_mem~44_q\,
	combout => \STACK|mem~105_combout\);

\STACK|mem~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~106_combout\ = ( \STACK|mem~105_combout\ & ( (!\STACK_POINTER|DOUT\(2) & (((\STACK_POINTER|DOUT\(0))) # (\STACK_POINTER|DOUT\(1)))) # (\STACK_POINTER|DOUT\(2) & (((!\STACK_POINTER|DOUT\(1) & !\STACK_POINTER|DOUT\(0))) # 
-- (\STACK|mem~104_combout\))) ) ) # ( !\STACK|mem~105_combout\ & ( (\STACK_POINTER|DOUT\(2) & (\STACK|mem~104_combout\ & ((\STACK_POINTER|DOUT\(0)) # (\STACK_POINTER|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111011110000111111100000000000001110111100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	datad => \STACK|ALT_INV_mem~104_combout\,
	datae => \STACK|ALT_INV_mem~105_combout\,
	combout => \STACK|mem~106_combout\);

\addr_in[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(4),
	o => \addr_in[4]~input_o\);

\STACK|mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[4]~input_o\,
	ena => \STACK|mem~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~54_q\);

\STACK|mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[4]~input_o\,
	ena => \STACK|mem~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~63_q\);

\STACK|mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[4]~input_o\,
	ena => \STACK|mem~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~72_q\);

\STACK|mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[4]~input_o\,
	ena => \STACK|mem~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~81_q\);

\STACK|mem~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~107_combout\ = ( \STACK|mem~72_q\ & ( \STACK|mem~81_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~54_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~63_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~72_q\ & ( \STACK|mem~81_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~54_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~63_q\)))) ) ) ) # ( \STACK|mem~72_q\ & ( !\STACK|mem~81_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~54_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~63_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~72_q\ & ( !\STACK|mem~81_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~54_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~63_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~54_q\,
	datad => \STACK|ALT_INV_mem~63_q\,
	datae => \STACK|ALT_INV_mem~72_q\,
	dataf => \STACK|ALT_INV_mem~81_q\,
	combout => \STACK|mem~107_combout\);

\STACK|mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[4]~input_o\,
	ena => \STACK|mem~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~18_q\);

\STACK|mem~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[4]~input_o\,
	ena => \STACK|mem~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~27_q\);

\STACK|mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[4]~input_o\,
	ena => \STACK|mem~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~36_q\);

\STACK|mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[4]~input_o\,
	ena => \STACK|mem~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~45_q\);

\STACK|mem~108\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~108_combout\ = ( \STACK|mem~36_q\ & ( \STACK|mem~45_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~18_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~27_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~36_q\ & ( \STACK|mem~45_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~18_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~27_q\)))) ) ) ) # ( \STACK|mem~36_q\ & ( !\STACK|mem~45_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~18_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~27_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~36_q\ & ( !\STACK|mem~45_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~18_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~27_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~18_q\,
	datad => \STACK|ALT_INV_mem~27_q\,
	datae => \STACK|ALT_INV_mem~36_q\,
	dataf => \STACK|ALT_INV_mem~45_q\,
	combout => \STACK|mem~108_combout\);

\STACK|mem~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~109_combout\ = ( \STACK|mem~108_combout\ & ( (!\STACK_POINTER|DOUT\(2) & (((\STACK_POINTER|DOUT\(0))) # (\STACK_POINTER|DOUT\(1)))) # (\STACK_POINTER|DOUT\(2) & (((!\STACK_POINTER|DOUT\(1) & !\STACK_POINTER|DOUT\(0))) # 
-- (\STACK|mem~107_combout\))) ) ) # ( !\STACK|mem~108_combout\ & ( (\STACK_POINTER|DOUT\(2) & (\STACK|mem~107_combout\ & ((\STACK_POINTER|DOUT\(0)) # (\STACK_POINTER|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111011110000111111100000000000001110111100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	datad => \STACK|ALT_INV_mem~107_combout\,
	datae => \STACK|ALT_INV_mem~108_combout\,
	combout => \STACK|mem~109_combout\);

\addr_in[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(5),
	o => \addr_in[5]~input_o\);

\STACK|mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[5]~input_o\,
	ena => \STACK|mem~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~55_q\);

\STACK|mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[5]~input_o\,
	ena => \STACK|mem~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~64_q\);

\STACK|mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[5]~input_o\,
	ena => \STACK|mem~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~73_q\);

\STACK|mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[5]~input_o\,
	ena => \STACK|mem~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~82_q\);

\STACK|mem~110\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~110_combout\ = ( \STACK|mem~73_q\ & ( \STACK|mem~82_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~55_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~64_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~73_q\ & ( \STACK|mem~82_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~55_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~64_q\)))) ) ) ) # ( \STACK|mem~73_q\ & ( !\STACK|mem~82_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~55_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~64_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~73_q\ & ( !\STACK|mem~82_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~55_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~64_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~55_q\,
	datad => \STACK|ALT_INV_mem~64_q\,
	datae => \STACK|ALT_INV_mem~73_q\,
	dataf => \STACK|ALT_INV_mem~82_q\,
	combout => \STACK|mem~110_combout\);

\STACK|mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[5]~input_o\,
	ena => \STACK|mem~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~19_q\);

\STACK|mem~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[5]~input_o\,
	ena => \STACK|mem~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~28_q\);

\STACK|mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[5]~input_o\,
	ena => \STACK|mem~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~37_q\);

\STACK|mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[5]~input_o\,
	ena => \STACK|mem~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~46_q\);

\STACK|mem~111\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~111_combout\ = ( \STACK|mem~37_q\ & ( \STACK|mem~46_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~19_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~28_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~37_q\ & ( \STACK|mem~46_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~19_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~28_q\)))) ) ) ) # ( \STACK|mem~37_q\ & ( !\STACK|mem~46_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~19_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~28_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~37_q\ & ( !\STACK|mem~46_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~19_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~28_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~19_q\,
	datad => \STACK|ALT_INV_mem~28_q\,
	datae => \STACK|ALT_INV_mem~37_q\,
	dataf => \STACK|ALT_INV_mem~46_q\,
	combout => \STACK|mem~111_combout\);

\STACK|mem~112\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~112_combout\ = ( \STACK|mem~111_combout\ & ( (!\STACK_POINTER|DOUT\(2) & (((\STACK_POINTER|DOUT\(0))) # (\STACK_POINTER|DOUT\(1)))) # (\STACK_POINTER|DOUT\(2) & (((!\STACK_POINTER|DOUT\(1) & !\STACK_POINTER|DOUT\(0))) # 
-- (\STACK|mem~110_combout\))) ) ) # ( !\STACK|mem~111_combout\ & ( (\STACK_POINTER|DOUT\(2) & (\STACK|mem~110_combout\ & ((\STACK_POINTER|DOUT\(0)) # (\STACK_POINTER|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111011110000111111100000000000001110111100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	datad => \STACK|ALT_INV_mem~110_combout\,
	datae => \STACK|ALT_INV_mem~111_combout\,
	combout => \STACK|mem~112_combout\);

\addr_in[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(6),
	o => \addr_in[6]~input_o\);

\STACK|mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[6]~input_o\,
	ena => \STACK|mem~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~56_q\);

\STACK|mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[6]~input_o\,
	ena => \STACK|mem~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~65_q\);

\STACK|mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[6]~input_o\,
	ena => \STACK|mem~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~74_q\);

\STACK|mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[6]~input_o\,
	ena => \STACK|mem~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~83_q\);

\STACK|mem~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~113_combout\ = ( \STACK|mem~74_q\ & ( \STACK|mem~83_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~56_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~65_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~74_q\ & ( \STACK|mem~83_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~56_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~65_q\)))) ) ) ) # ( \STACK|mem~74_q\ & ( !\STACK|mem~83_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~56_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~65_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~74_q\ & ( !\STACK|mem~83_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~56_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~65_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~56_q\,
	datad => \STACK|ALT_INV_mem~65_q\,
	datae => \STACK|ALT_INV_mem~74_q\,
	dataf => \STACK|ALT_INV_mem~83_q\,
	combout => \STACK|mem~113_combout\);

\STACK|mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[6]~input_o\,
	ena => \STACK|mem~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~20_q\);

\STACK|mem~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[6]~input_o\,
	ena => \STACK|mem~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~29_q\);

\STACK|mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[6]~input_o\,
	ena => \STACK|mem~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~38_q\);

\STACK|mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[6]~input_o\,
	ena => \STACK|mem~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~47_q\);

\STACK|mem~114\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~114_combout\ = ( \STACK|mem~38_q\ & ( \STACK|mem~47_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~20_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~29_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~38_q\ & ( \STACK|mem~47_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~20_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~29_q\)))) ) ) ) # ( \STACK|mem~38_q\ & ( !\STACK|mem~47_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~20_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~29_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~38_q\ & ( !\STACK|mem~47_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~20_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~29_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~20_q\,
	datad => \STACK|ALT_INV_mem~29_q\,
	datae => \STACK|ALT_INV_mem~38_q\,
	dataf => \STACK|ALT_INV_mem~47_q\,
	combout => \STACK|mem~114_combout\);

\STACK|mem~115\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~115_combout\ = ( \STACK|mem~114_combout\ & ( (!\STACK_POINTER|DOUT\(2) & (((\STACK_POINTER|DOUT\(0))) # (\STACK_POINTER|DOUT\(1)))) # (\STACK_POINTER|DOUT\(2) & (((!\STACK_POINTER|DOUT\(1) & !\STACK_POINTER|DOUT\(0))) # 
-- (\STACK|mem~113_combout\))) ) ) # ( !\STACK|mem~114_combout\ & ( (\STACK_POINTER|DOUT\(2) & (\STACK|mem~113_combout\ & ((\STACK_POINTER|DOUT\(0)) # (\STACK_POINTER|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111011110000111111100000000000001110111100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	datad => \STACK|ALT_INV_mem~113_combout\,
	datae => \STACK|ALT_INV_mem~114_combout\,
	combout => \STACK|mem~115_combout\);

\addr_in[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(7),
	o => \addr_in[7]~input_o\);

\STACK|mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[7]~input_o\,
	ena => \STACK|mem~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~57_q\);

\STACK|mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[7]~input_o\,
	ena => \STACK|mem~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~66_q\);

\STACK|mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[7]~input_o\,
	ena => \STACK|mem~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~75_q\);

\STACK|mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[7]~input_o\,
	ena => \STACK|mem~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~84_q\);

\STACK|mem~116\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~116_combout\ = ( \STACK|mem~75_q\ & ( \STACK|mem~84_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~57_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~66_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~75_q\ & ( \STACK|mem~84_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~57_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~66_q\)))) ) ) ) # ( \STACK|mem~75_q\ & ( !\STACK|mem~84_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~57_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~66_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~75_q\ & ( !\STACK|mem~84_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~57_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~66_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~57_q\,
	datad => \STACK|ALT_INV_mem~66_q\,
	datae => \STACK|ALT_INV_mem~75_q\,
	dataf => \STACK|ALT_INV_mem~84_q\,
	combout => \STACK|mem~116_combout\);

\STACK|mem~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[7]~input_o\,
	ena => \STACK|mem~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~21_q\);

\STACK|mem~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[7]~input_o\,
	ena => \STACK|mem~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~30_q\);

\STACK|mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[7]~input_o\,
	ena => \STACK|mem~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~39_q\);

\STACK|mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[7]~input_o\,
	ena => \STACK|mem~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~48_q\);

\STACK|mem~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~117_combout\ = ( \STACK|mem~39_q\ & ( \STACK|mem~48_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~21_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~30_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~39_q\ & ( \STACK|mem~48_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~21_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~30_q\)))) ) ) ) # ( \STACK|mem~39_q\ & ( !\STACK|mem~48_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~21_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~30_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~39_q\ & ( !\STACK|mem~48_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~21_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~30_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~21_q\,
	datad => \STACK|ALT_INV_mem~30_q\,
	datae => \STACK|ALT_INV_mem~39_q\,
	dataf => \STACK|ALT_INV_mem~48_q\,
	combout => \STACK|mem~117_combout\);

\STACK|mem~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~118_combout\ = ( \STACK|mem~117_combout\ & ( (!\STACK_POINTER|DOUT\(2) & (((\STACK_POINTER|DOUT\(0))) # (\STACK_POINTER|DOUT\(1)))) # (\STACK_POINTER|DOUT\(2) & (((!\STACK_POINTER|DOUT\(1) & !\STACK_POINTER|DOUT\(0))) # 
-- (\STACK|mem~116_combout\))) ) ) # ( !\STACK|mem~117_combout\ & ( (\STACK_POINTER|DOUT\(2) & (\STACK|mem~116_combout\ & ((\STACK_POINTER|DOUT\(0)) # (\STACK_POINTER|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111011110000111111100000000000001110111100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	datad => \STACK|ALT_INV_mem~116_combout\,
	datae => \STACK|ALT_INV_mem~117_combout\,
	combout => \STACK|mem~118_combout\);

\addr_in[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr_in(8),
	o => \addr_in[8]~input_o\);

\STACK|mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[8]~input_o\,
	ena => \STACK|mem~122_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~58_q\);

\STACK|mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[8]~input_o\,
	ena => \STACK|mem~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~67_q\);

\STACK|mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[8]~input_o\,
	ena => \STACK|mem~124_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~76_q\);

\STACK|mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[8]~input_o\,
	ena => \STACK|mem~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~85_q\);

\STACK|mem~119\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~119_combout\ = ( \STACK|mem~76_q\ & ( \STACK|mem~85_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~58_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~67_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~76_q\ & ( \STACK|mem~85_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~58_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~67_q\)))) ) ) ) # ( \STACK|mem~76_q\ & ( !\STACK|mem~85_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~58_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~67_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~76_q\ & ( !\STACK|mem~85_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~58_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~67_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~58_q\,
	datad => \STACK|ALT_INV_mem~67_q\,
	datae => \STACK|ALT_INV_mem~76_q\,
	dataf => \STACK|ALT_INV_mem~85_q\,
	combout => \STACK|mem~119_combout\);

\STACK|mem~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[8]~input_o\,
	ena => \STACK|mem~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~22_q\);

\STACK|mem~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[8]~input_o\,
	ena => \STACK|mem~127_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~31_q\);

\STACK|mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[8]~input_o\,
	ena => \STACK|mem~128_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~40_q\);

\STACK|mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \addr_in[8]~input_o\,
	ena => \STACK|mem~129_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STACK|mem~49_q\);

\STACK|mem~120\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~120_combout\ = ( \STACK|mem~40_q\ & ( \STACK|mem~49_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~22_q\)))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~31_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( 
-- !\STACK|mem~40_q\ & ( \STACK|mem~49_q\ & ( (!\STACK_POINTER|DOUT\(1) & ((!\STACK_POINTER|DOUT\(0)) # ((\STACK|mem~22_q\)))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~31_q\)))) ) ) ) # ( \STACK|mem~40_q\ & ( !\STACK|mem~49_q\ & 
-- ( (!\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK|mem~22_q\))) # (\STACK_POINTER|DOUT\(1) & (((\STACK|mem~31_q\)) # (\STACK_POINTER|DOUT\(0)))) ) ) ) # ( !\STACK|mem~40_q\ & ( !\STACK|mem~49_q\ & ( (!\STACK_POINTER|DOUT\(1) & 
-- (\STACK_POINTER|DOUT\(0) & (\STACK|mem~22_q\))) # (\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & ((\STACK|mem~31_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK|ALT_INV_mem~22_q\,
	datad => \STACK|ALT_INV_mem~31_q\,
	datae => \STACK|ALT_INV_mem~40_q\,
	dataf => \STACK|ALT_INV_mem~49_q\,
	combout => \STACK|mem~120_combout\);

\STACK|mem~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \STACK|mem~121_combout\ = ( \STACK|mem~120_combout\ & ( (!\STACK_POINTER|DOUT\(2) & (((\STACK_POINTER|DOUT\(0))) # (\STACK_POINTER|DOUT\(1)))) # (\STACK_POINTER|DOUT\(2) & (((!\STACK_POINTER|DOUT\(1) & !\STACK_POINTER|DOUT\(0))) # 
-- (\STACK|mem~119_combout\))) ) ) # ( !\STACK|mem~120_combout\ & ( (\STACK_POINTER|DOUT\(2) & (\STACK|mem~119_combout\ & ((\STACK_POINTER|DOUT\(0)) # (\STACK_POINTER|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111011110000111111100000000000001110111100001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	datad => \STACK|ALT_INV_mem~119_combout\,
	datae => \STACK|ALT_INV_mem~120_combout\,
	combout => \STACK|mem~121_combout\);

\stack_overflow~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stack_overflow~0_combout\ = ( \sel_push_pop~input_o\ & ( (\STACK_POINTER|DOUT\(1) & (\STACK_POINTER|DOUT\(0) & (\STACK_POINTER|DOUT\(2) & \hab~input_o\))) ) ) # ( !\sel_push_pop~input_o\ & ( (!\STACK_POINTER|DOUT\(1) & (!\STACK_POINTER|DOUT\(0) & 
-- (!\STACK_POINTER|DOUT\(2) & \hab~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000100000000100000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \STACK_POINTER|ALT_INV_DOUT\(1),
	datab => \STACK_POINTER|ALT_INV_DOUT\(0),
	datac => \STACK_POINTER|ALT_INV_DOUT\(2),
	datad => \ALT_INV_hab~input_o\,
	datae => \ALT_INV_sel_push_pop~input_o\,
	combout => \stack_overflow~0_combout\);

ww_addr_out(0) <= \addr_out[0]~output_o\;

ww_addr_out(1) <= \addr_out[1]~output_o\;

ww_addr_out(2) <= \addr_out[2]~output_o\;

ww_addr_out(3) <= \addr_out[3]~output_o\;

ww_addr_out(4) <= \addr_out[4]~output_o\;

ww_addr_out(5) <= \addr_out[5]~output_o\;

ww_addr_out(6) <= \addr_out[6]~output_o\;

ww_addr_out(7) <= \addr_out[7]~output_o\;

ww_addr_out(8) <= \addr_out[8]~output_o\;

ww_sp(0) <= \sp[0]~output_o\;

ww_sp(1) <= \sp[1]~output_o\;

ww_sp(2) <= \sp[2]~output_o\;

ww_stack_overflow <= \stack_overflow~output_o\;
END structure;


