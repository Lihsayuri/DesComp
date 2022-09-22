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

-- DATE "09/22/2022 16:13:05"

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
	PC_OUT : BUFFER std_logic_vector(8 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	REGA_OUT : BUFFER std_logic_vector(7 DOWNTO 0);
	Palavra : BUFFER std_logic_vector(11 DOWNTO 0);
	EQUAL_FLAG : BUFFER std_logic;
	HabilitaRAM : BUFFER std_logic;
	MEM_ADDRESS : BUFFER std_logic_vector(5 DOWNTO 0);
	ADD_OUT : BUFFER std_logic_vector(7 DOWNTO 0)
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
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
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
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~6_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[5]~7_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[1]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~527_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[5]~4_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[4]~2_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal8~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida[5]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~544_combout\ : std_logic;
SIGNAL \RAM1|ram~519_q\ : std_logic;
SIGNAL \RAM1|ram~528_combout\ : std_logic;
SIGNAL \RAM1|dado_out[0]~16_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~2\ : std_logic;
SIGNAL \processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~520_q\ : std_logic;
SIGNAL \RAM1|ram~530_combout\ : std_logic;
SIGNAL \RAM1|dado_out[1]~17_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~6\ : std_logic;
SIGNAL \processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~6\ : std_logic;
SIGNAL \processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~521_q\ : std_logic;
SIGNAL \RAM1|ram~532_combout\ : std_logic;
SIGNAL \RAM1|dado_out[2]~18_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add1~10\ : std_logic;
SIGNAL \processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~522_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|dado_out[3]~19_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~523_q\ : std_logic;
SIGNAL \RAM1|ram~536_combout\ : std_logic;
SIGNAL \RAM1|dado_out[4]~20_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~14\ : std_logic;
SIGNAL \processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18\ : std_logic;
SIGNAL \processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~524_q\ : std_logic;
SIGNAL \RAM1|ram~538_combout\ : std_logic;
SIGNAL \RAM1|dado_out[5]~21_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~18\ : std_logic;
SIGNAL \processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal3~1_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~22\ : std_logic;
SIGNAL \processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~525_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|dado_out[6]~22_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~22\ : std_logic;
SIGNAL \processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|Add0~26\ : std_logic;
SIGNAL \processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~526_q\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
SIGNAL \RAM1|dado_out[7]~23_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~26\ : std_logic;
SIGNAL \processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~1_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \processador|FLAG|DOUT~q\ : std_logic;
SIGNAL \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \processador|decoderInstru1|saida~5_combout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \RAM1|ram~529_combout\ : std_logic;
SIGNAL \RAM1|ram~531_combout\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~537_combout\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[4]~4_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[5]~5_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[6]~6_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[7]~7_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \processador|MUX2|MUX_OUT[8]~8_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal5~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal3~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal4~0_combout\ : std_logic;
SIGNAL \processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|REG_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \processador|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida~6_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida[5]~4_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \processador|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processador|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[7]~23_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[6]~22_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[5]~21_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[4]~20_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[3]~19_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[2]~18_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[1]~17_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_dado_out[0]~16_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \processador|REG_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\ : std_logic;

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
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\processador|FLAG|ALT_INV_DOUT~q\ <= NOT \processador|FLAG|DOUT~q\;
\processador|decoderInstru1|ALT_INV_saida~6_combout\ <= NOT \processador|decoderInstru1|saida~6_combout\;
\processador|decoderInstru1|ALT_INV_saida[5]~4_combout\ <= NOT \processador|decoderInstru1|saida[5]~4_combout\;
\processador|decoderInstru1|ALT_INV_saida[4]~2_combout\ <= NOT \processador|decoderInstru1|saida[4]~2_combout\;
\processador|decoderInstru1|ALT_INV_Equal8~0_combout\ <= NOT \processador|decoderInstru1|Equal8~0_combout\;
\processador|decoderInstru1|ALT_INV_saida~1_combout\ <= NOT \processador|decoderInstru1|saida~1_combout\;
\processador|decoderInstru1|ALT_INV_saida[1]~0_combout\ <= NOT \processador|decoderInstru1|saida[1]~0_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\processador|PC|ALT_INV_DOUT\(8) <= NOT \processador|PC|DOUT\(8);
\processador|PC|ALT_INV_DOUT\(7) <= NOT \processador|PC|DOUT\(7);
\processador|PC|ALT_INV_DOUT\(6) <= NOT \processador|PC|DOUT\(6);
\processador|PC|ALT_INV_DOUT\(5) <= NOT \processador|PC|DOUT\(5);
\processador|PC|ALT_INV_DOUT\(4) <= NOT \processador|PC|DOUT\(4);
\processador|PC|ALT_INV_DOUT\(3) <= NOT \processador|PC|DOUT\(3);
\processador|PC|ALT_INV_DOUT\(2) <= NOT \processador|PC|DOUT\(2);
\processador|PC|ALT_INV_DOUT\(1) <= NOT \processador|PC|DOUT\(1);
\processador|PC|ALT_INV_DOUT\(0) <= NOT \processador|PC|DOUT\(0);
\processador|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \processador|ULA1|Add1~29_sumout\;
\processador|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \processador|ULA1|Add1~25_sumout\;
\processador|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \processador|ULA1|Add1~21_sumout\;
\processador|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \processador|ULA1|Add1~17_sumout\;
\processador|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \processador|ULA1|Add1~13_sumout\;
\processador|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \processador|ULA1|Add1~9_sumout\;
\processador|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \processador|ULA1|Add1~5_sumout\;
\processador|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \processador|ULA1|Add1~1_sumout\;
\processador|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \processador|incrementaPC|Add0~33_sumout\;
\processador|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \processador|incrementaPC|Add0~29_sumout\;
\processador|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \processador|incrementaPC|Add0~25_sumout\;
\processador|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \processador|incrementaPC|Add0~21_sumout\;
\processador|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \processador|incrementaPC|Add0~17_sumout\;
\processador|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \processador|incrementaPC|Add0~13_sumout\;
\processador|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \processador|incrementaPC|Add0~9_sumout\;
\processador|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \processador|incrementaPC|Add0~5_sumout\;
\processador|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \processador|incrementaPC|Add0~1_sumout\;
\processador|REGA|ALT_INV_DOUT\(7) <= NOT \processador|REGA|DOUT\(7);
\processador|REGA|ALT_INV_DOUT\(6) <= NOT \processador|REGA|DOUT\(6);
\processador|REGA|ALT_INV_DOUT\(5) <= NOT \processador|REGA|DOUT\(5);
\processador|REGA|ALT_INV_DOUT\(4) <= NOT \processador|REGA|DOUT\(4);
\processador|REGA|ALT_INV_DOUT\(3) <= NOT \processador|REGA|DOUT\(3);
\processador|REGA|ALT_INV_DOUT\(2) <= NOT \processador|REGA|DOUT\(2);
\processador|REGA|ALT_INV_DOUT\(1) <= NOT \processador|REGA|DOUT\(1);
\processador|REGA|ALT_INV_DOUT\(0) <= NOT \processador|REGA|DOUT\(0);
\processador|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \processador|FLAG|DOUT~1_combout\;
\processador|decoderInstru1|ALT_INV_Equal3~1_combout\ <= NOT \processador|decoderInstru1|Equal3~1_combout\;
\processador|decoderInstru1|ALT_INV_saida[5]~7_combout\ <= NOT \processador|decoderInstru1|saida[5]~7_combout\;
\RAM1|ALT_INV_dado_out[7]~23_combout\ <= NOT \RAM1|dado_out[7]~23_combout\;
\RAM1|ALT_INV_dado_out[6]~22_combout\ <= NOT \RAM1|dado_out[6]~22_combout\;
\RAM1|ALT_INV_dado_out[5]~21_combout\ <= NOT \RAM1|dado_out[5]~21_combout\;
\RAM1|ALT_INV_dado_out[4]~20_combout\ <= NOT \RAM1|dado_out[4]~20_combout\;
\RAM1|ALT_INV_dado_out[3]~19_combout\ <= NOT \RAM1|dado_out[3]~19_combout\;
\RAM1|ALT_INV_dado_out[2]~18_combout\ <= NOT \RAM1|dado_out[2]~18_combout\;
\RAM1|ALT_INV_dado_out[1]~17_combout\ <= NOT \RAM1|dado_out[1]~17_combout\;
\RAM1|ALT_INV_dado_out[0]~16_combout\ <= NOT \RAM1|dado_out[0]~16_combout\;
\RAM1|ALT_INV_ram~542_combout\ <= NOT \RAM1|ram~542_combout\;
\RAM1|ALT_INV_ram~526_q\ <= NOT \RAM1|ram~526_q\;
\RAM1|ALT_INV_ram~540_combout\ <= NOT \RAM1|ram~540_combout\;
\RAM1|ALT_INV_ram~525_q\ <= NOT \RAM1|ram~525_q\;
\RAM1|ALT_INV_ram~538_combout\ <= NOT \RAM1|ram~538_combout\;
\RAM1|ALT_INV_ram~524_q\ <= NOT \RAM1|ram~524_q\;
\RAM1|ALT_INV_ram~536_combout\ <= NOT \RAM1|ram~536_combout\;
\RAM1|ALT_INV_ram~523_q\ <= NOT \RAM1|ram~523_q\;
\RAM1|ALT_INV_ram~534_combout\ <= NOT \RAM1|ram~534_combout\;
\RAM1|ALT_INV_ram~522_q\ <= NOT \RAM1|ram~522_q\;
\RAM1|ALT_INV_ram~532_combout\ <= NOT \RAM1|ram~532_combout\;
\RAM1|ALT_INV_ram~521_q\ <= NOT \RAM1|ram~521_q\;
\RAM1|ALT_INV_ram~530_combout\ <= NOT \RAM1|ram~530_combout\;
\RAM1|ALT_INV_ram~520_q\ <= NOT \RAM1|ram~520_q\;
\RAM1|ALT_INV_ram~528_combout\ <= NOT \RAM1|ram~528_combout\;
\RAM1|ALT_INV_ram~519_q\ <= NOT \RAM1|ram~519_q\;
\RAM1|ALT_INV_ram~527_combout\ <= NOT \RAM1|ram~527_combout\;
\processador|REG_RET|ALT_INV_DOUT\(8) <= NOT \processador|REG_RET|DOUT\(8);
\processador|REG_RET|ALT_INV_DOUT\(7) <= NOT \processador|REG_RET|DOUT\(7);
\processador|REG_RET|ALT_INV_DOUT\(6) <= NOT \processador|REG_RET|DOUT\(6);
\processador|REG_RET|ALT_INV_DOUT\(5) <= NOT \processador|REG_RET|DOUT\(5);
\processador|REG_RET|ALT_INV_DOUT\(4) <= NOT \processador|REG_RET|DOUT\(4);
\processador|REG_RET|ALT_INV_DOUT\(3) <= NOT \processador|REG_RET|DOUT\(3);
\processador|REG_RET|ALT_INV_DOUT\(2) <= NOT \processador|REG_RET|DOUT\(2);
\processador|REG_RET|ALT_INV_DOUT\(1) <= NOT \processador|REG_RET|DOUT\(1);
\processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\ <= NOT \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\;
\processador|REG_RET|ALT_INV_DOUT\(0) <= NOT \processador|REG_RET|DOUT\(0);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~529_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~531_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~533_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~535_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~537_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~539_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~541_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~543_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\ADD_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM1|ram~529_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~531_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~533_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~535_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~537_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~539_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~541_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \RAM1|ram~543_combout\,
	oe => \processador|decoderInstru1|saida[1]~0_combout\,
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

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => \processador|decoderInstru1|Equal5~0_combout\,
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
	i => \processador|decoderInstru1|saida[1]~0_combout\,
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
	i => \processador|decoderInstru1|saida~1_combout\,
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
	i => \processador|decoderInstru1|Equal8~0_combout\,
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
	i => \processador|decoderInstru1|saida[4]~2_combout\,
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
	i => \processador|decoderInstru1|saida[5]~3_combout\,
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
	i => \processador|decoderInstru1|saida[5]~4_combout\,
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
	i => \processador|decoderInstru1|Equal3~0_combout\,
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
	i => \processador|decoderInstru1|saida~5_combout\,
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
	i => \processador|decoderInstru1|saida~6_combout\,
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
	i => \processador|decoderInstru1|Equal4~0_combout\,
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
	i => \processador|decoderInstru1|saida~5_combout\,
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
	i => \processador|FLAG|DOUT~q\,
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
	i => VCC,
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
	i => \ROM1|memROM~4_combout\,
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
	i => \ROM1|ALT_INV_memROM~5_combout\,
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
	i => \ROM1|ALT_INV_memROM~6_combout\,
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
	i => \ROM1|ALT_INV_memROM~7_combout\,
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
	i => \ROM1|memROM~8_combout\,
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

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(0))) # (\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT\(1)))))) # (\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(0)) # 
-- (!\processador|PC|DOUT\(1) $ (\processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110011101011010111001110101101011100111010110101110011101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(0) $ ((!\processador|PC|DOUT\(1))))) # (\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(0))) # (\processador|PC|DOUT\(2) & 
-- ((!\processador|PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
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
-- \ROM1|memROM~1_combout\ = (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(2) & !\processador|PC|DOUT\(3)))) # (\processador|PC|DOUT\(0) & (\processador|PC|DOUT\(1) & ((\processador|PC|DOUT\(3)) # 
-- (\processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
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
-- \ROM1|memROM~2_combout\ = (!\processador|PC|DOUT\(3) $ (((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT\(1))))) # (\processador|PC|DOUT\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110111110111010111011111011101011101111101110101110111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(0) $ (!\processador|PC|DOUT\(1))))) # (\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1))) # 
-- (\processador|PC|DOUT\(0) & ((\processador|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\processador|decoderInstru1|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~6_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \processador|decoderInstru1|saida~6_combout\);

\processador|decoderInstru1|saida[5]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[5]~7_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \processador|decoderInstru1|saida[5]~7_combout\);

\processador|decoderInstru1|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[1]~0_combout\ = (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ $ (((\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010001000100000101000100010000010100010001000001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \processador|decoderInstru1|saida[1]~0_combout\);

\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = (!\processador|PC|DOUT\(3) & ((!\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(0) & !\processador|PC|DOUT\(2))) # (\processador|PC|DOUT\(1) & ((\processador|PC|DOUT\(2)))))) # (\processador|PC|DOUT\(3) & 
-- (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) $ (!\processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001100010100100000110001010010000011000101001000001100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~527_combout\);

\processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~1_sumout\ = SUM(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((\RAM1|dado_out[0]~16_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|dado_out[0]~16_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \processador|REGA|DOUT\(0) ) + ( !VCC ))
-- \processador|ULA1|Add0~2\ = CARRY(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((\RAM1|dado_out[0]~16_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|dado_out[0]~16_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \processador|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~16_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|ULA1|Add0~1_sumout\,
	cout => \processador|ULA1|Add0~2\);

\processador|decoderInstru1|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[5]~4_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \processador|decoderInstru1|saida[5]~4_combout\);

\processador|decoderInstru1|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[4]~2_combout\ = (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~3_combout\ & (!\ROM1|memROM~0_combout\ $ (\ROM1|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000100001000000000010000100000000001000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \processador|decoderInstru1|saida[4]~2_combout\);

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
-- \processador|ULA1|Add1~1_sumout\ = SUM(( (!\ROM1|memROM~2_combout\ & (!\RAM1|dado_out[0]~16_combout\)) # (\ROM1|memROM~2_combout\ & ((!\processador|decoderInstru1|saida[5]~7_combout\ & (!\RAM1|dado_out[0]~16_combout\)) # 
-- (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~4_combout\))))) ) + ( \processador|REGA|DOUT\(0) ) + ( \processador|ULA1|Add1~34_cout\ ))
-- \processador|ULA1|Add1~2\ = CARRY(( (!\ROM1|memROM~2_combout\ & (!\RAM1|dado_out[0]~16_combout\)) # (\ROM1|memROM~2_combout\ & ((!\processador|decoderInstru1|saida[5]~7_combout\ & (!\RAM1|dado_out[0]~16_combout\)) # 
-- (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~4_combout\))))) ) + ( \processador|REGA|DOUT\(0) ) + ( \processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110011011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \RAM1|ALT_INV_dado_out[0]~16_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(0),
	cin => \processador|ULA1|Add1~34_cout\,
	sumout => \processador|ULA1|Add1~1_sumout\,
	cout => \processador|ULA1|Add1~2\);

\processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~0_combout\ = ( \processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\) # ((!\processador|decoderInstru1|saida[5]~4_combout\ & ((\RAM1|dado_out[0]~16_combout\))) # 
-- (\processador|decoderInstru1|saida[5]~4_combout\ & (\ROM1|memROM~4_combout\))) ) ) # ( !\processador|ULA1|Add1~1_sumout\ & ( (\processador|decoderInstru1|saida[4]~2_combout\ & ((!\processador|decoderInstru1|saida[5]~4_combout\ & 
-- ((\RAM1|dado_out[0]~16_combout\))) # (\processador|decoderInstru1|saida[5]~4_combout\ & (\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~4_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~16_combout\,
	datae => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \processador|ULA1|saida[0]~0_combout\);

