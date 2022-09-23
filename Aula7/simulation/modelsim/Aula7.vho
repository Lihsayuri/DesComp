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

-- DATE "09/22/2022 21:53:08"

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

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- REGA_OUT[0]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[1]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[6]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_OUT[7]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[4]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[8]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[9]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[10]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Palavra[11]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EQUAL_FLAG	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HabilitaRAM	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_ADDRESS[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[1]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[2]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADD_OUT[7]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \processador|decoderInstru1|Equal10~4_combout\ : std_logic;
SIGNAL \processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_wirecell_combout\ : std_logic;
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
SIGNAL \processador|ULA1|Add1~2\ : std_logic;
SIGNAL \processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~2\ : std_logic;
SIGNAL \processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
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
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~534_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~533_combout\ : std_logic;
SIGNAL \RAM1|ram~535_combout\ : std_logic;
SIGNAL \RAM1|ram~553_combout\ : std_logic;
SIGNAL \RAM1|dado_out[3]~11_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~10\ : std_logic;
SIGNAL \processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
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
SIGNAL \processador|ULA1|Add1~14\ : std_logic;
SIGNAL \processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~14\ : std_logic;
SIGNAL \processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~539_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~540_combout\ : std_logic;
SIGNAL \RAM1|ram~541_combout\ : std_logic;
SIGNAL \RAM1|ram~555_combout\ : std_logic;
SIGNAL \RAM1|dado_out[5]~13_combout\ : std_logic;
SIGNAL \processador|ULA1|Add1~18\ : std_logic;
SIGNAL \processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \processador|ULA1|Add0~18\ : std_logic;
SIGNAL \processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \processador|REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~543_combout\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~542_combout\ : std_logic;
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
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~549_combout\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~548_combout\ : std_logic;
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
SIGNAL \RAM1|ALT_INV_dado_out[1]~9_combout\ : std_logic;
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
SIGNAL \processador|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
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
\RAM1|ALT_INV_dado_out[1]~9_combout\ <= NOT \RAM1|dado_out[1]~9_combout\;
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
\processador|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \processador|REGA|DOUT[5]~DUPLICATE_q\;
\processador|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \processador|REGA|DOUT[4]~DUPLICATE_q\;
\processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|REGA|DOUT[3]~DUPLICATE_q\;
\processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|REGA|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[3]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[2]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[1]~DUPLICATE_q\;
\processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \processador|PC|DOUT[0]~DUPLICATE_q\;
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

-- Location: IOOBUF_X12_Y45_N19
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
	o => ww_ADD_OUT(0));

-- Location: IOOBUF_X16_Y0_N76
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
	o => ww_ADD_OUT(1));

-- Location: IOOBUF_X23_Y0_N76
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
	o => ww_ADD_OUT(2));

-- Location: IOOBUF_X16_Y0_N42
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
	o => ww_ADD_OUT(3));

-- Location: IOOBUF_X12_Y0_N36
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
	o => ww_ADD_OUT(4));

-- Location: IOOBUF_X23_Y0_N59
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
	o => ww_ADD_OUT(5));

-- Location: IOOBUF_X12_Y0_N53
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
	o => ww_ADD_OUT(6));

-- Location: IOOBUF_X16_Y0_N59
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
	o => ww_ADD_OUT(7));

-- Location: IOOBUF_X12_Y0_N19
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
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X11_Y0_N2
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
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X10_Y45_N19
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
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X12_Y45_N2
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X16_Y0_N93
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
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X18_Y0_N2
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
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X22_Y0_N53
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
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X16_Y45_N42
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
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X14_Y0_N53
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
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X0_Y18_N79
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
	i => \logica_LED|REG_LEDS|DOUT\(1),
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
	i => \logica_LED|REG_LEDS|DOUT\(2),
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
	i => \logica_LED|REG_LEDS|DOUT\(3),
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
	i => \logica_LED|REG_LEDS|DOUT\(4),
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
	i => \logica_LED|REG_LEDS|DOUT\(5),
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
	i => \logica_LED|REG_LEDS|DOUT\(6),
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
	i => \logica_LED|REG_LEDS|DOUT\(7),
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
	i => \logica_LED|FlipFlop1|DOUT~q\,
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
	i => \logica_LED|FlipFlop2|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X8_Y45_N42
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
	o => ww_REGA_OUT(0));

-- Location: IOOBUF_X54_Y20_N5
\REGA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(1));

-- Location: IOOBUF_X54_Y21_N22
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
	o => ww_REGA_OUT(2));

-- Location: IOOBUF_X10_Y45_N2
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
	o => ww_REGA_OUT(3));

-- Location: IOOBUF_X12_Y45_N36
\REGA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(4));

-- Location: IOOBUF_X8_Y45_N93
\REGA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \processador|REGA|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_REGA_OUT(5));

-- Location: IOOBUF_X19_Y0_N2
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
	o => ww_REGA_OUT(6));

-- Location: IOOBUF_X11_Y0_N53
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
	o => ww_REGA_OUT(7));

-- Location: IOOBUF_X10_Y45_N36
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
	o => ww_Palavra(0));

-- Location: IOOBUF_X54_Y20_N39
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
	o => ww_Palavra(1));

-- Location: IOOBUF_X34_Y0_N19
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
	o => ww_Palavra(2));

-- Location: IOOBUF_X10_Y45_N53
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
	o => ww_Palavra(3));

-- Location: IOOBUF_X54_Y20_N22
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
	o => ww_Palavra(4));

-- Location: IOOBUF_X18_Y0_N53
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
	o => ww_Palavra(5));

-- Location: IOOBUF_X11_Y0_N19
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
	o => ww_Palavra(6));

-- Location: IOOBUF_X54_Y20_N56
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
	o => ww_Palavra(7));

-- Location: IOOBUF_X42_Y45_N53
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
	o => ww_Palavra(8));

-- Location: IOOBUF_X29_Y0_N53
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
	o => ww_Palavra(9));

-- Location: IOOBUF_X12_Y0_N2
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
	o => ww_Palavra(10));

-- Location: IOOBUF_X14_Y45_N36
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
	o => ww_Palavra(11));

-- Location: IOOBUF_X12_Y45_N53
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
	o => ww_EQUAL_FLAG);

-- Location: IOOBUF_X54_Y19_N39
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
	o => ww_HabilitaRAM);

