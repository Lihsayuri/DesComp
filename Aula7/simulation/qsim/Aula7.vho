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

-- DATE "09/22/2022 21:50:35"

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

ENTITY 	Aula7 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	REGA_OUT : OUT std_logic_vector(7 DOWNTO 0);
	Palavra : OUT std_logic_vector(11 DOWNTO 0);
	EQUAL_FLAG : OUT std_logic;
	HabilitaRAM : OUT std_logic;
	MEM_ADDRESS : OUT std_logic_vector(5 DOWNTO 0);
	ADD_OUT : OUT std_logic_vector(7 DOWNTO 0)
	);
END Aula7;

ARCHITECTURE structure OF Aula7 IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_REGA_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Palavra : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_EQUAL_FLAG : std_logic;
SIGNAL ww_HabilitaRAM : std_logic;
SIGNAL ww_MEM_ADDRESS : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ADD_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \ADD_OUT[0]~output_o\ : std_logic;
SIGNAL \ADD_OUT[1]~output_o\ : std_logic;
SIGNAL \ADD_OUT[2]~output_o\ : std_logic;
SIGNAL \ADD_OUT[3]~output_o\ : std_logic;
SIGNAL \ADD_OUT[4]~output_o\ : std_logic;
SIGNAL \ADD_OUT[5]~output_o\ : std_logic;
SIGNAL \ADD_OUT[6]~output_o\ : std_logic;
SIGNAL \ADD_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \REGA_OUT[0]~output_o\ : std_logic;
SIGNAL \REGA_OUT[1]~output_o\ : std_logic;
SIGNAL \REGA_OUT[2]~output_o\ : std_logic;
SIGNAL \REGA_OUT[3]~output_o\ : std_logic;
SIGNAL \REGA_OUT[4]~output_o\ : std_logic;
SIGNAL \REGA_OUT[5]~output_o\ : std_logic;
SIGNAL \REGA_OUT[6]~output_o\ : std_logic;
SIGNAL \REGA_OUT[7]~output_o\ : std_logic;
SIGNAL \Palavra[0]~output_o\ : std_logic;
SIGNAL \Palavra[1]~output_o\ : std_logic;
SIGNAL \Palavra[2]~output_o\ : std_logic;
SIGNAL \Palavra[3]~output_o\ : std_logic;
SIGNAL \Palavra[4]~output_o\ : std_logic;
SIGNAL \Palavra[5]~output_o\ : std_logic;
SIGNAL \Palavra[6]~output_o\ : std_logic;
SIGNAL \Palavra[7]~output_o\ : std_logic;
SIGNAL \Palavra[8]~output_o\ : std_logic;
SIGNAL \Palavra[9]~output_o\ : std_logic;
SIGNAL \Palavra[10]~output_o\ : std_logic;
SIGNAL \Palavra[11]~output_o\ : std_logic;
SIGNAL \EQUAL_FLAG~output_o\ : std_logic;
SIGNAL \HabilitaRAM~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[0]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[1]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[2]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[3]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[4]~output_o\ : std_logic;
SIGNAL \MEM_ADDRESS[5]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_wirecell_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~2_combout\ : std_logic;
SIGNAL \RAM1|dado_out~16_combout\ : std_logic;
SIGNAL \RAM1|dado_out[0]~8_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[4]~1_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~2_combout\ : std_logic;
SIGNAL \RAM1|ram~560_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \RAM1|ram~559_combout\ : std_logic;
SIGNAL \RAM1|ram~15_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~551_combout\ : std_logic;
SIGNAL \RAM1|dado_out[1]~9_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~2\ : std_logic;
SIGNAL \processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|ram~16_q\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|ram~552_combout\ : std_logic;
SIGNAL \RAM1|dado_out[2]~10_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~6\ : std_logic;
SIGNAL \processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~6\ : std_logic;
SIGNAL \processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|dado_out[3]~11_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~10\ : std_logic;
SIGNAL \processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|ram~554_combout\ : std_logic;
SIGNAL \RAM1|dado_out[4]~12_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~14\ : std_logic;
SIGNAL \processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \RAM1|dado_out[5]~13_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18\ : std_logic;
SIGNAL \processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~18\ : std_logic;
SIGNAL \processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \RAM1|ram~556_combout\ : std_logic;
SIGNAL \RAM1|dado_out[6]~14_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~22\ : std_logic;
SIGNAL \processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~22\ : std_logic;
SIGNAL \processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~545_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~546_combout\ : std_logic;
SIGNAL \RAM1|ram~547_combout\ : std_logic;
SIGNAL \RAM1|ram~557_combout\ : std_logic;
SIGNAL \RAM1|dado_out[7]~15_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~26\ : std_logic;
SIGNAL \processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~26\ : std_logic;
SIGNAL \processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \RAM1|ram~550_combout\ : std_logic;
SIGNAL \RAM1|ram~558_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \logica_LED|comb~1_combout\ : std_logic;
SIGNAL \logica_LED|comb~0_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop1|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop1|DOUT~q\ : std_logic;
SIGNAL \logica_LED|FlipFlop2|DOUT~0_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop2|DOUT~q\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~3_combout\ : std_logic;
SIGNAL \decoderBloco|Equal7~0_combout\ : std_logic;
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \logica_LED|REG_LEDS|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \logica_LED|FlipFlop2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \logica_LED|FlipFlop1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \logica_LED|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out~16_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[7]~15_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[6]~14_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[5]~13_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[4]~12_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[3]~11_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[2]~10_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[1]~9_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
REGA_OUT <= ww_REGA_OUT;
Palavra <= ww_Palavra;
EQUAL_FLAG <= ww_EQUAL_FLAG;
HabilitaRAM <= ww_HabilitaRAM;
MEM_ADDRESS <= ww_MEM_ADDRESS;
ADD_OUT <= ww_ADD_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~531_combout\ <= NOT \RAM1|ram~531_combout\;
\RAM1|ALT_INV_ram~16_q\ <= NOT \RAM1|ram~16_q\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM1|dado_out[0]~8_combout\;
\RAM1|ALT_INV_ram~529_combout\ <= NOT \RAM1|ram~529_combout\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~15_q\ <= NOT \RAM1|ram~15_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\processador|decoderInstru1|ALT_INV_Equal10~2_combout\ <= NOT \processador|decoderInstru1|Equal10~2_combout\;
\processador|decoderInstru1|ALT_INV_saida[4]~1_combout\ <= NOT \processador|decoderInstru1|saida[4]~1_combout\;
\processador|decoderInstru1|ALT_INV_Equal10~1_combout\ <= NOT \processador|decoderInstru1|Equal10~1_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\logica_LED|FlipFlop2|ALT_INV_DOUT~q\ <= NOT \logica_LED|FlipFlop2|DOUT~q\;
\logica_LED|FlipFlop1|ALT_INV_DOUT~q\ <= NOT \logica_LED|FlipFlop1|DOUT~q\;
\processador|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \processador|ULA1|Add1~29_sumout\;
\processador|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \processador|ULA1|Add1~25_sumout\;
\processador|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \processador|ULA1|Add1~21_sumout\;
\processador|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \processador|ULA1|Add1~17_sumout\;
\processador|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \processador|ULA1|Add1~13_sumout\;
\processador|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \processador|ULA1|Add1~9_sumout\;
\processador|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \processador|ULA1|Add1~5_sumout\;
\processador|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \processador|ULA1|Add1~1_sumout\;
\processador|REGA|ALT_INV_DOUT\(7) <= NOT \processador|REGA|DOUT\(7);
\processador|REGA|ALT_INV_DOUT\(6) <= NOT \processador|REGA|DOUT\(6);
\processador|REGA|ALT_INV_DOUT\(5) <= NOT \processador|REGA|DOUT\(5);
\processador|REGA|ALT_INV_DOUT\(4) <= NOT \processador|REGA|DOUT\(4);
\processador|REGA|ALT_INV_DOUT\(3) <= NOT \processador|REGA|DOUT\(3);
\processador|REGA|ALT_INV_DOUT\(2) <= NOT \processador|REGA|DOUT\(2);
\processador|REGA|ALT_INV_DOUT\(1) <= NOT \processador|REGA|DOUT\(1);
\processador|REGA|ALT_INV_DOUT\(0) <= NOT \processador|REGA|DOUT\(0);
\processador|PC|ALT_INV_DOUT\(8) <= NOT \processador|PC|DOUT\(8);
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(6) <= NOT \processador|PC|DOUT\(6);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);
\logica_LED|ALT_INV_comb~1_combout\ <= NOT \logica_LED|comb~1_combout\;
\RAM1|ALT_INV_dado_out~16_combout\ <= NOT \RAM1|dado_out~16_combout\;
\RAM1|ALT_INV_dado_out[7]~15_combout\ <= NOT \RAM1|dado_out[7]~15_combout\;
\RAM1|ALT_INV_ram~550_combout\ <= NOT \RAM1|ram~550_combout\;
\RAM1|ALT_INV_ram~549_combout\ <= NOT \RAM1|ram~549_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~548_combout\ <= NOT \RAM1|ram~548_combout\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_dado_out[6]~14_combout\ <= NOT \RAM1|dado_out[6]~14_combout\;
\RAM1|ALT_INV_ram~547_combout\ <= NOT \RAM1|ram~547_combout\;
\RAM1|ALT_INV_ram~546_combout\ <= NOT \RAM1|ram~546_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~545_combout\ <= NOT \RAM1|ram~545_combout\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_dado_out[5]~13_combout\ <= NOT \RAM1|dado_out[5]~13_combout\;
\RAM1|ALT_INV_ram~544_combout\ <= NOT \RAM1|ram~544_combout\;
\RAM1|ALT_INV_ram~543_combout\ <= NOT \RAM1|ram~543_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_dado_out[4]~12_combout\ <= NOT \RAM1|dado_out[4]~12_combout\;
\RAM1|ALT_INV_ram~541_combout\ <= NOT \RAM1|ram~541_combout\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~539_combout\ <= NOT \RAM1|ram~539_combout\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_dado_out[3]~11_combout\ <= NOT \RAM1|dado_out[3]~11_combout\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~537_combout\ <= NOT \RAM1|ram~537_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_dado_out[2]~10_combout\ <= NOT \RAM1|dado_out[2]~10_combout\;
\RAM1|ALT_INV_ram~535_combout\ <= NOT \RAM1|ram~535_combout\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\RAM1|ALT_INV_ram~533_combout\ <= NOT \RAM1|ram~533_combout\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_dado_out[1]~9_combout\ <= NOT \RAM1|dado_out[1]~9_combout\;