\processador|decoderInstru1|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal8~0_combout\ = (!\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \processador|decoderInstru1|Equal8~0_combout\);

\processador|decoderInstru1|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[5]~3_combout\ = (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~0_combout\ $ (((\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010001000100001001000100010000100100010001000010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \processador|decoderInstru1|saida[5]~3_combout\);

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
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = (!\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(1) & !\processador|PC|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(3),
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT\(1),
	datad => \processador|PC|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~544_combout\);

\RAM1|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(0),
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~519_q\);

\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = (\RAM1|ram~527_combout\ & (\RAM1|ram~519_q\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~519_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~528_combout\);

\RAM1|dado_out[0]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~16_combout\ = (!\processador|decoderInstru1|saida[1]~0_combout\) # ((\ROM1|memROM~8_combout\ & \RAM1|ram~528_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~528_combout\,
	combout => \RAM1|dado_out[0]~16_combout\);

\processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~5_sumout\ = SUM(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((\RAM1|dado_out[1]~17_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|dado_out[1]~17_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~5_combout\)))) ) + ( \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add0~2\ ))
-- \processador|ULA1|Add0~6\ = CARRY(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((\RAM1|dado_out[1]~17_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|dado_out[1]~17_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~5_combout\)))) ) + ( \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_dado_out[1]~17_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	cin => \processador|ULA1|Add0~2\,
	sumout => \processador|ULA1|Add0~5_sumout\,
	cout => \processador|ULA1|Add0~6\);

\processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~5_sumout\ = SUM(( (!\ROM1|memROM~2_combout\ & (((!\RAM1|dado_out[1]~17_combout\)))) # (\ROM1|memROM~2_combout\ & ((!\processador|decoderInstru1|saida[5]~7_combout\ & ((!\RAM1|dado_out[1]~17_combout\))) # 
-- (\processador|decoderInstru1|saida[5]~7_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add1~2\ ))
-- \processador|ULA1|Add1~6\ = CARRY(( (!\ROM1|memROM~2_combout\ & (((!\RAM1|dado_out[1]~17_combout\)))) # (\ROM1|memROM~2_combout\ & ((!\processador|decoderInstru1|saida[5]~7_combout\ & ((!\RAM1|dado_out[1]~17_combout\))) # 
-- (\processador|decoderInstru1|saida[5]~7_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \processador|REGA|DOUT\(1) ) + ( \processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_dado_out[1]~17_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(1),
	cin => \processador|ULA1|Add1~2\,
	sumout => \processador|ULA1|Add1~5_sumout\,
	cout => \processador|ULA1|Add1~6\);

\processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[1]~1_combout\ = ( \processador|ULA1|Add1~5_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\) # ((!\processador|decoderInstru1|saida[5]~4_combout\ & ((\RAM1|dado_out[1]~17_combout\))) # 
-- (\processador|decoderInstru1|saida[5]~4_combout\ & (!\ROM1|memROM~5_combout\))) ) ) # ( !\processador|ULA1|Add1~5_sumout\ & ( (\processador|decoderInstru1|saida[4]~2_combout\ & ((!\processador|decoderInstru1|saida[5]~4_combout\ & 
-- ((\RAM1|dado_out[1]~17_combout\))) # (\processador|decoderInstru1|saida[5]~4_combout\ & (!\ROM1|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110010110111001111111000010000001100101101110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~4_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_dado_out[1]~17_combout\,
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
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