-- Location: IOOBUF_X8_Y45_N59
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
	o => ww_MEM_ADDRESS(0));

-- Location: IOOBUF_X10_Y0_N76
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
	o => ww_MEM_ADDRESS(1));

-- Location: IOOBUF_X10_Y0_N42
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
	o => ww_MEM_ADDRESS(2));

-- Location: IOOBUF_X8_Y45_N76
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
	o => ww_MEM_ADDRESS(3));

-- Location: IOOBUF_X14_Y0_N36
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
	o => ww_MEM_ADDRESS(4));

-- Location: IOOBUF_X10_Y0_N59
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
	o => ww_MEM_ADDRESS(5));

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

-- Location: CLKCTRL_G6
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

-- Location: LABCELL_X7_Y20_N30
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

-- Location: LABCELL_X7_Y20_N12
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(0) & !\processador|PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: FF_X7_Y20_N40
\processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~7_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(3));

-- Location: LABCELL_X7_Y20_N33
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

-- Location: LABCELL_X7_Y20_N36
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

-- Location: LABCELL_X7_Y20_N39
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

-- Location: FF_X7_Y20_N41
\processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~13_sumout\,
	asdata => \ROM1|memROM~7_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y20_N0
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(0) & (\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & 
-- (\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~0_combout\);

-- Location: LABCELL_X7_Y20_N27
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(0) & !\processador|PC|DOUT[2]~DUPLICATE_q\)) # (\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- ((\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\processador|PC|DOUT[2]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111111000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X7_Y20_N9
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ (!\processador|PC|DOUT[2]~DUPLICATE_q\))) # (\processador|PC|DOUT\(0) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT[3]~DUPLICATE_q\ $ (((!\processador|PC|DOUT\(0) & !\processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000000111100110000000011110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM1|memROM~1_combout\);

-- Location: MLABCELL_X4_Y20_N27
\processador|decoderInstru1|Equal10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~4_combout\ = ( !\ROM1|memROM~1_combout\ & ( (\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|Equal10~4_combout\);

-- Location: FF_X7_Y20_N31
\processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~4_wirecell_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X6_Y19_N15
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( !\processador|PC|DOUT\(3) & ( (\processador|PC|DOUT[0]~DUPLICATE_q\ & (\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~6_combout\);

-- Location: FF_X7_Y20_N37
\processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(2));

-- Location: FF_X7_Y20_N38
\processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~9_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y20_N3
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\processador|PC|DOUT\(0) & !\processador|PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\processador|PC|DOUT[1]~DUPLICATE_q\ & (!\processador|PC|DOUT\(0) & 
-- \processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(0),
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~5_combout\);

-- Location: FF_X7_Y20_N34
\processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(1));

-- Location: FF_X7_Y20_N35
\processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~5_sumout\,
	asdata => \ROM1|memROM~5_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y20_N24
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\processador|PC|DOUT\(0)) # ((!\processador|PC|DOUT[1]~DUPLICATE_q\) # (\processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- !\processador|PC|DOUT\(0) $ (((!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM1|memROM~4_combout\);

-- Location: LABCELL_X5_Y19_N15
\ROM1|memROM~4_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_wirecell_combout\ = ( !\ROM1|memROM~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \ROM1|memROM~4_wirecell_combout\);

-- Location: FF_X7_Y20_N32
\processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM1|memROM~4_wirecell_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(0));

-- Location: LABCELL_X5_Y20_N6
\processador|decoderInstru1|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~2_combout\ = ( !\ROM1|memROM~1_combout\ & ( (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \processador|decoderInstru1|Equal10~2_combout\);

-- Location: LABCELL_X6_Y19_N57
\RAM1|dado_out~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out~16_combout\ = ( !\processador|PC|DOUT\(3) & ( (!\processador|PC|DOUT[0]~DUPLICATE_q\ & (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ (!\processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \RAM1|dado_out~16_combout\);

-- Location: LABCELL_X5_Y20_N57
\RAM1|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[0]~8_combout\ = ( \RAM1|ram~529_combout\ & ( (!\RAM1|dado_out~16_combout\) # (!\ROM1|memROM~6_combout\) ) ) # ( !\RAM1|ram~529_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~529_combout\,
	combout => \RAM1|dado_out[0]~8_combout\);

-- Location: MLABCELL_X4_Y20_N30
\processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~1_sumout\ = SUM(( \processador|REGA|DOUT\(0) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~4_combout\)) ) + ( !VCC ))
-- \processador|ULA1|Add0~2\ = CARRY(( \processador|REGA|DOUT\(0) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~4_combout\)) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101100011011000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM1|ALT_INV_dado_out[0]~8_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \processador|ULA1|Add0~1_sumout\,
	cout => \processador|ULA1|Add0~2\);

-- Location: MLABCELL_X4_Y20_N6
\processador|decoderInstru1|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida[4]~1_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~1_combout\) # (\ROM1|memROM~0_combout\) ) ) # ( !\ROM1|memROM~2_combout\ & ( (\ROM1|memROM~0_combout\) # (\ROM1|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|saida[4]~1_combout\);

-- Location: LABCELL_X5_Y20_N24
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

-- Location: LABCELL_X5_Y20_N27
\processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~1_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~4_combout\)) ) + ( \processador|REGA|DOUT\(0) ) + ( 
-- \processador|ULA1|Add1~34_cout\ ))
-- \processador|ULA1|Add1~2\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[0]~8_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~4_combout\)) ) + ( \processador|REGA|DOUT\(0) ) + ( 
-- \processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \processador|REGA|ALT_INV_DOUT\(0),
	datac => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datad => \RAM1|ALT_INV_dado_out[0]~8_combout\,
	cin => \processador|ULA1|Add1~34_cout\,
	sumout => \processador|ULA1|Add1~1_sumout\,
	cout => \processador|ULA1|Add1~2\);

-- Location: MLABCELL_X4_Y20_N0
\processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[0]~0_combout\ = ( \processador|ULA1|Add1~1_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & (\RAM1|dado_out[0]~8_combout\)) # (\processador|decoderInstru1|Equal10~2_combout\ & ((!\ROM1|memROM~4_combout\)))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~1_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & (\RAM1|dado_out[0]~8_combout\)) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & ((!\ROM1|memROM~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000001000010011000000100001111111001110110111111100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datac => \RAM1|ALT_INV_dado_out[0]~8_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \processador|ULA1|saida[0]~0_combout\);