\ADD_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~551_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \ADD_OUT[0]~output_o\);

\ADD_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~552_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \ADD_OUT[1]~output_o\);

\ADD_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~553_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \ADD_OUT[2]~output_o\);

\ADD_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~554_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \ADD_OUT[3]~output_o\);

\ADD_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~555_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \ADD_OUT[4]~output_o\);

\ADD_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~556_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \ADD_OUT[5]~output_o\);

\ADD_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~557_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \ADD_OUT[6]~output_o\);

\ADD_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~558_combout\,
	oe => \RAM1|dado_out~16_combout\,
	devoe => ww_devoe,
	o => \ADD_OUT[7]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|REG_LEDS|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|FlipFlop1|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \logica_LED|FlipFlop2|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\REGA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(0),
	devoe => ww_devoe,
	o => \REGA_OUT[0]~output_o\);

\REGA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(1),
	devoe => ww_devoe,
	o => \REGA_OUT[1]~output_o\);

\REGA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(2),
	devoe => ww_devoe,
	o => \REGA_OUT[2]~output_o\);

\REGA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(3),
	devoe => ww_devoe,
	o => \REGA_OUT[3]~output_o\);

\REGA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(4),
	devoe => ww_devoe,
	o => \REGA_OUT[4]~output_o\);

\REGA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(5),
	devoe => ww_devoe,
	o => \REGA_OUT[5]~output_o\);