\RAM1|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(1),
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~520_q\);

\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = (\RAM1|ram~527_combout\ & (\RAM1|ram~520_q\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~520_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~530_combout\);

\RAM1|dado_out[1]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[1]~17_combout\ = (!\processador|decoderInstru1|saida[1]~0_combout\) # ((\ROM1|memROM~8_combout\ & \RAM1|ram~530_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~530_combout\,
	combout => \RAM1|dado_out[1]~17_combout\);

\processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~9_sumout\ = SUM(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((\RAM1|dado_out[2]~18_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|dado_out[2]~18_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\)))) ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add0~6\ ))
-- \processador|ULA1|Add0~10\ = CARRY(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((\RAM1|dado_out[2]~18_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|dado_out[2]~18_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\)))) ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[2]~18_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add0~6\,
	sumout => \processador|ULA1|Add0~9_sumout\,
	cout => \processador|ULA1|Add0~10\);

\processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~9_sumout\ = SUM(( (!\ROM1|memROM~2_combout\ & (((!\RAM1|dado_out[2]~18_combout\)))) # (\ROM1|memROM~2_combout\ & ((!\processador|decoderInstru1|saida[5]~7_combout\ & ((!\RAM1|dado_out[2]~18_combout\))) # 
-- (\processador|decoderInstru1|saida[5]~7_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add1~6\ ))
-- \processador|ULA1|Add1~10\ = CARRY(( (!\ROM1|memROM~2_combout\ & (((!\RAM1|dado_out[2]~18_combout\)))) # (\ROM1|memROM~2_combout\ & ((!\processador|decoderInstru1|saida[5]~7_combout\ & ((!\RAM1|dado_out[2]~18_combout\))) # 
-- (\processador|decoderInstru1|saida[5]~7_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \processador|REGA|DOUT\(2) ) + ( \processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[2]~18_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add1~6\,
	sumout => \processador|ULA1|Add1~9_sumout\,
	cout => \processador|ULA1|Add1~10\);

\processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[2]~2_combout\ = ( \processador|ULA1|Add1~9_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\) # ((!\processador|decoderInstru1|saida[5]~4_combout\ & ((\RAM1|dado_out[2]~18_combout\))) # 
-- (\processador|decoderInstru1|saida[5]~4_combout\ & (!\ROM1|memROM~6_combout\))) ) ) # ( !\processador|ULA1|Add1~9_sumout\ & ( (\processador|decoderInstru1|saida[4]~2_combout\ & ((!\processador|decoderInstru1|saida[5]~4_combout\ & 
-- ((\RAM1|dado_out[2]~18_combout\))) # (\processador|decoderInstru1|saida[5]~4_combout\ & (!\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110010110111001111111000010000001100101101110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~4_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[2]~18_combout\,
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
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

\RAM1|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(2),
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~521_q\);

\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = (\RAM1|ram~527_combout\ & (\RAM1|ram~521_q\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~521_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~532_combout\);

\RAM1|dado_out[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[2]~18_combout\ = (!\processador|decoderInstru1|saida[1]~0_combout\) # ((\ROM1|memROM~8_combout\ & \RAM1|ram~532_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~532_combout\,
	combout => \RAM1|dado_out[2]~18_combout\);

\processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~13_sumout\ = SUM(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((\RAM1|dado_out[3]~19_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|dado_out[3]~19_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~7_combout\)))) ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add0~10\ ))
-- \processador|ULA1|Add0~14\ = CARRY(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((\RAM1|dado_out[3]~19_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|dado_out[3]~19_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~7_combout\)))) ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_dado_out[3]~19_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	cin => \processador|ULA1|Add0~10\,
	sumout => \processador|ULA1|Add0~13_sumout\,
	cout => \processador|ULA1|Add0~14\);

\processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~13_sumout\ = SUM(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((!\RAM1|dado_out[3]~19_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((!\RAM1|dado_out[3]~19_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~7_combout\)))) ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add1~10\ ))
-- \processador|ULA1|Add1~14\ = CARRY(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((!\RAM1|dado_out[3]~19_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((!\RAM1|dado_out[3]~19_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~7_combout\)))) ) + ( \processador|REGA|DOUT\(3) ) + ( \processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_dado_out[3]~19_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(3),
	cin => \processador|ULA1|Add1~10\,
	sumout => \processador|ULA1|Add1~13_sumout\,
	cout => \processador|ULA1|Add1~14\);

\processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[3]~3_combout\ = ( \processador|ULA1|Add1~13_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\) # ((!\processador|decoderInstru1|saida[5]~4_combout\ & ((\RAM1|dado_out[3]~19_combout\))) # 
-- (\processador|decoderInstru1|saida[5]~4_combout\ & (!\ROM1|memROM~7_combout\))) ) ) # ( !\processador|ULA1|Add1~13_sumout\ & ( (\processador|decoderInstru1|saida[4]~2_combout\ & ((!\processador|decoderInstru1|saida[5]~4_combout\ & 
-- ((\RAM1|dado_out[3]~19_combout\))) # (\processador|decoderInstru1|saida[5]~4_combout\ & (!\ROM1|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110010110111001111111000010000001100101101110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~4_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_dado_out[3]~19_combout\,
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
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

\RAM1|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(3),
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~522_q\);

\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = (\RAM1|ram~527_combout\ & (\RAM1|ram~522_q\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~522_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~534_combout\);

\RAM1|dado_out[3]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[3]~19_combout\ = (!\processador|decoderInstru1|saida[1]~0_combout\) # ((\ROM1|memROM~8_combout\ & \RAM1|ram~534_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~534_combout\,
	combout => \RAM1|dado_out[3]~19_combout\);

\processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~17_sumout\ = SUM(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((\RAM1|dado_out[4]~20_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|dado_out[4]~20_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~8_combout\)))) ) + ( \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~18\ = CARRY(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((\RAM1|dado_out[4]~20_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|dado_out[4]~20_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~8_combout\)))) ) + ( \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[4]~20_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~17_sumout\,
	cout => \processador|ULA1|Add0~18\);

\processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[4]~4_combout\ = ( \processador|ULA1|Add1~17_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\) # ((!\processador|decoderInstru1|saida[5]~4_combout\ & ((\RAM1|dado_out[4]~20_combout\))) # 
-- (\processador|decoderInstru1|saida[5]~4_combout\ & (\ROM1|memROM~8_combout\))) ) ) # ( !\processador|ULA1|Add1~17_sumout\ & ( (\processador|decoderInstru1|saida[4]~2_combout\ & ((!\processador|decoderInstru1|saida[5]~4_combout\ & 
-- ((\RAM1|dado_out[4]~20_combout\))) # (\processador|decoderInstru1|saida[5]~4_combout\ & (\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~4_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[4]~20_combout\,
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
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(4));

\RAM1|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(4),
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~523_q\);

\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = (\RAM1|ram~527_combout\ & (\RAM1|ram~523_q\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~523_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~536_combout\);

\RAM1|dado_out[4]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[4]~20_combout\ = (!\processador|decoderInstru1|saida[1]~0_combout\) # ((\ROM1|memROM~8_combout\ & \RAM1|ram~536_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~536_combout\,
	combout => \RAM1|dado_out[4]~20_combout\);

\processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~17_sumout\ = SUM(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((!\RAM1|dado_out[4]~20_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((!\RAM1|dado_out[4]~20_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~8_combout\)))) ) + ( \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add1~14\ ))
-- \processador|ULA1|Add1~18\ = CARRY(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((!\RAM1|dado_out[4]~20_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((!\RAM1|dado_out[4]~20_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~8_combout\)))) ) + ( \processador|REGA|DOUT\(4) ) + ( \processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[4]~20_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(4),
	cin => \processador|ULA1|Add1~14\,
	sumout => \processador|ULA1|Add1~17_sumout\,
	cout => \processador|ULA1|Add1~18\);

\processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~21_sumout\ = SUM(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((\RAM1|dado_out[5]~21_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|dado_out[5]~21_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~8_combout\)))) ) + ( \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add0~18\ ))
-- \processador|ULA1|Add0~22\ = CARRY(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((\RAM1|dado_out[5]~21_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM1|dado_out[5]~21_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~8_combout\)))) ) + ( \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[5]~21_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	cin => \processador|ULA1|Add0~18\,
	sumout => \processador|ULA1|Add0~21_sumout\,
	cout => \processador|ULA1|Add0~22\);

\processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[5]~5_combout\ = ( \processador|ULA1|Add1~21_sumout\ & ( (!\processador|decoderInstru1|saida[4]~2_combout\) # ((!\processador|decoderInstru1|saida[5]~4_combout\ & ((\RAM1|dado_out[5]~21_combout\))) # 
-- (\processador|decoderInstru1|saida[5]~4_combout\ & (\ROM1|memROM~8_combout\))) ) ) # ( !\processador|ULA1|Add1~21_sumout\ & ( (\processador|decoderInstru1|saida[4]~2_combout\ & ((!\processador|decoderInstru1|saida[5]~4_combout\ & 
-- ((\RAM1|dado_out[5]~21_combout\))) # (\processador|decoderInstru1|saida[5]~4_combout\ & (\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011110011011110111100000001001000111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~4_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[5]~21_combout\,
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
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(5));

\RAM1|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(5),
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~524_q\);

\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = (\RAM1|ram~527_combout\ & (\RAM1|ram~524_q\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~524_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~538_combout\);

\RAM1|dado_out[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[5]~21_combout\ = (!\processador|decoderInstru1|saida[1]~0_combout\) # ((\ROM1|memROM~8_combout\ & \RAM1|ram~538_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~538_combout\,
	combout => \RAM1|dado_out[5]~21_combout\);

\processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~21_sumout\ = SUM(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((!\RAM1|dado_out[5]~21_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((!\RAM1|dado_out[5]~21_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~8_combout\)))) ) + ( \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add1~18\ ))
-- \processador|ULA1|Add1~22\ = CARRY(( (!\processador|decoderInstru1|saida[5]~7_combout\ & (((!\RAM1|dado_out[5]~21_combout\)))) # (\processador|decoderInstru1|saida[5]~7_combout\ & ((!\ROM1|memROM~2_combout\ & ((!\RAM1|dado_out[5]~21_combout\))) # 
-- (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~8_combout\)))) ) + ( \processador|REGA|DOUT\(5) ) + ( \processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[5]~21_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(5),
	cin => \processador|ULA1|Add1~18\,
	sumout => \processador|ULA1|Add1~21_sumout\,
	cout => \processador|ULA1|Add1~22\);