-- Location: MLABCELL_X4_Y20_N15
\processador|decoderInstru1|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~1_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~1_combout\ & \ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|Equal10~1_combout\);

-- Location: MLABCELL_X4_Y20_N9
\processador|decoderInstru1|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~2_combout\ = ( \ROM1|memROM~2_combout\ & ( (\ROM1|memROM~0_combout\) # (\ROM1|memROM~1_combout\) ) ) # ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~1_combout\ & !\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|saida~2_combout\);

-- Location: FF_X4_Y20_N31
\processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~1_sumout\,
	asdata => \processador|ULA1|saida[0]~0_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(0));

-- Location: LABCELL_X6_Y19_N45
\RAM1|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~560_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT\(3) & \processador|PC|DOUT[0]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~560_combout\);

-- Location: FF_X6_Y20_N59
\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

-- Location: LABCELL_X6_Y20_N57
\RAM1|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~527_combout\ = ( \processador|PC|DOUT\(3) & ( (\RAM1|ram~23_q\ & ((!\processador|PC|DOUT\(0)) # (\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT\(3) & ( (\RAM1|ram~23_q\ & (((!\processador|PC|DOUT[1]~DUPLICATE_q\) # 
-- (!\processador|PC|DOUT[2]~DUPLICATE_q\)) # (\processador|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111101000000001111110100000000101011110000000010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \RAM1|ALT_INV_ram~23_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(3),
	combout => \RAM1|ram~527_combout\);

-- Location: LABCELL_X6_Y19_N12
\RAM1|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~559_combout\ = ( !\processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & \processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|PC|ALT_INV_DOUT\(3),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \RAM1|ram~559_combout\);

-- Location: FF_X6_Y20_N4
\RAM1|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~15_q\);

-- Location: LABCELL_X7_Y20_N18
\RAM1|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~528_combout\ = ( \processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\RAM1|ram~15_q\ & ((!\processador|PC|DOUT[0]~DUPLICATE_q\) # (\processador|PC|DOUT\(2)))) ) ) # ( !\processador|PC|DOUT[3]~DUPLICATE_q\ & ( (\RAM1|ram~15_q\ & 
-- (((!\processador|PC|DOUT\(2)) # (!\processador|PC|DOUT[1]~DUPLICATE_q\)) # (\processador|PC|DOUT[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111101000000001111110100000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \RAM1|ALT_INV_ram~15_q\,
	dataf => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM1|ram~528_combout\);

-- Location: LABCELL_X6_Y20_N36
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \processador|PC|DOUT\(0) & ( (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT[1]~DUPLICATE_q\ & !\processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~8_combout\);

-- Location: LABCELL_X6_Y20_N45
\RAM1|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~529_combout\ = ( \ROM1|memROM~4_combout\ & ( (\RAM1|ram~528_combout\ & !\ROM1|memROM~8_combout\) ) ) # ( !\ROM1|memROM~4_combout\ & ( (\RAM1|ram~527_combout\ & !\ROM1|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~527_combout\,
	datac => \RAM1|ALT_INV_ram~528_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~529_combout\);

-- Location: LABCELL_X6_Y19_N9
\RAM1|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~551_combout\ = ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~529_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~529_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~551_combout\);

-- Location: LABCELL_X5_Y20_N18
\RAM1|dado_out[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[1]~9_combout\ = ( \RAM1|dado_out~16_combout\ & ( (!\ROM1|memROM~6_combout\ & \RAM1|ram~532_combout\) ) ) # ( !\RAM1|dado_out~16_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_ram~532_combout\,
	dataf => \RAM1|ALT_INV_dado_out~16_combout\,
	combout => \RAM1|dado_out[1]~9_combout\);

-- Location: LABCELL_X5_Y20_N30
\processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~5_sumout\ = SUM(( \processador|REGA|DOUT[1]~DUPLICATE_q\ ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~5_combout\)) ) + 
-- ( \processador|ULA1|Add1~2\ ))
-- \processador|ULA1|Add1~6\ = CARRY(( \processador|REGA|DOUT[1]~DUPLICATE_q\ ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~5_combout\)) ) + ( 
-- \processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111010001110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \RAM1|ALT_INV_dado_out[1]~9_combout\,
	datad => \processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \processador|ULA1|Add1~2\,
	sumout => \processador|ULA1|Add1~5_sumout\,
	cout => \processador|ULA1|Add1~6\);

-- Location: MLABCELL_X4_Y20_N54
\processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[1]~1_combout\ = ( \processador|ULA1|Add1~5_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~5_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~5_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[1]~9_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_dado_out[1]~9_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \processador|ULA1|saida[1]~1_combout\);

-- Location: FF_X4_Y20_N35
\processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~5_sumout\,
	asdata => \processador|ULA1|saida[1]~1_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(1));

-- Location: MLABCELL_X4_Y20_N33
\processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~5_sumout\ = SUM(( \processador|REGA|DOUT\(1) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~5_combout\)) ) + ( 
-- \processador|ULA1|Add0~2\ ))
-- \processador|ULA1|Add0~6\ = CARRY(( \processador|REGA|DOUT\(1) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[1]~9_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~5_combout\)) ) + ( 
-- \processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(1),
	dataf => \RAM1|ALT_INV_dado_out[1]~9_combout\,
	cin => \processador|ULA1|Add0~2\,
	sumout => \processador|ULA1|Add0~5_sumout\,
	cout => \processador|ULA1|Add0~6\);

-- Location: FF_X4_Y20_N34
\processador|REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~5_sumout\,
	asdata => \processador|ULA1|saida[1]~1_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X7_Y20_N17
\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