\REGA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(6),
	devoe => ww_devoe,
	o => \REGA_OUT[6]~output_o\);

\REGA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT\(7),
	devoe => ww_devoe,
	o => \REGA_OUT[7]~output_o\);

\Palavra[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal10~0_combout\,
	devoe => ww_devoe,
	o => \Palavra[0]~output_o\);

\Palavra[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida~0_combout\,
	devoe => ww_devoe,
	o => \Palavra[1]~output_o\);

\Palavra[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Palavra[2]~output_o\);

\Palavra[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal10~1_combout\,
	devoe => ww_devoe,
	o => \Palavra[3]~output_o\);

\Palavra[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	devoe => ww_devoe,
	o => \Palavra[4]~output_o\);

\Palavra[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|saida~2_combout\,
	devoe => ww_devoe,
	o => \Palavra[5]~output_o\);

\Palavra[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal10~2_combout\,
	devoe => ww_devoe,
	o => \Palavra[6]~output_o\);

\Palavra[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal10~3_combout\,
	devoe => ww_devoe,
	o => \Palavra[7]~output_o\);

\Palavra[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Palavra[8]~output_o\);

\Palavra[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Palavra[9]~output_o\);

\Palavra[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|decoderInstru1|Equal10~4_combout\,
	devoe => ww_devoe,
	o => \Palavra[10]~output_o\);

\Palavra[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Palavra[11]~output_o\);

\EQUAL_FLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \EQUAL_FLAG~output_o\);

\HabilitaRAM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderBloco|Equal7~0_combout\,
	devoe => ww_devoe,
	o => \HabilitaRAM~output_o\);

\MEM_ADDRESS[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|ALT_INV_memROM~4_combout\,
	devoe => ww_devoe,
	o => \MEM_ADDRESS[0]~output_o\);

\MEM_ADDRESS[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
	devoe => ww_devoe,
	o => \MEM_ADDRESS[1]~output_o\);

\MEM_ADDRESS[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => \MEM_ADDRESS[2]~output_o\);

\MEM_ADDRESS[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~7_combout\,
	devoe => ww_devoe,
	o => \MEM_ADDRESS[3]~output_o\);

\MEM_ADDRESS[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => \MEM_ADDRESS[4]~output_o\);

\MEM_ADDRESS[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => \MEM_ADDRESS[5]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\processador|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~1_sumout\ = SUM(( \processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \processador|incrementaPC|Add0~2\ = CARRY(( \processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|incrementaPC|Add0~1_sumout\,
	cout => \processador|incrementaPC|Add0~2\);

\processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~5_sumout\ = SUM(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))
-- \processador|incrementaPC|Add0~6\ = CARRY(( \processador|PC|DOUT\(1) ) + ( GND ) + ( \processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(1),
	cin => \processador|incrementaPC|Add0~2\,
	sumout => \processador|incrementaPC|Add0~5_sumout\,
	cout => \processador|incrementaPC|Add0~6\);

\processador|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~9_sumout\ = SUM(( \processador|PC|DOUT\(2) ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))
-- \processador|incrementaPC|Add0~10\ = CARRY(( \processador|PC|DOUT\(2) ) + ( GND ) + ( \processador|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(2),
	cin => \processador|incrementaPC|Add0~6\,
	sumout => \processador|incrementaPC|Add0~9_sumout\,
	cout => \processador|incrementaPC|Add0~10\);

\processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~13_sumout\ = SUM(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|incrementaPC|Add0~10\ ))
-- \processador|incrementaPC|Add0~14\ = CARRY(( \processador|PC|DOUT\(3) ) + ( GND ) + ( \processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(3),
	cin => \processador|incrementaPC|Add0~10\,
	sumout => \processador|incrementaPC|Add0~13_sumout\,
	cout => \processador|incrementaPC|Add0~14\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(2) & \processador|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~7_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(0) $ (\processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT\(2) $ (!\processador|PC|DOUT\(3))))) # (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(1)) # (!\processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010100000010111101010000001011110101000000101111010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) $ (!\processador|PC|DOUT\(2))))) # (\processador|PC|DOUT\(3) & (((\processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001111001010000000111100101000000011110010100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\processador|decoderInstru1|Equal10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~4_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|Equal10~4_combout\);

\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3)))) # (\processador|PC|DOUT\(0) & (((!\processador|PC|DOUT\(2) & \processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010000000000100101000000000010010100000000001001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\processador|PC|DOUT\(0) & (((\processador|PC|DOUT\(3)) # (\processador|PC|DOUT\(2))) # (\processador|PC|DOUT\(1)))) # (\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(1))) # 
-- (\processador|PC|DOUT\(2) & ((\processador|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101011101111011010101110111101101010111011110110101011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~4_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_wirecell_combout\ = !\ROM1|memROM~4_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~4_wirecell_combout\);

\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~4_wirecell_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & (\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~6_combout\);

\processador|decoderInstru1|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~2_combout\ = (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|Equal10~2_combout\);

\RAM1|dado_out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~16_combout\ = (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(2) $ (!\processador|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000001010000000000000101000000000000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT\(0),
	combout => \RAM1|dado_out~16_combout\);

\RAM1|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~8_combout\ = (!\RAM1|dado_out~16_combout\) # ((!\ROM1|memROM~6_combout\ & \RAM1|ram~529_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001110111011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \RAM1|ALT_INV_ram~529_combout\,
	combout => \RAM1|dado_out[0]~8_combout\);

\processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~1_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~4_combout\)) ) + ( \processador|REGA|DOUT\(0) ) + ( !VCC ))
-- \processador|ULA1|Add0~2\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~4_combout\)) ) + ( \processador|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~8_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|ULA1|Add0~1_sumout\,
	cout => \processador|ULA1|Add0~2\);