\processador|decoderInstru1|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal3~1_combout\ = (\ROM1|memROM~0_combout\ & !\ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|Equal3~1_combout\);

\processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~25_sumout\ = SUM(( (\RAM1|dado_out[6]~22_combout\ & ((!\processador|decoderInstru1|Equal3~1_combout\) # ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~3_combout\)))) ) + ( \processador|REGA|DOUT\(6) ) + ( \processador|ULA1|Add0~22\ ))
-- \processador|ULA1|Add0~26\ = CARRY(( (\RAM1|dado_out[6]~22_combout\ & ((!\processador|decoderInstru1|Equal3~1_combout\) # ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~3_combout\)))) ) + ( \processador|REGA|DOUT\(6) ) + ( \processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal3~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_dado_out[6]~22_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	cin => \processador|ULA1|Add0~22\,
	sumout => \processador|ULA1|Add0~25_sumout\,
	cout => \processador|ULA1|Add0~26\);

\processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[6]~6_combout\ = (!\processador|decoderInstru1|saida[4]~2_combout\ & (((\processador|ULA1|Add1~25_sumout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|decoderInstru1|saida[5]~4_combout\ & 
-- (\RAM1|dado_out[6]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~4_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \RAM1|ALT_INV_dado_out[6]~22_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~25_sumout\,
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
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(6));

\RAM1|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(6),
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~525_q\);

\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = (\RAM1|ram~527_combout\ & (\RAM1|ram~525_q\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~525_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~540_combout\);

\RAM1|dado_out[6]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[6]~22_combout\ = (!\processador|decoderInstru1|saida[1]~0_combout\) # ((\ROM1|memROM~8_combout\ & \RAM1|ram~540_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~540_combout\,
	combout => \RAM1|dado_out[6]~22_combout\);

\processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~25_sumout\ = SUM(( (!\RAM1|dado_out[6]~22_combout\) # ((\processador|decoderInstru1|saida[5]~7_combout\ & \ROM1|memROM~2_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( \processador|ULA1|Add1~22\ ))
-- \processador|ULA1|Add1~26\ = CARRY(( (!\RAM1|dado_out[6]~22_combout\) # ((\processador|decoderInstru1|saida[5]~7_combout\ & \ROM1|memROM~2_combout\)) ) + ( \processador|REGA|DOUT\(6) ) + ( \processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~7_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM1|ALT_INV_dado_out[6]~22_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(6),
	cin => \processador|ULA1|Add1~22\,
	sumout => \processador|ULA1|Add1~25_sumout\,
	cout => \processador|ULA1|Add1~26\);

\processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~29_sumout\ = SUM(( (\RAM1|dado_out[7]~23_combout\ & ((!\processador|decoderInstru1|Equal3~1_combout\) # ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~3_combout\)))) ) + ( \processador|REGA|DOUT\(7) ) + ( \processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal3~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \RAM1|ALT_INV_dado_out[7]~23_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	cin => \processador|ULA1|Add0~26\,
	sumout => \processador|ULA1|Add0~29_sumout\);

\processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[7]~7_combout\ = (!\processador|decoderInstru1|saida[4]~2_combout\ & (((\processador|ULA1|Add1~29_sumout\)))) # (\processador|decoderInstru1|saida[4]~2_combout\ & (!\processador|decoderInstru1|saida[5]~4_combout\ & 
-- (\RAM1|dado_out[7]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[5]~4_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~2_combout\,
	datac => \RAM1|ALT_INV_dado_out[7]~23_combout\,
	datad => \processador|ULA1|ALT_INV_Add1~29_sumout\,
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
	sload => \processador|decoderInstru1|ALT_INV_Equal8~0_combout\,
	ena => \processador|decoderInstru1|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(7));

\RAM1|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|REGA|DOUT\(7),
	ena => \RAM1|ram~544_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~526_q\);

\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = (\RAM1|ram~527_combout\ & (\RAM1|ram~526_q\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~527_combout\,
	datab => \RAM1|ALT_INV_ram~526_q\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~542_combout\);

\RAM1|dado_out[7]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[7]~23_combout\ = (!\processador|decoderInstru1|saida[1]~0_combout\) # ((\ROM1|memROM~8_combout\ & \RAM1|ram~542_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida[1]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~542_combout\,
	combout => \RAM1|dado_out[7]~23_combout\);

\processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~29_sumout\ = SUM(( (!\RAM1|dado_out[7]~23_combout\) # ((!\ROM1|memROM~3_combout\ & (\ROM1|memROM~2_combout\ & \processador|decoderInstru1|Equal3~1_combout\))) ) + ( \processador|REGA|DOUT\(7) ) + ( \processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out[7]~23_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal3~1_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(7),
	cin => \processador|ULA1|Add1~26\,
	sumout => \processador|ULA1|Add1~29_sumout\);

\processador|decoderInstru1|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~1_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \processador|decoderInstru1|saida~1_combout\);

\processador|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~1_combout\ = ( \processador|ULA1|Add1~13_sumout\ & ( \processador|FLAG|DOUT~q\ & ( !\processador|decoderInstru1|saida~1_combout\ ) ) ) # ( !\processador|ULA1|Add1~13_sumout\ & ( \processador|FLAG|DOUT~q\ & ( 
-- (!\processador|decoderInstru1|saida~1_combout\) # ((!\processador|ULA1|Add1~1_sumout\ & (!\processador|ULA1|Add1~5_sumout\ & !\processador|ULA1|Add1~9_sumout\))) ) ) ) # ( !\processador|ULA1|Add1~13_sumout\ & ( !\processador|FLAG|DOUT~q\ & ( 
-- (\processador|decoderInstru1|saida~1_combout\ & (!\processador|ULA1|Add1~1_sumout\ & (!\processador|ULA1|Add1~5_sumout\ & !\processador|ULA1|Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000011101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	datab => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	datac => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	datad => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	datae => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \processador|FLAG|ALT_INV_DOUT~q\,
	combout => \processador|FLAG|DOUT~1_combout\);

\processador|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|FLAG|DOUT~0_combout\ = ( \processador|decoderInstru1|saida~1_combout\ & ( \processador|FLAG|DOUT~1_combout\ & ( (!\processador|ULA1|Add1~17_sumout\ & (!\processador|ULA1|Add1~21_sumout\ & (!\processador|ULA1|Add1~25_sumout\ & 
-- !\processador|ULA1|Add1~29_sumout\))) ) ) ) # ( !\processador|decoderInstru1|saida~1_combout\ & ( \processador|FLAG|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	datab => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \processador|decoderInstru1|ALT_INV_saida~1_combout\,
	dataf => \processador|FLAG|ALT_INV_DOUT~1_combout\,
	combout => \processador|FLAG|DOUT~0_combout\);

\processador|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|FLAG|DOUT~q\);

\processador|LOG_DESVIO|SelMuxPC[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ = ( \processador|FLAG|DOUT~q\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & 
-- ((\ROM1|memROM~3_combout\)))) ) ) # ( !\processador|FLAG|DOUT~q\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) # (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & 
-- (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000100001000000100010000100000000001000010000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \processador|FLAG|ALT_INV_DOUT~q\,
	combout => \processador|LOG_DESVIO|SelMuxPC[0]~0_combout\);

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

\processador|decoderInstru1|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~5_combout\ = (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \processador|decoderInstru1|saida~5_combout\);

\processador|REG_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	ena => \processador|decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(3));

\processador|MUX2|MUX_OUT[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[3]~3_combout\ = ( \processador|incrementaPC|Add0~13_sumout\ & ( (!\processador|decoderInstru1|saida~6_combout\ & ((!\ROM1|memROM~7_combout\) # ((!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\)))) # 
-- (\processador|decoderInstru1|saida~6_combout\ & (((\processador|REG_RET|DOUT\(3))))) ) ) # ( !\processador|incrementaPC|Add0~13_sumout\ & ( (!\processador|decoderInstru1|saida~6_combout\ & (!\ROM1|memROM~7_combout\ & 
-- (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\))) # (\processador|decoderInstru1|saida~6_combout\ & (((\processador|REG_RET|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011110010001111101100001000001110111100100011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~7_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datac => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(3),
	datae => \processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \processador|MUX2|MUX_OUT[3]~3_combout\);

\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|MUX2|MUX_OUT[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\processador|PC|DOUT\(1) & ((!\processador|PC|DOUT\(2) & ((\processador|PC|DOUT\(3)))) # (\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(0))))) # (\processador|PC|DOUT\(1) & ((!\processador|PC|DOUT\(2) $ 
-- (\processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100011001011001110001100101100111000110010110011100011001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~6_combout\);

\processador|REG_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	ena => \processador|decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(2));

\processador|MUX2|MUX_OUT[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[2]~2_combout\ = ( \processador|incrementaPC|Add0~9_sumout\ & ( (!\processador|decoderInstru1|saida~6_combout\ & ((!\ROM1|memROM~6_combout\) # ((!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\)))) # 
-- (\processador|decoderInstru1|saida~6_combout\ & (((\processador|REG_RET|DOUT\(2))))) ) ) # ( !\processador|incrementaPC|Add0~9_sumout\ & ( (!\processador|decoderInstru1|saida~6_combout\ & (!\ROM1|memROM~6_combout\ & 
-- (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\))) # (\processador|decoderInstru1|saida~6_combout\ & (((\processador|REG_RET|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011110010001111101100001000001110111100100011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datac => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(2),
	datae => \processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \processador|MUX2|MUX_OUT[2]~2_combout\);

\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|MUX2|MUX_OUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT\(1) $ (((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT\(3)))))) # (\processador|PC|DOUT\(0) & ((!\processador|PC|DOUT\(1)) # (!\processador|PC|DOUT\(2) $ 
-- (\processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110001100111011111000110011101111100011001110111110001100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\processador|REG_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	ena => \processador|decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(1));

\processador|MUX2|MUX_OUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[1]~1_combout\ = ( \processador|incrementaPC|Add0~5_sumout\ & ( (!\processador|decoderInstru1|saida~6_combout\ & ((!\ROM1|memROM~5_combout\) # ((!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\)))) # 
-- (\processador|decoderInstru1|saida~6_combout\ & (((\processador|REG_RET|DOUT\(1))))) ) ) # ( !\processador|incrementaPC|Add0~5_sumout\ & ( (!\processador|decoderInstru1|saida~6_combout\ & (!\ROM1|memROM~5_combout\ & 
-- (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\))) # (\processador|decoderInstru1|saida~6_combout\ & (((\processador|REG_RET|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011110010001111101100001000001110111100100011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datac => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(1),
	datae => \processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \processador|MUX2|MUX_OUT[1]~1_combout\);

\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|MUX2|MUX_OUT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\processador|PC|DOUT\(1) & ((!\processador|PC|DOUT\(3) & (\processador|PC|DOUT\(0))) # (\processador|PC|DOUT\(3) & ((\processador|PC|DOUT\(2)))))) # (\processador|PC|DOUT\(1) & (!\processador|PC|DOUT\(3) $ 
-- (((\processador|PC|DOUT\(0) & !\processador|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011100011100011001110001110001100111000111000110011100011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT\(1),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	datad => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\processador|REG_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	ena => \processador|decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(0));

\processador|MUX2|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[0]~0_combout\ = ( \processador|incrementaPC|Add0~1_sumout\ & ( (!\processador|decoderInstru1|saida~6_combout\ & (((!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\)) # (\ROM1|memROM~4_combout\))) # 
-- (\processador|decoderInstru1|saida~6_combout\ & (((\processador|REG_RET|DOUT\(0))))) ) ) # ( !\processador|incrementaPC|Add0~1_sumout\ & ( (!\processador|decoderInstru1|saida~6_combout\ & (\ROM1|memROM~4_combout\ & 
-- ((\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\)))) # (\processador|decoderInstru1|saida~6_combout\ & (((\processador|REG_RET|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011111100110101001100000011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \processador|REG_RET|ALT_INV_DOUT\(0),
	datac => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datad => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datae => \processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \processador|MUX2|MUX_OUT[0]~0_combout\);

\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|MUX2|MUX_OUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (\processador|PC|DOUT\(1) & ((!\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(0) & \processador|PC|DOUT\(3))) # (\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010000000000110001000000000011000100000000001100010000",
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
-- \RAM1|ram~529_combout\ = (\ROM1|memROM~8_combout\ & \RAM1|ram~528_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \RAM1|ALT_INV_ram~528_combout\,
	combout => \RAM1|ram~529_combout\);

\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = (\ROM1|memROM~8_combout\ & \RAM1|ram~530_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \RAM1|ALT_INV_ram~530_combout\,
	combout => \RAM1|ram~531_combout\);

\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = (\ROM1|memROM~8_combout\ & \RAM1|ram~532_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \RAM1|ALT_INV_ram~532_combout\,
	combout => \RAM1|ram~533_combout\);

\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = (\ROM1|memROM~8_combout\ & \RAM1|ram~534_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \RAM1|ALT_INV_ram~534_combout\,
	combout => \RAM1|ram~535_combout\);

\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = (\ROM1|memROM~8_combout\ & \RAM1|ram~536_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \RAM1|ALT_INV_ram~536_combout\,
	combout => \RAM1|ram~537_combout\);

\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = (\ROM1|memROM~8_combout\ & \RAM1|ram~538_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \RAM1|ALT_INV_ram~538_combout\,
	combout => \RAM1|ram~539_combout\);

\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = (\ROM1|memROM~8_combout\ & \RAM1|ram~540_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \RAM1|ALT_INV_ram~540_combout\,
	combout => \RAM1|ram~541_combout\);

\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = (\ROM1|memROM~8_combout\ & \RAM1|ram~542_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \RAM1|ALT_INV_ram~542_combout\,
	combout => \RAM1|ram~543_combout\);

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

\processador|REG_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~17_sumout\,
	ena => \processador|decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(4));

\processador|MUX2|MUX_OUT[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[4]~4_combout\ = ( \processador|incrementaPC|Add0~17_sumout\ & ( (!\processador|decoderInstru1|saida~6_combout\ & (((!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\)) # (\ROM1|memROM~8_combout\))) # 
-- (\processador|decoderInstru1|saida~6_combout\ & (((\processador|REG_RET|DOUT\(4))))) ) ) # ( !\processador|incrementaPC|Add0~17_sumout\ & ( (!\processador|decoderInstru1|saida~6_combout\ & (\ROM1|memROM~8_combout\ & 
-- (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\))) # (\processador|decoderInstru1|saida~6_combout\ & (((\processador|REG_RET|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datac => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(4),
	datae => \processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \processador|MUX2|MUX_OUT[4]~4_combout\);

\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|MUX2|MUX_OUT[4]~4_combout\,
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

\processador|REG_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	ena => \processador|decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(5));

\processador|MUX2|MUX_OUT[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[5]~5_combout\ = ( \processador|incrementaPC|Add0~21_sumout\ & ( (!\processador|decoderInstru1|saida~6_combout\ & (((!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\)) # (\ROM1|memROM~8_combout\))) # 
-- (\processador|decoderInstru1|saida~6_combout\ & (((\processador|REG_RET|DOUT\(5))))) ) ) # ( !\processador|incrementaPC|Add0~21_sumout\ & ( (!\processador|decoderInstru1|saida~6_combout\ & (\ROM1|memROM~8_combout\ & 
-- (\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\))) # (\processador|decoderInstru1|saida~6_combout\ & (((\processador|REG_RET|DOUT\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datac => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(5),
	datae => \processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \processador|MUX2|MUX_OUT[5]~5_combout\);

\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|MUX2|MUX_OUT[5]~5_combout\,
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

\processador|REG_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~25_sumout\,
	ena => \processador|decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(6));

\processador|MUX2|MUX_OUT[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[6]~6_combout\ = (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((!\processador|decoderInstru1|saida~6_combout\ & (\processador|incrementaPC|Add0~25_sumout\)) # (\processador|decoderInstru1|saida~6_combout\ & 
-- ((\processador|REG_RET|DOUT\(6))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(6),
	combout => \processador|MUX2|MUX_OUT[6]~6_combout\);

\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|MUX2|MUX_OUT[6]~6_combout\,
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

\processador|REG_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~29_sumout\,
	ena => \processador|decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(7));

\processador|MUX2|MUX_OUT[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[7]~7_combout\ = (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((!\processador|decoderInstru1|saida~6_combout\ & (\processador|incrementaPC|Add0~29_sumout\)) # (\processador|decoderInstru1|saida~6_combout\ & 
-- ((\processador|REG_RET|DOUT\(7))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(7),
	combout => \processador|MUX2|MUX_OUT[7]~7_combout\);

\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|MUX2|MUX_OUT[7]~7_combout\,
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

\processador|REG_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	ena => \processador|decoderInstru1|saida~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REG_RET|DOUT\(8));

\processador|MUX2|MUX_OUT[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|MUX2|MUX_OUT[8]~8_combout\ = (!\processador|LOG_DESVIO|SelMuxPC[0]~0_combout\ & ((!\processador|decoderInstru1|saida~6_combout\ & (\processador|incrementaPC|Add0~33_sumout\)) # (\processador|decoderInstru1|saida~6_combout\ & 
-- ((\processador|REG_RET|DOUT\(8))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_saida~6_combout\,
	datab => \processador|LOG_DESVIO|ALT_INV_SelMuxPC[0]~0_combout\,
	datac => \processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	datad => \processador|REG_RET|ALT_INV_DOUT\(8),
	combout => \processador|MUX2|MUX_OUT[8]~8_combout\);

\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \processador|MUX2|MUX_OUT[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

\processador|decoderInstru1|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal5~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \processador|decoderInstru1|Equal5~0_combout\);

\processador|decoderInstru1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal3~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \processador|decoderInstru1|Equal3~0_combout\);

\processador|decoderInstru1|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal4~0_combout\ = (\ROM1|memROM~0_combout\ & (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \processador|decoderInstru1|Equal4~0_combout\);

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