-- Location: LABCELL_X6_Y20_N18
\RAM1|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~530_combout\ = ( \processador|PC|DOUT\(0) & ( (\RAM1|ram~24_q\ & ((!\processador|PC|DOUT[3]~DUPLICATE_q\) # (\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT\(0) & ( (\RAM1|ram~24_q\ & 
-- ((!\processador|PC|DOUT[1]~DUPLICATE_q\) # ((!\processador|PC|DOUT[2]~DUPLICATE_q\) # (\processador|PC|DOUT[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \RAM1|ALT_INV_ram~24_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~530_combout\);

-- Location: FF_X7_Y20_N23
\RAM1|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~16_q\);

-- Location: LABCELL_X7_Y20_N21
\RAM1|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~531_combout\ = ( \processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\RAM1|ram~16_q\ & ((!\processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\processador|PC|DOUT\(2)) # (\processador|PC|DOUT[3]~DUPLICATE_q\))) # (\processador|PC|DOUT[0]~DUPLICATE_q\ & 
-- ((!\processador|PC|DOUT[3]~DUPLICATE_q\) # (\processador|PC|DOUT\(2)))))) ) ) # ( !\processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\RAM1|ram~16_q\ & ((!\processador|PC|DOUT[0]~DUPLICATE_q\) # ((!\processador|PC|DOUT[3]~DUPLICATE_q\) # 
-- (\processador|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111011000000001111101100000000110110110000000011011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \RAM1|ALT_INV_ram~16_q\,
	dataf => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \RAM1|ram~531_combout\);

-- Location: LABCELL_X6_Y20_N0
\RAM1|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~532_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~531_combout\) ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~530_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~530_combout\,
	datad => \RAM1|ALT_INV_ram~531_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~532_combout\);

-- Location: LABCELL_X6_Y19_N24
\RAM1|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~552_combout\ = ( \RAM1|ram~532_combout\ & ( !\ROM1|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~532_combout\,
	combout => \RAM1|ram~552_combout\);

-- Location: LABCELL_X5_Y20_N54
\RAM1|dado_out[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[2]~10_combout\ = ( \RAM1|ram~535_combout\ & ( (!\ROM1|memROM~6_combout\) # (!\RAM1|dado_out~16_combout\) ) ) # ( !\RAM1|ram~535_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~535_combout\,
	combout => \RAM1|dado_out[2]~10_combout\);

-- Location: MLABCELL_X4_Y20_N36
\processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~9_sumout\ = SUM(( \processador|REGA|DOUT\(2) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & (\RAM1|dado_out[2]~10_combout\)) # (\processador|decoderInstru1|Equal10~2_combout\ & ((\ROM1|memROM~6_combout\))) ) + ( 
-- \processador|ULA1|Add0~6\ ))
-- \processador|ULA1|Add0~10\ = CARRY(( \processador|REGA|DOUT\(2) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & (\RAM1|dado_out[2]~10_combout\)) # (\processador|decoderInstru1|Equal10~2_combout\ & ((\ROM1|memROM~6_combout\))) ) + ( 
-- \processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001101100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \RAM1|ALT_INV_dado_out[2]~10_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add0~6\,
	sumout => \processador|ULA1|Add0~9_sumout\,
	cout => \processador|ULA1|Add0~10\);

-- Location: LABCELL_X5_Y20_N33
\processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~9_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[2]~10_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(2) ) + ( 
-- \processador|ULA1|Add1~6\ ))
-- \processador|ULA1|Add1~10\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[2]~10_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT\(2) ) + ( 
-- \processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[2]~10_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT\(2),
	cin => \processador|ULA1|Add1~6\,
	sumout => \processador|ULA1|Add1~9_sumout\,
	cout => \processador|ULA1|Add1~10\);

-- Location: MLABCELL_X4_Y20_N57
\processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[2]~2_combout\ = ( \processador|ULA1|Add1~9_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[2]~10_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~9_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[2]~10_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[2]~10_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \processador|ULA1|saida[2]~2_combout\);

-- Location: FF_X4_Y20_N37
\processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~9_sumout\,
	asdata => \processador|ULA1|saida[2]~2_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(2));

-- Location: FF_X6_Y20_N23
\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

-- Location: LABCELL_X6_Y20_N21
\RAM1|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~534_combout\ = ( \processador|PC|DOUT\(0) & ( (\RAM1|ram~17_q\ & ((!\processador|PC|DOUT[3]~DUPLICATE_q\) # (\processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT\(0) & ( (\RAM1|ram~17_q\ & 
-- ((!\processador|PC|DOUT[1]~DUPLICATE_q\) # ((!\processador|PC|DOUT[2]~DUPLICATE_q\) # (\processador|PC|DOUT[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \RAM1|ALT_INV_ram~17_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \RAM1|ram~534_combout\);

-- Location: FF_X6_Y20_N56
\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

-- Location: LABCELL_X6_Y20_N54
\RAM1|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~533_combout\ = ( \processador|PC|DOUT[2]~DUPLICATE_q\ & ( (\RAM1|ram~25_q\ & (((!\processador|PC|DOUT[1]~DUPLICATE_q\) # (\processador|PC|DOUT[3]~DUPLICATE_q\)) # (\processador|PC|DOUT\(0)))) ) ) # ( !\processador|PC|DOUT[2]~DUPLICATE_q\ & ( 
-- (\RAM1|ram~25_q\ & ((!\processador|PC|DOUT\(0)) # (!\processador|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000000110111110000000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(0),
	datab => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \RAM1|ALT_INV_ram~25_q\,
	dataf => \processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \RAM1|ram~533_combout\);

-- Location: LABCELL_X6_Y20_N12
\RAM1|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~535_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~534_combout\) ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~8_combout\ & \RAM1|ram~533_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~534_combout\,
	datad => \RAM1|ALT_INV_ram~533_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM1|ram~535_combout\);

-- Location: LABCELL_X6_Y19_N27
\RAM1|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~553_combout\ = (!\ROM1|memROM~6_combout\ & \RAM1|ram~535_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~535_combout\,
	combout => \RAM1|ram~553_combout\);

-- Location: LABCELL_X5_Y20_N0
\RAM1|dado_out[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[3]~11_combout\ = ( \RAM1|ram~538_combout\ & ( (!\RAM1|dado_out~16_combout\) # (!\ROM1|memROM~6_combout\) ) ) # ( !\RAM1|ram~538_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_dado_out~16_combout\,
	datad => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~538_combout\,
	combout => \RAM1|dado_out[3]~11_combout\);

-- Location: MLABCELL_X4_Y20_N39
\processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~13_sumout\ = SUM(( \processador|REGA|DOUT\(3) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[3]~11_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~7_combout\)) ) + ( 
-- \processador|ULA1|Add0~10\ ))
-- \processador|ULA1|Add0~14\ = CARRY(( \processador|REGA|DOUT\(3) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[3]~11_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~7_combout\)) ) + ( 
-- \processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(3),
	dataf => \RAM1|ALT_INV_dado_out[3]~11_combout\,
	cin => \processador|ULA1|Add0~10\,
	sumout => \processador|ULA1|Add0~13_sumout\,
	cout => \processador|ULA1|Add0~14\);

-- Location: FF_X4_Y20_N40
\processador|REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~13_sumout\,
	asdata => \processador|ULA1|saida[3]~3_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y20_N36
\processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~13_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[3]~11_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~7_combout\)) ) + ( \processador|REGA|DOUT[3]~DUPLICATE_q\ ) 
-- + ( \processador|ULA1|Add1~10\ ))
-- \processador|ULA1|Add1~14\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[3]~11_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~7_combout\)) ) + ( \processador|REGA|DOUT[3]~DUPLICATE_q\ ) + ( 
-- \processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_dado_out[3]~11_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \processador|ULA1|Add1~10\,
	sumout => \processador|ULA1|Add1~13_sumout\,
	cout => \processador|ULA1|Add1~14\);

-- Location: MLABCELL_X4_Y20_N3
\processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[3]~3_combout\ = ( \processador|ULA1|Add1~13_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[3]~11_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~7_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~13_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[3]~11_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \RAM1|ALT_INV_dado_out[3]~11_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \processador|ULA1|saida[3]~3_combout\);

-- Location: FF_X4_Y20_N41
\processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~13_sumout\,
	asdata => \processador|ULA1|saida[3]~3_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(3));

-- Location: FF_X6_Y20_N29
\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

-- Location: LABCELL_X6_Y20_N15
\RAM1|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~536_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~5_combout\ & \RAM1|ram~26_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~26_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~536_combout\);

-- Location: FF_X6_Y20_N8
\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

-- Location: LABCELL_X6_Y20_N48
\RAM1|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~537_combout\ = ( !\ROM1|memROM~7_combout\ & ( (\RAM1|ram~18_q\ & !\ROM1|memROM~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~18_q\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~537_combout\);

-- Location: LABCELL_X6_Y20_N51
\RAM1|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~538_combout\ = ( \RAM1|ram~537_combout\ & ( (!\ROM1|memROM~8_combout\ & ((\RAM1|ram~536_combout\) # (\ROM1|memROM~4_combout\))) ) ) # ( !\RAM1|ram~537_combout\ & ( (!\ROM1|memROM~4_combout\ & (\RAM1|ram~536_combout\ & !\ROM1|memROM~8_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM1|ALT_INV_ram~536_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~537_combout\,
	combout => \RAM1|ram~538_combout\);

-- Location: LABCELL_X6_Y19_N18
\RAM1|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~554_combout\ = ( \RAM1|ram~538_combout\ & ( !\ROM1|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~538_combout\,
	combout => \RAM1|ram~554_combout\);

-- Location: LABCELL_X5_Y20_N3
\RAM1|dado_out[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[4]~12_combout\ = ( \RAM1|ram~541_combout\ & ( (!\ROM1|memROM~6_combout\) # (!\RAM1|dado_out~16_combout\) ) ) # ( !\RAM1|ram~541_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~541_combout\,
	combout => \RAM1|dado_out[4]~12_combout\);

-- Location: LABCELL_X5_Y20_N39
\processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~17_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[4]~12_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT[4]~DUPLICATE_q\ ) 
-- + ( \processador|ULA1|Add1~14\ ))
-- \processador|ULA1|Add1~18\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[4]~12_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~6_combout\)) ) + ( \processador|REGA|DOUT[4]~DUPLICATE_q\ ) + ( 
-- \processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out[4]~12_combout\,
	cin => \processador|ULA1|Add1~14\,
	sumout => \processador|ULA1|Add1~17_sumout\,
	cout => \processador|ULA1|Add1~18\);

-- Location: LABCELL_X5_Y20_N15
\processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[4]~4_combout\ = ( \processador|ULA1|Add1~17_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & (\RAM1|dado_out[4]~12_combout\)) # (\processador|decoderInstru1|Equal10~2_combout\ & ((\ROM1|memROM~6_combout\)))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~17_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & (\RAM1|dado_out[4]~12_combout\)) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & ((\ROM1|memROM~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011000001011111001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out[4]~12_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datad => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \processador|ULA1|saida[4]~4_combout\);

-- Location: FF_X4_Y20_N44
\processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~17_sumout\,
	asdata => \processador|ULA1|saida[4]~4_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(4));

-- Location: MLABCELL_X4_Y20_N42
\processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~17_sumout\ = SUM(( \processador|REGA|DOUT\(4) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[4]~12_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)) ) + ( 
-- \processador|ULA1|Add0~14\ ))
-- \processador|ULA1|Add0~18\ = CARRY(( \processador|REGA|DOUT\(4) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[4]~12_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)) ) + ( 
-- \processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001110010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_dado_out[4]~12_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(4),
	cin => \processador|ULA1|Add0~14\,
	sumout => \processador|ULA1|Add0~17_sumout\,
	cout => \processador|ULA1|Add0~18\);

-- Location: FF_X4_Y20_N43
\processador|REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~17_sumout\,
	asdata => \processador|ULA1|saida[4]~4_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[4]~DUPLICATE_q\);