\processador|decoderInstru1|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[4]~1_combout\ = (!\ROM1|memROM~1_combout\ $ (!\ROM1|memROM~2_combout\)) # (\ROM1|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110101111101011111010111110101111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|saida[4]~1_combout\);

\processador|ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \processador|ULA1|Add1~34_cout\);

\processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~1_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~4_combout\)) ) + ( \processador|REGA|DOUT\(0) ) + ( 
-- \processador|ULA1|Add1~34_cout\ ))
-- \processador|ULA1|Add1~2\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~4_combout\)) ) + ( \processador|REGA|DOUT\(0) ) + ( 
-- \processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~8_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	cin => \processador|ULA1|Add1~34_cout\,
	sumout => \processador|ULA1|Add1~1_sumout\,
	cout => \processador|ULA1|Add1~2\);

\processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~0_combout\ = ( \processador|ULA1|Add1~1_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~4_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[0]~8_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010101000011101011111110100100000101010000111010111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~8_combout\,
	datae => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \processador|ULA1|saida[0]~0_combout\);

\processador|decoderInstru1|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~1_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|Equal10~1_combout\);

\processador|decoderInstru1|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~2_combout\ = !\ROM1|memROM~2_combout\ $ (((\ROM1|memROM~1_combout\) # (\ROM1|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011110000111100001111000011110000111100001111000011110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|saida~2_combout\);

\processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|ULA1|Add0~1_sumout\,
	asdata => \processador|ULA1|saida[0]~0_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(1) & \processador|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~560_combout\);

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(0),
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (\RAM1|ram~23_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (\RAM1|ram~23_q\ & 
-- ((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT\(0)))) ) ) ) # ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(1) & ( (\RAM1|ram~23_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( 
-- !\processador|PC|DOUT\(1) & ( \RAM1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101010101010101000001010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~23_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~527_combout\);

\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(1) & \processador|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~559_combout\);

\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(0),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (\RAM1|ram~15_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (\RAM1|ram~15_q\ & 
-- ((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT\(0)))) ) ) ) # ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(1) & ( (\RAM1|ram~15_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( 
-- !\processador|PC|DOUT\(1) & ( \RAM1|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101010101010101000001010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~15_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~528_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & \processador|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~8_combout\);

\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~528_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~528_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~529_combout\);

\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = (!\ROM1|memROM~6_combout\ & \RAM1|ram~529_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~529_combout\,
	combout => \RAM1|ram~551_combout\);

\RAM1|dado_out[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[1]~9_combout\ = (!\RAM1|dado_out~16_combout\) # ((!\ROM1|memROM~6_combout\ & \RAM1|ram~532_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001110111011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \RAM1|ALT_INV_ram~532_combout\,
	combout => \RAM1|dado_out[1]~9_combout\);

\processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~5_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~5_combout\)) ) + ( \processador|REGA|DOUT\(1) ) + ( 
-- \processador|ULA1|Add0~2\ ))
-- \processador|ULA1|Add0~6\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~5_combout\)) ) + ( \processador|REGA|DOUT\(1) ) + ( 
-- \processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_dado_out[1]~9_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	cin => \processador|ULA1|Add0~2\,
	sumout => \processador|ULA1|Add0~5_sumout\,
	cout => \processador|ULA1|Add0~6\);

\processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~5_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~5_combout\)) ) + ( \processador|REGA|DOUT\(1) ) + ( 
-- \processador|ULA1|Add1~2\ ))
-- \processador|ULA1|Add1~6\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~5_combout\)) ) + ( \processador|REGA|DOUT\(1) ) + ( 
-- \processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_dado_out[1]~9_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	cin => \processador|ULA1|Add1~2\,
	sumout => \processador|ULA1|Add1~5_sumout\,
	cout => \processador|ULA1|Add1~6\);

\processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[1]~1_combout\ = ( \processador|ULA1|Add1~5_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~5_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~5_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[1]~9_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_dado_out[1]~9_combout\,
	datae => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \processador|ULA1|saida[1]~1_combout\);

\processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|ULA1|Add0~5_sumout\,
	asdata => \processador|ULA1|saida[1]~1_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(1),
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (\RAM1|ram~24_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (\RAM1|ram~24_q\ & 
-- ((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT\(0)))) ) ) ) # ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(1) & ( (\RAM1|ram~24_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( 
-- !\processador|PC|DOUT\(1) & ( \RAM1|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101010101010101000001010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~530_combout\);

\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(1),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( \processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (\RAM1|ram~16_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (\RAM1|ram~16_q\ & 
-- ((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT\(0)))) ) ) ) # ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(1) & ( (\RAM1|ram~16_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( 
-- !\processador|PC|DOUT\(1) & ( \RAM1|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101010101010101000001010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~16_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~531_combout\);

\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~531_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~530_combout\,
	datab => \RAM1|ALT_INV_ram~531_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~532_combout\);

\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = (!\ROM1|memROM~6_combout\ & \RAM1|ram~532_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~532_combout\,
	combout => \RAM1|ram~552_combout\);

\RAM1|dado_out[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[2]~10_combout\ = (!\RAM1|dado_out~16_combout\) # ((!\ROM1|memROM~6_combout\ & \RAM1|ram~535_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001110111011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \RAM1|ALT_INV_ram~535_combout\,
	combout => \RAM1|dado_out[2]~10_combout\);

\processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~9_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[2]~10_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(2) ) + ( 
-- \processador|ULA1|Add0~6\ ))
-- \processador|ULA1|Add0~10\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[2]~10_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(2) ) + ( 
-- \processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[2]~10_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add0~6\,
	sumout => \processador|ULA1|Add0~9_sumout\,
	cout => \processador|ULA1|Add0~10\);

\processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~9_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[2]~10_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(2) ) + ( 
-- \processador|ULA1|Add1~6\ ))
-- \processador|ULA1|Add1~10\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[2]~10_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(2) ) + ( 
-- \processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[2]~10_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add1~6\,
	sumout => \processador|ULA1|Add1~9_sumout\,
	cout => \processador|ULA1|Add1~10\);

\processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[2]~2_combout\ = ( \processador|ULA1|Add1~9_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[2]~10_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~9_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[2]~10_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[2]~10_combout\,
	datae => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \processador|ULA1|saida[2]~2_combout\);

\processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|ULA1|Add0~9_sumout\,
	asdata => \processador|ULA1|saida[2]~2_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(2),
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( \processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (\RAM1|ram~25_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (\RAM1|ram~25_q\ & 
-- ((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT\(0)))) ) ) ) # ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(1) & ( (\RAM1|ram~25_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( 
-- !\processador|PC|DOUT\(1) & ( \RAM1|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101010101010101000001010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~25_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~533_combout\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(2),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (\RAM1|ram~17_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( \processador|PC|DOUT\(1) & ( (\RAM1|ram~17_q\ & 
-- ((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT\(0)))) ) ) ) # ( \processador|PC|DOUT\(3) & ( !\processador|PC|DOUT\(1) & ( (\RAM1|ram~17_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT\(2)))) ) ) ) # ( !\processador|PC|DOUT\(3) & ( 
-- !\processador|PC|DOUT\(1) & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101010101010101000001010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT\(2),
	datae => \processador|PC|ALT_INV_DOUT\(3),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \RAM1|ram~534_combout\);

\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~534_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~533_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~533_combout\,
	datab => \RAM1|ALT_INV_ram~534_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~535_combout\);

\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = (!\ROM1|memROM~6_combout\ & \RAM1|ram~535_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~535_combout\,
	combout => \RAM1|ram~553_combout\);

\RAM1|dado_out[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[3]~11_combout\ = (!\RAM1|dado_out~16_combout\) # ((!\ROM1|memROM~6_combout\ & \RAM1|ram~538_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001110111011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \RAM1|ALT_INV_ram~538_combout\,
	combout => \RAM1|dado_out[3]~11_combout\);

\processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~13_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[3]~11_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~7_combout\)) ) + ( \processador|REGA|DOUT\(3) ) + ( 
-- \processador|ULA1|Add0~10\ ))
-- \processador|ULA1|Add0~14\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[3]~11_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~7_combout\)) ) + ( \processador|REGA|DOUT\(3) ) + ( 
-- \processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_dado_out[3]~11_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	cin => \processador|ULA1|Add0~10\,
	sumout => \processador|ULA1|Add0~13_sumout\,
	cout => \processador|ULA1|Add0~14\);

\processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~13_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[3]~11_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~7_combout\)) ) + ( \processador|REGA|DOUT\(3) ) + ( 
-- \processador|ULA1|Add1~10\ ))
-- \processador|ULA1|Add1~14\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[3]~11_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~7_combout\)) ) + ( \processador|REGA|DOUT\(3) ) + ( 
-- \processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_dado_out[3]~11_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	cin => \processador|ULA1|Add1~10\,
	sumout => \processador|ULA1|Add1~13_sumout\,
	cout => \processador|ULA1|Add1~14\);

\processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[3]~3_combout\ = ( \processador|ULA1|Add1~13_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[3]~11_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~7_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~13_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[3]~11_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_dado_out[3]~11_combout\,
	datae => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \processador|ULA1|saida[3]~3_combout\);

\processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|ULA1|Add0~13_sumout\,
	asdata => \processador|ULA1|saida[3]~3_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(3),
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~536_combout\);

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(3),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~537_combout\);

\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~537_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~536_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~536_combout\,
	datab => \RAM1|ALT_INV_ram~537_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~538_combout\);

\RAM1|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~554_combout\ = (!\ROM1|memROM~6_combout\ & \RAM1|ram~538_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~538_combout\,
	combout => \RAM1|ram~554_combout\);

\RAM1|dado_out[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[4]~12_combout\ = (!\RAM1|dado_out~16_combout\) # ((!\ROM1|memROM~6_combout\ & \RAM1|ram~541_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001110111011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \RAM1|ALT_INV_ram~541_combout\,
	combout => \RAM1|dado_out[4]~12_combout\);

\processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~17_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[4]~12_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(4) ) + ( 
-- \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~18\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[4]~12_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(4) ) + ( 
-- \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[4]~12_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~17_sumout\,
	cout => \processador|ULA1|Add0~18\);

\processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~17_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[4]~12_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(4) ) + ( 
-- \processador|ULA1|Add1~14\ ))
-- \processador|ULA1|Add1~18\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[4]~12_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(4) ) + ( 
-- \processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[4]~12_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	cin => \processador|ULA1|Add1~14\,
	sumout => \processador|ULA1|Add1~17_sumout\,
	cout => \processador|ULA1|Add1~18\);

\processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[4]~4_combout\ = ( \processador|ULA1|Add1~17_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[4]~12_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~17_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[4]~12_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[4]~12_combout\,
	datae => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \processador|ULA1|saida[4]~4_combout\);

\processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|ULA1|Add0~17_sumout\,
	asdata => \processador|ULA1|saida[4]~4_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(4));

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(4),
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~539_combout\);

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(4),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~540_combout\);

\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~540_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~539_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~539_combout\,
	datab => \RAM1|ALT_INV_ram~540_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~541_combout\);

\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = (!\ROM1|memROM~6_combout\ & \RAM1|ram~541_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~541_combout\,
	combout => \RAM1|ram~555_combout\);

\RAM1|dado_out[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[5]~13_combout\ = (!\RAM1|dado_out~16_combout\) # ((!\ROM1|memROM~6_combout\ & \RAM1|ram~544_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001110111011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \RAM1|ALT_INV_ram~544_combout\,
	combout => \RAM1|dado_out[5]~13_combout\);

\processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~21_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[5]~13_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~8_combout\)) ) + ( \processador|REGA|DOUT\(5) ) + ( 
-- \processador|ULA1|Add0~18\ ))
-- \processador|ULA1|Add0~22\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[5]~13_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~8_combout\)) ) + ( \processador|REGA|DOUT\(5) ) + ( 
-- \processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[5]~13_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	cin => \processador|ULA1|Add0~18\,
	sumout => \processador|ULA1|Add0~21_sumout\,
	cout => \processador|ULA1|Add0~22\);

\processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~21_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[5]~13_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~8_combout\)) ) + ( \processador|REGA|DOUT\(5) ) + ( 
-- \processador|ULA1|Add1~18\ ))
-- \processador|ULA1|Add1~22\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[5]~13_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~8_combout\)) ) + ( \processador|REGA|DOUT\(5) ) + ( 
-- \processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[5]~13_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	cin => \processador|ULA1|Add1~18\,
	sumout => \processador|ULA1|Add1~21_sumout\,
	cout => \processador|ULA1|Add1~22\);

\processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[5]~5_combout\ = ( \processador|ULA1|Add1~21_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[5]~13_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~8_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~21_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[5]~13_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[5]~13_combout\,
	datae => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \processador|ULA1|saida[5]~5_combout\);

\processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|ULA1|Add0~21_sumout\,
	asdata => \processador|ULA1|saida[5]~5_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(5));

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(5),
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~542_combout\);

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(5),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~543_combout\);

\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~543_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~542_combout\,
	datab => \RAM1|ALT_INV_ram~543_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~544_combout\);

\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = (!\ROM1|memROM~6_combout\ & \RAM1|ram~544_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~544_combout\,
	combout => \RAM1|ram~556_combout\);

\RAM1|dado_out[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[6]~14_combout\ = (!\RAM1|dado_out~16_combout\) # ((!\ROM1|memROM~6_combout\ & \RAM1|ram~547_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001110111011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \RAM1|ALT_INV_ram~547_combout\,
	combout => \RAM1|dado_out[6]~14_combout\);

\processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~25_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[6]~14_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( 
-- \processador|ULA1|Add0~22\ ))
-- \processador|ULA1|Add0~26\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[6]~14_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( 
-- \processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[6]~14_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	cin => \processador|ULA1|Add0~22\,
	sumout => \processador|ULA1|Add0~25_sumout\,
	cout => \processador|ULA1|Add0~26\);

\processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~25_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[6]~14_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( 
-- \processador|ULA1|Add1~22\ ))
-- \processador|ULA1|Add1~26\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[6]~14_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( 
-- \processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[6]~14_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	cin => \processador|ULA1|Add1~22\,
	sumout => \processador|ULA1|Add1~25_sumout\,
	cout => \processador|ULA1|Add1~26\);

\processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[6]~6_combout\ = ( \processador|ULA1|Add1~25_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[6]~14_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~25_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[6]~14_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[6]~14_combout\,
	datae => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \processador|ULA1|saida[6]~6_combout\);

\processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|ULA1|Add0~25_sumout\,
	asdata => \processador|ULA1|saida[6]~6_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(6));

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(6),
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~29_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~545_combout\);

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(6),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~546_combout\);

\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~546_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~545_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~545_combout\,
	datab => \RAM1|ALT_INV_ram~546_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~547_combout\);

\RAM1|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~557_combout\ = (!\ROM1|memROM~6_combout\ & \RAM1|ram~547_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~547_combout\,
	combout => \RAM1|ram~557_combout\);

\RAM1|dado_out[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[7]~15_combout\ = (!\RAM1|dado_out~16_combout\) # ((!\ROM1|memROM~6_combout\ & \RAM1|ram~550_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101110110011001110111011001100111011101100110011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \RAM1|ALT_INV_ram~550_combout\,
	combout => \RAM1|dado_out[7]~15_combout\);

\processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~29_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[7]~15_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~8_combout\)) ) + ( \processador|REGA|DOUT\(7) ) + ( 
-- \processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[7]~15_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	cin => \processador|ULA1|Add0~26\,
	sumout => \processador|ULA1|Add0~29_sumout\);

\processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~29_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[7]~15_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~8_combout\)) ) + ( \processador|REGA|DOUT\(7) ) + ( 
-- \processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[7]~15_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	cin => \processador|ULA1|Add1~26\,
	sumout => \processador|ULA1|Add1~29_sumout\);

\processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[7]~7_combout\ = ( \processador|ULA1|Add1~29_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[7]~15_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~8_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~29_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[7]~15_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010101111101111100000010100010100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[7]~15_combout\,
	datae => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \processador|ULA1|saida[7]~7_combout\);

\processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|ULA1|Add0~29_sumout\,
	asdata => \processador|ULA1|saida[7]~7_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(7));

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(7),
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~548_combout\);

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(7),
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~549_combout\);

\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~549_combout\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~548_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~548_combout\,
	datab => \RAM1|ALT_INV_ram~549_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~550_combout\);

\RAM1|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~558_combout\ = (!\ROM1|memROM~6_combout\ & \RAM1|ram~550_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~550_combout\,
	combout => \RAM1|ram~558_combout\);

\processador|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~17_sumout\ = SUM(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))
-- \processador|incrementaPC|Add0~18\ = CARRY(( \processador|PC|DOUT\(4) ) + ( GND ) + ( \processador|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(4),
	cin => \processador|incrementaPC|Add0~14\,
	sumout => \processador|incrementaPC|Add0~17_sumout\,
	cout => \processador|incrementaPC|Add0~18\);

\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~17_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

\processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~21_sumout\ = SUM(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))
-- \processador|incrementaPC|Add0~22\ = CARRY(( \processador|PC|DOUT\(5) ) + ( GND ) + ( \processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(5),
	cin => \processador|incrementaPC|Add0~18\,
	sumout => \processador|incrementaPC|Add0~21_sumout\,
	cout => \processador|incrementaPC|Add0~22\);

\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

\processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~25_sumout\ = SUM(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))
-- \processador|incrementaPC|Add0~26\ = CARRY(( \processador|PC|DOUT\(6) ) + ( GND ) + ( \processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(6),
	cin => \processador|incrementaPC|Add0~22\,
	sumout => \processador|incrementaPC|Add0~25_sumout\,
	cout => \processador|incrementaPC|Add0~26\);

\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~25_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

\processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~29_sumout\ = SUM(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))
-- \processador|incrementaPC|Add0~30\ = CARRY(( \processador|PC|DOUT\(7) ) + ( GND ) + ( \processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(7),
	cin => \processador|incrementaPC|Add0~26\,
	sumout => \processador|incrementaPC|Add0~29_sumout\,
	cout => \processador|incrementaPC|Add0~30\);

\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~29_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

\processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|incrementaPC|Add0~33_sumout\ = SUM(( \processador|PC|DOUT\(8) ) + ( GND ) + ( \processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \processador|PC|ALT_INV_DOUT\(8),
	cin => \processador|incrementaPC|Add0~30\,
	sumout => \processador|incrementaPC|Add0~33_sumout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(0) & ((\processador|PC|DOUT\(3))))) # (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(0) $ (!\processador|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010100000000001101010000000000110101000000000011010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~3_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

\logica_LED|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~1_combout\ = (!\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(1) $ (!\processador|PC|DOUT\(0))))) # (\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011000100000010001100010000001000110001000000100011000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT\(0),
	combout => \logica_LED|comb~1_combout\);

\logica_LED|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~0_combout\ = (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & \logica_LED|comb~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \logica_LED|ALT_INV_comb~1_combout\,
	combout => \logica_LED|comb~0_combout\);

\logica_LED|REG_LEDS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(0),
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(0));

\logica_LED|REG_LEDS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(1),
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(1));

\logica_LED|REG_LEDS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(2),
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(2));

\logica_LED|REG_LEDS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(3),
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(3));

\logica_LED|REG_LEDS|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(4),
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(4));

\logica_LED|REG_LEDS|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(5),
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(5));

\logica_LED|REG_LEDS|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(6),
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(6));

\logica_LED|REG_LEDS|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(7),
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(7));