-- Location: FF_X6_Y20_N32
\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

-- Location: LABCELL_X6_Y20_N30
\RAM1|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~539_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~5_combout\ & \RAM1|ram~27_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~27_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~539_combout\);

-- Location: FF_X6_Y20_N17
\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[4]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

-- Location: LABCELL_X6_Y20_N9
\RAM1|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~540_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~5_combout\ & \RAM1|ram~19_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~19_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~540_combout\);

-- Location: LABCELL_X6_Y20_N39
\RAM1|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~541_combout\ = ( \RAM1|ram~540_combout\ & ( (!\ROM1|memROM~8_combout\ & ((\RAM1|ram~539_combout\) # (\ROM1|memROM~4_combout\))) ) ) # ( !\RAM1|ram~540_combout\ & ( (!\ROM1|memROM~4_combout\ & (\RAM1|ram~539_combout\ & !\ROM1|memROM~8_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM1|ALT_INV_ram~539_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~540_combout\,
	combout => \RAM1|ram~541_combout\);

-- Location: LABCELL_X6_Y19_N21
\RAM1|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~555_combout\ = ( \RAM1|ram~541_combout\ & ( !\ROM1|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~541_combout\,
	combout => \RAM1|ram~555_combout\);

-- Location: LABCELL_X6_Y20_N6
\RAM1|dado_out[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[5]~13_combout\ = ( \RAM1|ram~544_combout\ & ( (!\ROM1|memROM~6_combout\) # (!\RAM1|dado_out~16_combout\) ) ) # ( !\RAM1|ram~544_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~544_combout\,
	combout => \RAM1|dado_out[5]~13_combout\);

-- Location: LABCELL_X5_Y20_N42
\processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~21_sumout\ = SUM(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[5]~13_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~8_combout\)) ) + ( \processador|REGA|DOUT[5]~DUPLICATE_q\ ) 
-- + ( \processador|ULA1|Add1~18\ ))
-- \processador|ULA1|Add1~22\ = CARRY(( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[5]~13_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~8_combout\)) ) + ( \processador|REGA|DOUT[5]~DUPLICATE_q\ ) + ( 
-- \processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_dado_out[5]~13_combout\,
	dataf => \processador|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \processador|ULA1|Add1~18\,
	sumout => \processador|ULA1|Add1~21_sumout\,
	cout => \processador|ULA1|Add1~22\);

-- Location: LABCELL_X5_Y20_N21
\processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[5]~5_combout\ = ( \processador|ULA1|Add1~21_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[5]~13_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~8_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~21_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[5]~13_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000011111110111110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datad => \RAM1|ALT_INV_dado_out[5]~13_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \processador|ULA1|saida[5]~5_combout\);

-- Location: FF_X4_Y20_N47
\processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~21_sumout\,
	asdata => \processador|ULA1|saida[5]~5_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(5));

-- Location: MLABCELL_X4_Y20_N45
\processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~21_sumout\ = SUM(( \processador|REGA|DOUT\(5) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[5]~13_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~8_combout\)) ) + ( 
-- \processador|ULA1|Add0~18\ ))
-- \processador|ULA1|Add0~22\ = CARRY(( \processador|REGA|DOUT\(5) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[5]~13_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~8_combout\)) ) + ( 
-- \processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(5),
	dataf => \RAM1|ALT_INV_dado_out[5]~13_combout\,
	cin => \processador|ULA1|Add0~18\,
	sumout => \processador|ULA1|Add0~21_sumout\,
	cout => \processador|ULA1|Add0~22\);

-- Location: FF_X4_Y20_N46
\processador|REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~21_sumout\,
	asdata => \processador|ULA1|saida[5]~5_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X6_Y20_N11
\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

-- Location: LABCELL_X6_Y20_N3
\RAM1|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~543_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~5_combout\ & \RAM1|ram~20_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~20_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~543_combout\);

-- Location: FF_X6_Y20_N44
\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

-- Location: LABCELL_X6_Y20_N42
\RAM1|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~542_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~5_combout\ & \RAM1|ram~28_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~28_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~542_combout\);

-- Location: LABCELL_X6_Y20_N33
\RAM1|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~544_combout\ = ( \RAM1|ram~542_combout\ & ( (!\ROM1|memROM~8_combout\ & ((!\ROM1|memROM~4_combout\) # (\RAM1|ram~543_combout\))) ) ) # ( !\RAM1|ram~542_combout\ & ( (!\ROM1|memROM~8_combout\ & (\ROM1|memROM~4_combout\ & \RAM1|ram~543_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM1|ALT_INV_ram~543_combout\,
	dataf => \RAM1|ALT_INV_ram~542_combout\,
	combout => \RAM1|ram~544_combout\);

-- Location: LABCELL_X6_Y19_N36
\RAM1|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~556_combout\ = ( \RAM1|ram~544_combout\ & ( !\ROM1|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \RAM1|ALT_INV_ram~544_combout\,
	combout => \RAM1|ram~556_combout\);

-- Location: LABCELL_X5_Y20_N12
\RAM1|dado_out[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[6]~14_combout\ = ( \RAM1|ram~547_combout\ & ( (!\ROM1|memROM~6_combout\) # (!\RAM1|dado_out~16_combout\) ) ) # ( !\RAM1|ram~547_combout\ & ( !\RAM1|dado_out~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~547_combout\,
	combout => \RAM1|dado_out[6]~14_combout\);

-- Location: MLABCELL_X4_Y20_N48
\processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~25_sumout\ = SUM(( \processador|REGA|DOUT\(6) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[6]~14_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)) ) + ( 
-- \processador|ULA1|Add0~22\ ))
-- \processador|ULA1|Add0~26\ = CARRY(( \processador|REGA|DOUT\(6) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[6]~14_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)) ) + ( 
-- \processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001110010000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_dado_out[6]~14_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(6),
	cin => \processador|ULA1|Add0~22\,
	sumout => \processador|ULA1|Add0~25_sumout\,
	cout => \processador|ULA1|Add0~26\);

-- Location: LABCELL_X5_Y20_N45
\processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~25_sumout\ = SUM(( \processador|REGA|DOUT\(6) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[6]~14_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~6_combout\)) ) + ( 
-- \processador|ULA1|Add1~22\ ))
-- \processador|ULA1|Add1~26\ = CARRY(( \processador|REGA|DOUT\(6) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[6]~14_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~6_combout\)) ) + ( 
-- \processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111010001110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \RAM1|ALT_INV_dado_out[6]~14_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(6),
	cin => \processador|ULA1|Add1~22\,
	sumout => \processador|ULA1|Add1~25_sumout\,
	cout => \processador|ULA1|Add1~26\);

-- Location: LABCELL_X5_Y20_N9
\processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[6]~6_combout\ = ( \processador|ULA1|Add1~25_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[6]~14_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~25_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[6]~14_combout\))) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000011111110111110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datad => \RAM1|ALT_INV_dado_out[6]~14_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \processador|ULA1|saida[6]~6_combout\);

-- Location: FF_X4_Y20_N49
\processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~25_sumout\,
	asdata => \processador|ULA1|saida[6]~6_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(6));

-- Location: FF_X7_Y20_N8
\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

-- Location: LABCELL_X7_Y20_N6
\RAM1|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~545_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~5_combout\ & \RAM1|ram~29_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~29_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~545_combout\);

-- Location: FF_X5_Y20_N55
\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

-- Location: LABCELL_X6_Y20_N27
\RAM1|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~546_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~5_combout\ & \RAM1|ram~21_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_ram~21_q\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM1|ram~546_combout\);