\logica_LED|FlipFlop1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|FlipFlop1|DOUT~0_combout\ = ( \logica_LED|comb~1_combout\ & ( (!\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~5_combout\ & ((\processador|REGA|DOUT\(0)))) # (\ROM1|memROM~5_combout\ & (\logica_LED|FlipFlop1|DOUT~q\)))) # (\ROM1|memROM~4_combout\ & 
-- (\logica_LED|FlipFlop1|DOUT~q\)) ) ) # ( !\logica_LED|comb~1_combout\ & ( \logica_LED|FlipFlop1|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001101010101010101010101010101010011010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_LED|FlipFlop1|ALT_INV_DOUT~q\,
	datab => \processador|REGA|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \logica_LED|ALT_INV_comb~1_combout\,
	combout => \logica_LED|FlipFlop1|DOUT~0_combout\);

\logica_LED|FlipFlop1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \logica_LED|FlipFlop1|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|FlipFlop1|DOUT~q\);

\logica_LED|FlipFlop2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|FlipFlop2|DOUT~0_combout\ = ( \logica_LED|comb~1_combout\ & ( (!\ROM1|memROM~4_combout\ & (\logica_LED|FlipFlop2|DOUT~q\)) # (\ROM1|memROM~4_combout\ & ((!\ROM1|memROM~5_combout\ & (\logica_LED|FlipFlop2|DOUT~q\)) # (\ROM1|memROM~5_combout\ & 
-- ((\processador|REGA|DOUT\(0)))))) ) ) # ( !\logica_LED|comb~1_combout\ & ( \logica_LED|FlipFlop2|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101001101010101010101010101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \logica_LED|FlipFlop2|ALT_INV_DOUT~q\,
	datab => \processador|REGA|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	datae => \logica_LED|ALT_INV_comb~1_combout\,
	combout => \logica_LED|FlipFlop2|DOUT~0_combout\);

\logica_LED|FlipFlop2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \logica_LED|FlipFlop2|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|FlipFlop2|DOUT~q\);

\processador|decoderInstru1|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~0_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|Equal10~0_combout\);

\processador|decoderInstru1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~0_combout\ = (\ROM1|memROM~2_combout\ & ((\ROM1|memROM~1_combout\) # (\ROM1|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|saida~0_combout\);

\processador|decoderInstru1|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~3_combout\ = (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|Equal10~3_combout\);

\decoderBloco|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBloco|Equal7~0_combout\ = (!\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(2)) # ((!\processador|PC|DOUT\(1) & !\processador|PC|DOUT\(0))))) # (\processador|PC|DOUT\(3) & (((\processador|PC|DOUT\(1) & \processador|PC|DOUT\(0))) # 
-- (\processador|PC|DOUT\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011100110011101101110011001110110111001100111011011100110011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT\(0),
	combout => \decoderBloco|Equal7~0_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_REGA_OUT(0) <= \REGA_OUT[0]~output_o\;

ww_REGA_OUT(1) <= \REGA_OUT[1]~output_o\;

ww_REGA_OUT(2) <= \REGA_OUT[2]~output_o\;

ww_REGA_OUT(3) <= \REGA_OUT[3]~output_o\;

ww_REGA_OUT(4) <= \REGA_OUT[4]~output_o\;

ww_REGA_OUT(5) <= \REGA_OUT[5]~output_o\;

ww_REGA_OUT(6) <= \REGA_OUT[6]~output_o\;

ww_REGA_OUT(7) <= \REGA_OUT[7]~output_o\;

ww_Palavra(0) <= \Palavra[0]~output_o\;

ww_Palavra(1) <= \Palavra[1]~output_o\;

ww_Palavra(2) <= \Palavra[2]~output_o\;

ww_Palavra(3) <= \Palavra[3]~output_o\;

ww_Palavra(4) <= \Palavra[4]~output_o\;

ww_Palavra(5) <= \Palavra[5]~output_o\;

ww_Palavra(6) <= \Palavra[6]~output_o\;

ww_Palavra(7) <= \Palavra[7]~output_o\;

ww_Palavra(8) <= \Palavra[8]~output_o\;

ww_Palavra(9) <= \Palavra[9]~output_o\;

ww_Palavra(10) <= \Palavra[10]~output_o\;

ww_Palavra(11) <= \Palavra[11]~output_o\;

ww_EQUAL_FLAG <= \EQUAL_FLAG~output_o\;

ww_HabilitaRAM <= \HabilitaRAM~output_o\;

ww_MEM_ADDRESS(0) <= \MEM_ADDRESS[0]~output_o\;

ww_MEM_ADDRESS(1) <= \MEM_ADDRESS[1]~output_o\;

ww_MEM_ADDRESS(2) <= \MEM_ADDRESS[2]~output_o\;

ww_MEM_ADDRESS(3) <= \MEM_ADDRESS[3]~output_o\;

ww_MEM_ADDRESS(4) <= \MEM_ADDRESS[4]~output_o\;

ww_MEM_ADDRESS(5) <= \MEM_ADDRESS[5]~output_o\;

ww_ADD_OUT(0) <= \ADD_OUT[0]~output_o\;

ww_ADD_OUT(1) <= \ADD_OUT[1]~output_o\;

ww_ADD_OUT(2) <= \ADD_OUT[2]~output_o\;

ww_ADD_OUT(3) <= \ADD_OUT[3]~output_o\;

ww_ADD_OUT(4) <= \ADD_OUT[4]~output_o\;

ww_ADD_OUT(5) <= \ADD_OUT[5]~output_o\;

ww_ADD_OUT(6) <= \ADD_OUT[6]~output_o\;

ww_ADD_OUT(7) <= \ADD_OUT[7]~output_o\;
END structure;