-- Location: LABCELL_X6_Y20_N24
\RAM1|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~547_combout\ = ( \RAM1|ram~546_combout\ & ( (!\ROM1|memROM~8_combout\ & ((\RAM1|ram~545_combout\) # (\ROM1|memROM~4_combout\))) ) ) # ( !\RAM1|ram~546_combout\ & ( (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~8_combout\ & \RAM1|ram~545_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \RAM1|ALT_INV_ram~545_combout\,
	dataf => \RAM1|ALT_INV_ram~546_combout\,
	combout => \RAM1|ram~547_combout\);

-- Location: LABCELL_X6_Y19_N39
\RAM1|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~557_combout\ = (!\ROM1|memROM~6_combout\ & \RAM1|ram~547_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~547_combout\,
	combout => \RAM1|ram~557_combout\);

-- Location: LABCELL_X6_Y19_N3
\RAM1|dado_out[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|dado_out[7]~15_combout\ = ( \RAM1|dado_out~16_combout\ & ( \RAM1|ram~550_combout\ & ( !\ROM1|memROM~6_combout\ ) ) ) # ( !\RAM1|dado_out~16_combout\ & ( \RAM1|ram~550_combout\ ) ) # ( !\RAM1|dado_out~16_combout\ & ( !\RAM1|ram~550_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datae => \RAM1|ALT_INV_dado_out~16_combout\,
	dataf => \RAM1|ALT_INV_ram~550_combout\,
	combout => \RAM1|dado_out[7]~15_combout\);

-- Location: MLABCELL_X4_Y20_N51
\processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add0~29_sumout\ = SUM(( \processador|REGA|DOUT\(7) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((\RAM1|dado_out[7]~15_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (\ROM1|memROM~8_combout\)) ) + ( 
-- \processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(7),
	dataf => \RAM1|ALT_INV_dado_out[7]~15_combout\,
	cin => \processador|ULA1|Add0~26\,
	sumout => \processador|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X5_Y20_N48
\processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|Add1~29_sumout\ = SUM(( \processador|REGA|DOUT\(7) ) + ( (!\processador|decoderInstru1|Equal10~2_combout\ & ((!\RAM1|dado_out[7]~15_combout\))) # (\processador|decoderInstru1|Equal10~2_combout\ & (!\ROM1|memROM~8_combout\)) ) + ( 
-- \processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111010001110100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datac => \RAM1|ALT_INV_dado_out[7]~15_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(7),
	cin => \processador|ULA1|Add1~26\,
	sumout => \processador|ULA1|Add1~29_sumout\);

-- Location: MLABCELL_X4_Y20_N24
\processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|ULA1|saida[7]~7_combout\ = ( \processador|ULA1|Add1~29_sumout\ & ( ((!\processador|decoderInstru1|Equal10~2_combout\ & (\RAM1|dado_out[7]~15_combout\)) # (\processador|decoderInstru1|Equal10~2_combout\ & ((\ROM1|memROM~8_combout\)))) # 
-- (\processador|decoderInstru1|saida[4]~1_combout\) ) ) # ( !\processador|ULA1|Add1~29_sumout\ & ( (!\processador|decoderInstru1|saida[4]~1_combout\ & ((!\processador|decoderInstru1|Equal10~2_combout\ & (\RAM1|dado_out[7]~15_combout\)) # 
-- (\processador|decoderInstru1|Equal10~2_combout\ & ((\ROM1|memROM~8_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000000100110001110011011111110111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_dado_out[7]~15_combout\,
	datab => \processador|decoderInstru1|ALT_INV_saida[4]~1_combout\,
	datac => \processador|decoderInstru1|ALT_INV_Equal10~2_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \processador|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \processador|ULA1|saida[7]~7_combout\);

-- Location: FF_X4_Y20_N52
\processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|ULA1|Add0~29_sumout\,
	asdata => \processador|ULA1|saida[7]~7_combout\,
	sload => \processador|decoderInstru1|ALT_INV_Equal10~1_combout\,
	ena => \processador|decoderInstru1|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|REGA|DOUT\(7));

-- Location: FF_X5_Y19_N43
\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~559_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

-- Location: LABCELL_X6_Y19_N6
\RAM1|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~549_combout\ = ( !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~22_q\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~22_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~549_combout\);

-- Location: FF_X6_Y19_N47
\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM1|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

-- Location: LABCELL_X6_Y19_N30
\RAM1|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~548_combout\ = ( !\ROM1|memROM~5_combout\ & ( (\RAM1|ram~30_q\ & !\ROM1|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~30_q\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~548_combout\);

-- Location: LABCELL_X6_Y19_N48
\RAM1|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~550_combout\ = ( \RAM1|ram~548_combout\ & ( (!\ROM1|memROM~8_combout\ & ((!\ROM1|memROM~4_combout\) # (\RAM1|ram~549_combout\))) ) ) # ( !\RAM1|ram~548_combout\ & ( (\RAM1|ram~549_combout\ & (\ROM1|memROM~4_combout\ & !\ROM1|memROM~8_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM1|ALT_INV_ram~549_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	dataf => \RAM1|ALT_INV_ram~548_combout\,
	combout => \RAM1|ram~550_combout\);

-- Location: LABCELL_X6_Y19_N33
\RAM1|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~558_combout\ = ( !\ROM1|memROM~6_combout\ & ( \RAM1|ram~550_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM1|ALT_INV_ram~550_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM1|ram~558_combout\);

-- Location: LABCELL_X7_Y20_N42
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

-- Location: FF_X7_Y20_N43
\processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~17_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(4));

-- Location: LABCELL_X7_Y20_N45
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

-- Location: FF_X7_Y20_N46
\processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~21_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(5));

-- Location: LABCELL_X7_Y20_N48
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

-- Location: FF_X7_Y20_N49
\processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~25_sumout\,
	asdata => \ROM1|memROM~6_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(6));

-- Location: LABCELL_X7_Y20_N51
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

-- Location: FF_X7_Y20_N52
\processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~29_sumout\,
	asdata => \ROM1|memROM~8_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(7));

-- Location: LABCELL_X7_Y20_N54
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

-- Location: LABCELL_X7_Y20_N15
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT\(0) & (!\processador|PC|DOUT[3]~DUPLICATE_q\ $ (!\processador|PC|DOUT\(2)))) ) ) # ( !\processador|PC|DOUT\(1) & ( (!\processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\processador|PC|DOUT\(0) & \processador|PC|DOUT\(2))) # (\processador|PC|DOUT[3]~DUPLICATE_q\ & (!\processador|PC|DOUT\(0) & !\processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \processador|PC|ALT_INV_DOUT\(0),
	datac => \processador|PC|ALT_INV_DOUT\(2),
	dataf => \processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM1|memROM~3_combout\);

-- Location: FF_X7_Y20_N55
\processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \processador|incrementaPC|Add0~33_sumout\,
	asdata => \ROM1|memROM~3_combout\,
	sload => \processador|decoderInstru1|Equal10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processador|PC|DOUT\(8));

-- Location: LABCELL_X6_Y19_N54
\logica_LED|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~1_combout\ = ( \processador|PC|DOUT\(2) & ( (!\processador|PC|DOUT\(3) & (!\processador|PC|DOUT[1]~DUPLICATE_q\ $ (!\processador|PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\processador|PC|DOUT\(2) & ( (\processador|PC|DOUT\(3) & 
-- !\processador|PC|DOUT[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010000101000000101000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(2),
	combout => \logica_LED|comb~1_combout\);

-- Location: LABCELL_X5_Y19_N39
\logica_LED|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|comb~0_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~5_combout\ & \logica_LED|comb~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \logica_LED|ALT_INV_comb~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \logica_LED|comb~0_combout\);

-- Location: FF_X5_Y19_N40
\logica_LED|REG_LEDS|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(0));

-- Location: FF_X4_Y20_N16
\logica_LED|REG_LEDS|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(1));

-- Location: FF_X5_Y20_N52
\logica_LED|REG_LEDS|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(2));

-- Location: FF_X4_Y20_N20
\logica_LED|REG_LEDS|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(3));

-- Location: FF_X4_Y20_N22
\logica_LED|REG_LEDS|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(4));

-- Location: FF_X4_Y20_N8
\logica_LED|REG_LEDS|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(5));

-- Location: FF_X5_Y20_N4
\logica_LED|REG_LEDS|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(6));

-- Location: FF_X5_Y19_N37
\logica_LED|REG_LEDS|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \logica_LED|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|REG_LEDS|DOUT\(7));

-- Location: LABCELL_X5_Y19_N18
\logica_LED|FlipFlop1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|FlipFlop1|DOUT~0_combout\ = ( \logica_LED|FlipFlop1|DOUT~q\ & ( \ROM1|memROM~5_combout\ ) ) # ( \logica_LED|FlipFlop1|DOUT~q\ & ( !\ROM1|memROM~5_combout\ & ( (!\logica_LED|comb~1_combout\) # ((\processador|REGA|DOUT\(0)) # 
-- (\ROM1|memROM~4_combout\)) ) ) ) # ( !\logica_LED|FlipFlop1|DOUT~q\ & ( !\ROM1|memROM~5_combout\ & ( (\logica_LED|comb~1_combout\ & (!\ROM1|memROM~4_combout\ & \processador|REGA|DOUT\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000110011111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_LED|ALT_INV_comb~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	datae => \logica_LED|FlipFlop1|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \logica_LED|FlipFlop1|DOUT~0_combout\);

-- Location: FF_X5_Y19_N19
\logica_LED|FlipFlop1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \logica_LED|FlipFlop1|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|FlipFlop1|DOUT~q\);

-- Location: LABCELL_X5_Y19_N24
\logica_LED|FlipFlop2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \logica_LED|FlipFlop2|DOUT~0_combout\ = ( \logica_LED|FlipFlop2|DOUT~q\ & ( \ROM1|memROM~5_combout\ & ( (!\logica_LED|comb~1_combout\) # ((!\ROM1|memROM~4_combout\) # (\processador|REGA|DOUT\(0))) ) ) ) # ( !\logica_LED|FlipFlop2|DOUT~q\ & ( 
-- \ROM1|memROM~5_combout\ & ( (\logica_LED|comb~1_combout\ & (\ROM1|memROM~4_combout\ & \processador|REGA|DOUT\(0))) ) ) ) # ( \logica_LED|FlipFlop2|DOUT~q\ & ( !\ROM1|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \logica_LED|ALT_INV_comb~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \processador|REGA|ALT_INV_DOUT\(0),
	datae => \logica_LED|FlipFlop2|ALT_INV_DOUT~q\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \logica_LED|FlipFlop2|DOUT~0_combout\);

-- Location: FF_X5_Y19_N25
\logica_LED|FlipFlop2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \logica_LED|FlipFlop2|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \logica_LED|FlipFlop2|DOUT~q\);

-- Location: MLABCELL_X4_Y20_N21
\processador|decoderInstru1|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~0_combout\ = (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|Equal10~0_combout\);

-- Location: MLABCELL_X4_Y20_N18
\processador|decoderInstru1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|saida~0_combout\ = (\ROM1|memROM~2_combout\ & ((\ROM1|memROM~0_combout\) # (\ROM1|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100000000011101110000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|saida~0_combout\);

-- Location: MLABCELL_X4_Y20_N12
\processador|decoderInstru1|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \processador|decoderInstru1|Equal10~3_combout\ = (\ROM1|memROM~1_combout\ & (\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \processador|decoderInstru1|Equal10~3_combout\);

-- Location: LABCELL_X6_Y19_N51
\decoderBloco|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderBloco|Equal7~0_combout\ = ( \processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT\(3)) # (\processador|PC|DOUT[1]~DUPLICATE_q\))) # (\processador|PC|DOUT\(2) & (\processador|PC|DOUT\(3))) ) ) # ( 
-- !\processador|PC|DOUT\(0) & ( (!\processador|PC|DOUT\(2) & (!\processador|PC|DOUT\(3))) # (\processador|PC|DOUT\(2) & ((!\processador|PC|DOUT[1]~DUPLICATE_q\) # (\processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010110100101111101011010010110100101101011111010010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \processador|PC|ALT_INV_DOUT\(2),
	datac => \processador|PC|ALT_INV_DOUT\(3),
	datad => \processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \processador|PC|ALT_INV_DOUT\(0),
	combout => \decoderBloco|Equal7~0_combout\);

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

-- Location: LABCELL_X48_Y23_N0
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


