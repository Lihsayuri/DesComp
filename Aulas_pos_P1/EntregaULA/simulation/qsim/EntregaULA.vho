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

-- DATE "11/18/2022 14:24:01"

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

ENTITY 	EntregaULA IS
    PORT (
	entradaA : IN std_logic_vector(31 DOWNTO 0);
	entradaB : IN std_logic_vector(31 DOWNTO 0);
	seletor : IN std_logic_vector(1 DOWNTO 0);
	inverteB : IN std_logic;
	saida : OUT std_logic_vector(31 DOWNTO 0);
	flagZero : OUT std_logic
	);
END EntregaULA;

ARCHITECTURE structure OF EntregaULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradaA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_seletor : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_inverteB : std_logic;
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_flagZero : std_logic;
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \saida[16]~output_o\ : std_logic;
SIGNAL \saida[17]~output_o\ : std_logic;
SIGNAL \saida[18]~output_o\ : std_logic;
SIGNAL \saida[19]~output_o\ : std_logic;
SIGNAL \saida[20]~output_o\ : std_logic;
SIGNAL \saida[21]~output_o\ : std_logic;
SIGNAL \saida[22]~output_o\ : std_logic;
SIGNAL \saida[23]~output_o\ : std_logic;
SIGNAL \saida[24]~output_o\ : std_logic;
SIGNAL \saida[25]~output_o\ : std_logic;
SIGNAL \saida[26]~output_o\ : std_logic;
SIGNAL \saida[27]~output_o\ : std_logic;
SIGNAL \saida[28]~output_o\ : std_logic;
SIGNAL \saida[29]~output_o\ : std_logic;
SIGNAL \saida[30]~output_o\ : std_logic;
SIGNAL \saida[31]~output_o\ : std_logic;
SIGNAL \flagZero~output_o\ : std_logic;
SIGNAL \inverteB~input_o\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \entradaB[1]~input_o\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \entradaB[0]~input_o\ : std_logic;
SIGNAL \ULA2|Somador|cOut~combout\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \entradaB[2]~input_o\ : std_logic;
SIGNAL \ULA3|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[3]~input_o\ : std_logic;
SIGNAL \entradaB[3]~input_o\ : std_logic;
SIGNAL \ULA4|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[4]~input_o\ : std_logic;
SIGNAL \entradaB[4]~input_o\ : std_logic;
SIGNAL \ULA5|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA5|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA5|Somador|cOut~1_combout\ : std_logic;
SIGNAL \entradaA[5]~input_o\ : std_logic;
SIGNAL \entradaB[5]~input_o\ : std_logic;
SIGNAL \ULA6|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[6]~input_o\ : std_logic;
SIGNAL \entradaB[6]~input_o\ : std_logic;
SIGNAL \ULA7|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA7|Somador|cOut~combout\ : std_logic;
SIGNAL \entradaA[7]~input_o\ : std_logic;
SIGNAL \entradaB[7]~input_o\ : std_logic;
SIGNAL \ULA8|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[8]~input_o\ : std_logic;
SIGNAL \entradaB[8]~input_o\ : std_logic;
SIGNAL \ULA9|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[9]~input_o\ : std_logic;
SIGNAL \entradaB[9]~input_o\ : std_logic;
SIGNAL \ULA10|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA10|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA10|Somador|cOut~1_combout\ : std_logic;
SIGNAL \entradaA[10]~input_o\ : std_logic;
SIGNAL \entradaB[10]~input_o\ : std_logic;
SIGNAL \ULA11|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[11]~input_o\ : std_logic;
SIGNAL \entradaB[11]~input_o\ : std_logic;
SIGNAL \ULA12|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA12|Somador|cOut~combout\ : std_logic;
SIGNAL \entradaA[12]~input_o\ : std_logic;
SIGNAL \entradaB[12]~input_o\ : std_logic;
SIGNAL \ULA13|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[13]~input_o\ : std_logic;
SIGNAL \entradaB[13]~input_o\ : std_logic;
SIGNAL \ULA14|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[14]~input_o\ : std_logic;
SIGNAL \entradaB[14]~input_o\ : std_logic;
SIGNAL \ULA15|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA15|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA15|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA15|Somador|cOut~1_combout\ : std_logic;
SIGNAL \entradaA[15]~input_o\ : std_logic;
SIGNAL \entradaB[15]~input_o\ : std_logic;
SIGNAL \ULA16|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[16]~input_o\ : std_logic;
SIGNAL \entradaB[16]~input_o\ : std_logic;
SIGNAL \ULA17|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA17|Somador|cOut~combout\ : std_logic;
SIGNAL \entradaA[17]~input_o\ : std_logic;
SIGNAL \entradaB[17]~input_o\ : std_logic;
SIGNAL \ULA18|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[18]~input_o\ : std_logic;
SIGNAL \entradaB[18]~input_o\ : std_logic;
SIGNAL \ULA19|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[19]~input_o\ : std_logic;
SIGNAL \entradaB[19]~input_o\ : std_logic;
SIGNAL \ULA20|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA20|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA20|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA20|Somador|cOut~1_combout\ : std_logic;
SIGNAL \entradaA[20]~input_o\ : std_logic;
SIGNAL \entradaB[20]~input_o\ : std_logic;
SIGNAL \ULA21|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[21]~input_o\ : std_logic;
SIGNAL \entradaB[21]~input_o\ : std_logic;
SIGNAL \ULA22|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA22|Somador|cOut~combout\ : std_logic;
SIGNAL \entradaA[22]~input_o\ : std_logic;
SIGNAL \entradaB[22]~input_o\ : std_logic;
SIGNAL \ULA23|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[23]~input_o\ : std_logic;
SIGNAL \entradaB[23]~input_o\ : std_logic;
SIGNAL \ULA24|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[24]~input_o\ : std_logic;
SIGNAL \entradaB[24]~input_o\ : std_logic;
SIGNAL \ULA25|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA25|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA25|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA25|Somador|cOut~1_combout\ : std_logic;
SIGNAL \entradaA[25]~input_o\ : std_logic;
SIGNAL \entradaB[25]~input_o\ : std_logic;
SIGNAL \ULA26|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[26]~input_o\ : std_logic;
SIGNAL \entradaB[26]~input_o\ : std_logic;
SIGNAL \ULA27|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA27|Somador|cOut~combout\ : std_logic;
SIGNAL \entradaA[27]~input_o\ : std_logic;
SIGNAL \entradaB[27]~input_o\ : std_logic;
SIGNAL \ULA28|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[28]~input_o\ : std_logic;
SIGNAL \entradaB[28]~input_o\ : std_logic;
SIGNAL \ULA29|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[29]~input_o\ : std_logic;
SIGNAL \entradaB[29]~input_o\ : std_logic;
SIGNAL \ULA30|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA30|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA30|Somador|cOut~1_combout\ : std_logic;
SIGNAL \entradaA[30]~input_o\ : std_logic;
SIGNAL \entradaB[30]~input_o\ : std_logic;
SIGNAL \ULA31|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \entradaA[31]~input_o\ : std_logic;
SIGNAL \seletor[1]~input_o\ : std_logic;
SIGNAL \seletor[0]~input_o\ : std_logic;
SIGNAL \entradaB[31]~input_o\ : std_logic;
SIGNAL \ULA32|InverterOuNao|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA1|MuxOperacao|MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA1|MuxOperacao|MUX_OUT[0]~2_combout\ : std_logic;
SIGNAL \ULA1|MuxOperacao|MUX_OUT[0]~3_combout\ : std_logic;
SIGNAL \ULA1|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA2|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA3|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA4|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA4|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA4|MuxOperacao|MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA4|Somador|cOut~combout\ : std_logic;
SIGNAL \ULA5|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA6|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA6|Somador|cOut~combout\ : std_logic;
SIGNAL \ULA7|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA8|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA9|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA9|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA9|MuxOperacao|MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA9|Somador|cOut~combout\ : std_logic;
SIGNAL \ULA10|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA11|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA11|Somador|cOut~combout\ : std_logic;
SIGNAL \ULA12|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA13|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA14|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA14|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA14|MuxOperacao|MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA14|Somador|cOut~combout\ : std_logic;
SIGNAL \ULA15|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA16|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA16|Somador|cOut~combout\ : std_logic;
SIGNAL \ULA17|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA18|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA19|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA19|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA19|MuxOperacao|MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA19|Somador|cOut~combout\ : std_logic;
SIGNAL \ULA20|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA21|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA21|Somador|cOut~combout\ : std_logic;
SIGNAL \ULA22|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA23|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA24|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA24|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA24|MuxOperacao|MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA24|Somador|cOut~combout\ : std_logic;
SIGNAL \ULA25|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA26|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA26|Somador|cOut~combout\ : std_logic;
SIGNAL \ULA27|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA28|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA29|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA29|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA29|MuxOperacao|MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA29|Somador|cOut~combout\ : std_logic;
SIGNAL \ULA30|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA31|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA32|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA32|MuxOperacao|MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA32|MuxOperacao|MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA32|MuxOperacao|MUX_OUT[0]~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \ULA30|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA29|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA28|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA27|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA27|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA26|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA25|Somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA25|Somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA25|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA25|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA24|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA23|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA22|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA22|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA21|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA20|Somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA20|Somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA20|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA20|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA19|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA18|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA17|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA17|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA16|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA15|Somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA15|Somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA15|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA15|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA14|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA13|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA12|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA12|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA11|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA10|Somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA10|Somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA10|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA9|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA8|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA7|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA7|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA6|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA5|Somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA5|Somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA5|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA4|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA3|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA2|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ALT_INV_entradaB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_seletor[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_seletor[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inverteB~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ULA32|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA32|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA32|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA31|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA30|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA29|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA29|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA29|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA29|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA28|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA27|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA26|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA26|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA25|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA24|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA24|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA24|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA24|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA23|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA22|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA21|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA21|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA20|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA19|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA19|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA19|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA19|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA18|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA17|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA16|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA16|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA15|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA14|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA14|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA14|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA14|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA13|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA12|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA11|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA11|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA10|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA9|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA9|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA9|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA9|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA8|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA7|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA6|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA6|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA5|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA4|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA4|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA4|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA2|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA4|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA3|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA2|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA1|MuxOperacao|ALT_INV_MUX_OUT[0]~3_combout\ : std_logic;
SIGNAL \ULA1|MuxOperacao|ALT_INV_MUX_OUT[0]~2_combout\ : std_logic;
SIGNAL \ULA1|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ : std_logic;
SIGNAL \ULA1|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ : std_logic;
SIGNAL \ULA32|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA31|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA30|Somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA30|Somador|ALT_INV_cOut~0_combout\ : std_logic;

BEGIN

ww_entradaA <= entradaA;
ww_entradaB <= entradaB;
ww_seletor <= seletor;
ww_inverteB <= inverteB;
saida <= ww_saida;
flagZero <= ww_flagZero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA30|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA30|Somador|saida~0_combout\;
\ULA29|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA29|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA28|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA28|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA27|Somador|ALT_INV_cOut~combout\ <= NOT \ULA27|Somador|cOut~combout\;
\ULA27|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA27|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA26|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA26|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA25|Somador|ALT_INV_cOut~1_combout\ <= NOT \ULA25|Somador|cOut~1_combout\;
\ULA25|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA25|Somador|cOut~0_combout\;
\ULA25|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA25|Somador|saida~0_combout\;
\ULA25|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA25|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA24|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA24|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA23|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA23|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA22|Somador|ALT_INV_cOut~combout\ <= NOT \ULA22|Somador|cOut~combout\;
\ULA22|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA22|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA21|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA21|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA20|Somador|ALT_INV_cOut~1_combout\ <= NOT \ULA20|Somador|cOut~1_combout\;
\ULA20|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA20|Somador|cOut~0_combout\;
\ULA20|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA20|Somador|saida~0_combout\;
\ULA20|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA20|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA19|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA19|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA18|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA18|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA17|Somador|ALT_INV_cOut~combout\ <= NOT \ULA17|Somador|cOut~combout\;
\ULA17|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA17|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA16|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA16|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA15|Somador|ALT_INV_cOut~1_combout\ <= NOT \ULA15|Somador|cOut~1_combout\;
\ULA15|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA15|Somador|cOut~0_combout\;
\ULA15|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA15|Somador|saida~0_combout\;
\ULA15|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA15|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA14|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA14|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA13|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA13|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA12|Somador|ALT_INV_cOut~combout\ <= NOT \ULA12|Somador|cOut~combout\;
\ULA12|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA12|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA11|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA11|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA10|Somador|ALT_INV_cOut~1_combout\ <= NOT \ULA10|Somador|cOut~1_combout\;
\ULA10|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA10|Somador|cOut~0_combout\;
\ULA10|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA10|Somador|saida~0_combout\;
\ULA9|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA9|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA8|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA8|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA7|Somador|ALT_INV_cOut~combout\ <= NOT \ULA7|Somador|cOut~combout\;
\ULA7|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA7|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA6|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA6|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA5|Somador|ALT_INV_cOut~1_combout\ <= NOT \ULA5|Somador|cOut~1_combout\;
\ULA5|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA5|Somador|cOut~0_combout\;
\ULA5|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA5|Somador|saida~0_combout\;
\ULA4|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA4|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA3|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA3|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA2|Somador|ALT_INV_cOut~combout\ <= NOT \ULA2|Somador|cOut~combout\;
\ALT_INV_entradaB[31]~input_o\ <= NOT \entradaB[31]~input_o\;
\ALT_INV_seletor[0]~input_o\ <= NOT \seletor[0]~input_o\;
\ALT_INV_seletor[1]~input_o\ <= NOT \seletor[1]~input_o\;
\ALT_INV_entradaA[31]~input_o\ <= NOT \entradaA[31]~input_o\;
\ALT_INV_entradaB[30]~input_o\ <= NOT \entradaB[30]~input_o\;
\ALT_INV_entradaA[30]~input_o\ <= NOT \entradaA[30]~input_o\;
\ALT_INV_entradaB[29]~input_o\ <= NOT \entradaB[29]~input_o\;
\ALT_INV_entradaA[29]~input_o\ <= NOT \entradaA[29]~input_o\;
\ALT_INV_entradaB[28]~input_o\ <= NOT \entradaB[28]~input_o\;
\ALT_INV_entradaA[28]~input_o\ <= NOT \entradaA[28]~input_o\;
\ALT_INV_entradaB[27]~input_o\ <= NOT \entradaB[27]~input_o\;
\ALT_INV_entradaA[27]~input_o\ <= NOT \entradaA[27]~input_o\;
\ALT_INV_entradaB[26]~input_o\ <= NOT \entradaB[26]~input_o\;
\ALT_INV_entradaA[26]~input_o\ <= NOT \entradaA[26]~input_o\;
\ALT_INV_entradaB[25]~input_o\ <= NOT \entradaB[25]~input_o\;
\ALT_INV_entradaA[25]~input_o\ <= NOT \entradaA[25]~input_o\;
\ALT_INV_entradaB[24]~input_o\ <= NOT \entradaB[24]~input_o\;
\ALT_INV_entradaA[24]~input_o\ <= NOT \entradaA[24]~input_o\;
\ALT_INV_entradaB[23]~input_o\ <= NOT \entradaB[23]~input_o\;
\ALT_INV_entradaA[23]~input_o\ <= NOT \entradaA[23]~input_o\;
\ALT_INV_entradaB[22]~input_o\ <= NOT \entradaB[22]~input_o\;
\ALT_INV_entradaA[22]~input_o\ <= NOT \entradaA[22]~input_o\;
\ALT_INV_entradaB[21]~input_o\ <= NOT \entradaB[21]~input_o\;
\ALT_INV_entradaA[21]~input_o\ <= NOT \entradaA[21]~input_o\;
\ALT_INV_entradaB[20]~input_o\ <= NOT \entradaB[20]~input_o\;
\ALT_INV_entradaA[20]~input_o\ <= NOT \entradaA[20]~input_o\;
\ALT_INV_entradaB[19]~input_o\ <= NOT \entradaB[19]~input_o\;
\ALT_INV_entradaA[19]~input_o\ <= NOT \entradaA[19]~input_o\;
\ALT_INV_entradaB[18]~input_o\ <= NOT \entradaB[18]~input_o\;
\ALT_INV_entradaA[18]~input_o\ <= NOT \entradaA[18]~input_o\;
\ALT_INV_entradaB[17]~input_o\ <= NOT \entradaB[17]~input_o\;
\ALT_INV_entradaA[17]~input_o\ <= NOT \entradaA[17]~input_o\;
\ALT_INV_entradaB[16]~input_o\ <= NOT \entradaB[16]~input_o\;
\ALT_INV_entradaA[16]~input_o\ <= NOT \entradaA[16]~input_o\;
\ALT_INV_entradaB[15]~input_o\ <= NOT \entradaB[15]~input_o\;
\ALT_INV_entradaA[15]~input_o\ <= NOT \entradaA[15]~input_o\;
\ALT_INV_entradaB[14]~input_o\ <= NOT \entradaB[14]~input_o\;
\ALT_INV_entradaA[14]~input_o\ <= NOT \entradaA[14]~input_o\;
\ALT_INV_entradaB[13]~input_o\ <= NOT \entradaB[13]~input_o\;
\ALT_INV_entradaA[13]~input_o\ <= NOT \entradaA[13]~input_o\;
\ALT_INV_entradaB[12]~input_o\ <= NOT \entradaB[12]~input_o\;
\ALT_INV_entradaA[12]~input_o\ <= NOT \entradaA[12]~input_o\;
\ALT_INV_entradaB[11]~input_o\ <= NOT \entradaB[11]~input_o\;
\ALT_INV_entradaA[11]~input_o\ <= NOT \entradaA[11]~input_o\;
\ALT_INV_entradaB[10]~input_o\ <= NOT \entradaB[10]~input_o\;
\ALT_INV_entradaA[10]~input_o\ <= NOT \entradaA[10]~input_o\;
\ALT_INV_entradaB[9]~input_o\ <= NOT \entradaB[9]~input_o\;
\ALT_INV_entradaA[9]~input_o\ <= NOT \entradaA[9]~input_o\;
\ALT_INV_entradaB[8]~input_o\ <= NOT \entradaB[8]~input_o\;
\ALT_INV_entradaA[8]~input_o\ <= NOT \entradaA[8]~input_o\;
\ALT_INV_entradaB[7]~input_o\ <= NOT \entradaB[7]~input_o\;
\ALT_INV_entradaA[7]~input_o\ <= NOT \entradaA[7]~input_o\;
\ALT_INV_entradaB[6]~input_o\ <= NOT \entradaB[6]~input_o\;
\ALT_INV_entradaA[6]~input_o\ <= NOT \entradaA[6]~input_o\;
\ALT_INV_entradaB[5]~input_o\ <= NOT \entradaB[5]~input_o\;
\ALT_INV_entradaA[5]~input_o\ <= NOT \entradaA[5]~input_o\;
\ALT_INV_entradaB[4]~input_o\ <= NOT \entradaB[4]~input_o\;
\ALT_INV_entradaA[4]~input_o\ <= NOT \entradaA[4]~input_o\;
\ALT_INV_entradaB[3]~input_o\ <= NOT \entradaB[3]~input_o\;
\ALT_INV_entradaA[3]~input_o\ <= NOT \entradaA[3]~input_o\;
\ALT_INV_entradaB[2]~input_o\ <= NOT \entradaB[2]~input_o\;
\ALT_INV_entradaA[2]~input_o\ <= NOT \entradaA[2]~input_o\;
\ALT_INV_entradaB[0]~input_o\ <= NOT \entradaB[0]~input_o\;
\ALT_INV_entradaA[0]~input_o\ <= NOT \entradaA[0]~input_o\;
\ALT_INV_entradaB[1]~input_o\ <= NOT \entradaB[1]~input_o\;
\ALT_INV_entradaA[1]~input_o\ <= NOT \entradaA[1]~input_o\;
\ALT_INV_inverteB~input_o\ <= NOT \inverteB~input_o\;
\ALT_INV_Equal0~7_combout\ <= NOT \Equal0~7_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ULA32|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ <= NOT \ULA32|MuxOperacao|MUX_OUT[0]~1_combout\;
\ULA32|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA32|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA32|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA32|Somador|saida~0_combout\;
\ULA31|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA31|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA30|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA30|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA29|Somador|ALT_INV_cOut~combout\ <= NOT \ULA29|Somador|cOut~combout\;
\ULA29|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ <= NOT \ULA29|MuxOperacao|MUX_OUT[0]~1_combout\;
\ULA29|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA29|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA29|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA29|Somador|saida~0_combout\;
\ULA28|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA28|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA27|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA27|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA26|Somador|ALT_INV_cOut~combout\ <= NOT \ULA26|Somador|cOut~combout\;
\ULA26|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA26|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA25|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA25|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA24|Somador|ALT_INV_cOut~combout\ <= NOT \ULA24|Somador|cOut~combout\;
\ULA24|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ <= NOT \ULA24|MuxOperacao|MUX_OUT[0]~1_combout\;
\ULA24|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA24|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA24|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA24|Somador|saida~0_combout\;
\ULA23|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA23|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA22|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA22|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA21|Somador|ALT_INV_cOut~combout\ <= NOT \ULA21|Somador|cOut~combout\;
\ULA21|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA21|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA20|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA20|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA19|Somador|ALT_INV_cOut~combout\ <= NOT \ULA19|Somador|cOut~combout\;
\ULA19|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ <= NOT \ULA19|MuxOperacao|MUX_OUT[0]~1_combout\;
\ULA19|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA19|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA19|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA19|Somador|saida~0_combout\;
\ULA18|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA18|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA17|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA17|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA16|Somador|ALT_INV_cOut~combout\ <= NOT \ULA16|Somador|cOut~combout\;
\ULA16|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA16|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA15|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA15|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA14|Somador|ALT_INV_cOut~combout\ <= NOT \ULA14|Somador|cOut~combout\;
\ULA14|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ <= NOT \ULA14|MuxOperacao|MUX_OUT[0]~1_combout\;
\ULA14|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA14|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA14|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA14|Somador|saida~0_combout\;
\ULA13|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA13|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA12|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA12|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA11|Somador|ALT_INV_cOut~combout\ <= NOT \ULA11|Somador|cOut~combout\;
\ULA11|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA11|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA10|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA10|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA9|Somador|ALT_INV_cOut~combout\ <= NOT \ULA9|Somador|cOut~combout\;
\ULA9|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ <= NOT \ULA9|MuxOperacao|MUX_OUT[0]~1_combout\;
\ULA9|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA9|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA9|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA9|Somador|saida~0_combout\;
\ULA8|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA8|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA7|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA7|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA6|Somador|ALT_INV_cOut~combout\ <= NOT \ULA6|Somador|cOut~combout\;
\ULA6|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA6|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA5|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA5|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA4|Somador|ALT_INV_cOut~combout\ <= NOT \ULA4|Somador|cOut~combout\;
\ULA4|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ <= NOT \ULA4|MuxOperacao|MUX_OUT[0]~1_combout\;
\ULA4|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA4|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA2|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ <= NOT \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\;
\ULA4|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA4|Somador|saida~0_combout\;
\ULA3|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA3|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA2|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA2|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA1|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA1|Somador|cOut~0_combout\;
\ULA1|MuxOperacao|ALT_INV_MUX_OUT[0]~3_combout\ <= NOT \ULA1|MuxOperacao|MUX_OUT[0]~3_combout\;
\ULA1|MuxOperacao|ALT_INV_MUX_OUT[0]~2_combout\ <= NOT \ULA1|MuxOperacao|MUX_OUT[0]~2_combout\;
\ULA1|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\ <= NOT \ULA1|MuxOperacao|MUX_OUT[0]~1_combout\;
\ULA1|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\ <= NOT \ULA1|MuxOperacao|MUX_OUT[0]~0_combout\;
\ULA32|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA32|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA31|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \ULA31|InverterOuNao|saida_MUX[0]~0_combout\;
\ULA30|Somador|ALT_INV_cOut~1_combout\ <= NOT \ULA30|Somador|cOut~1_combout\;
\ULA30|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA30|Somador|cOut~0_combout\;

\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|MuxOperacao|MUX_OUT[0]~3_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA2|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA3|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA4|MuxOperacao|MUX_OUT[0]~1_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA5|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA6|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA7|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA8|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA9|MuxOperacao|MUX_OUT[0]~1_combout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA10|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA11|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA12|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA13|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA14|MuxOperacao|MUX_OUT[0]~1_combout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA15|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA16|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

\saida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA17|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[16]~output_o\);

\saida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA18|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[17]~output_o\);

\saida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA19|MuxOperacao|MUX_OUT[0]~1_combout\,
	devoe => ww_devoe,
	o => \saida[18]~output_o\);

\saida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA20|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[19]~output_o\);

\saida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA21|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[20]~output_o\);

\saida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA22|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[21]~output_o\);

\saida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA23|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[22]~output_o\);

\saida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA24|MuxOperacao|MUX_OUT[0]~1_combout\,
	devoe => ww_devoe,
	o => \saida[23]~output_o\);

\saida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA25|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[24]~output_o\);

\saida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA26|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[25]~output_o\);

\saida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA27|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[26]~output_o\);

\saida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA28|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[27]~output_o\);

\saida[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA29|MuxOperacao|MUX_OUT[0]~1_combout\,
	devoe => ww_devoe,
	o => \saida[28]~output_o\);

\saida[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA30|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[29]~output_o\);

\saida[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA31|MuxOperacao|MUX_OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \saida[30]~output_o\);

\saida[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA32|MuxOperacao|MUX_OUT[0]~2_combout\,
	devoe => ww_devoe,
	o => \saida[31]~output_o\);

\flagZero~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~8_combout\,
	devoe => ww_devoe,
	o => \flagZero~output_o\);

\inverteB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inverteB,
	o => \inverteB~input_o\);

\entradaA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

\entradaB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(1),
	o => \entradaB[1]~input_o\);

\entradaA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

\entradaB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(0),
	o => \entradaB[0]~input_o\);

\ULA2|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|Somador|cOut~combout\ = ( \entradaB[0]~input_o\ & ( (!\entradaA[1]~input_o\ & (\entradaA[0]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[1]~input_o\)))) # (\entradaA[1]~input_o\ & ((!\inverteB~input_o\ $ (!\entradaB[1]~input_o\)) # 
-- (\entradaA[0]~input_o\))) ) ) # ( !\entradaB[0]~input_o\ & ( (!\entradaB[1]~input_o\ & (\inverteB~input_o\)) # (\entradaB[1]~input_o\ & ((\entradaA[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000100100111101101010011010100110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[1]~input_o\,
	datac => \ALT_INV_entradaB[1]~input_o\,
	datad => \ALT_INV_entradaA[0]~input_o\,
	datae => \ALT_INV_entradaB[0]~input_o\,
	combout => \ULA2|Somador|cOut~combout\);

\entradaA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

\entradaB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(2),
	o => \entradaB[2]~input_o\);

\ULA3|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[2]~input_o\,
	combout => \ULA3|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(3),
	o => \entradaA[3]~input_o\);

\entradaB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(3),
	o => \entradaB[3]~input_o\);

\ULA4|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[3]~input_o\,
	combout => \ULA4|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(4),
	o => \entradaA[4]~input_o\);

\entradaB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(4),
	o => \entradaB[4]~input_o\);

\ULA5|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|Somador|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaA[4]~input_o\ $ (\entradaB[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[4]~input_o\,
	datac => \ALT_INV_entradaB[4]~input_o\,
	combout => \ULA5|Somador|saida~0_combout\);

\ULA5|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|Somador|cOut~0_combout\ = ( \ULA4|InverterOuNao|saida_MUX[0]~0_combout\ & ( \ULA5|Somador|saida~0_combout\ & ( ((!\ULA2|Somador|cOut~combout\ & (\entradaA[2]~input_o\ & \ULA3|InverterOuNao|saida_MUX[0]~0_combout\)) # (\ULA2|Somador|cOut~combout\ & 
-- ((\ULA3|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[2]~input_o\)))) # (\entradaA[3]~input_o\) ) ) ) # ( !\ULA4|InverterOuNao|saida_MUX[0]~0_combout\ & ( \ULA5|Somador|saida~0_combout\ & ( (\entradaA[3]~input_o\ & ((!\ULA2|Somador|cOut~combout\ & 
-- (\entradaA[2]~input_o\ & \ULA3|InverterOuNao|saida_MUX[0]~0_combout\)) # (\ULA2|Somador|cOut~combout\ & ((\ULA3|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA2|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[2]~input_o\,
	datac => \ULA3|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_entradaA[3]~input_o\,
	datae => \ULA4|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \ULA5|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA5|Somador|cOut~0_combout\);

\ULA5|Somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|Somador|cOut~1_combout\ = (\entradaA[4]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[4]~input_o\,
	datac => \ALT_INV_entradaB[4]~input_o\,
	combout => \ULA5|Somador|cOut~1_combout\);

\entradaA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(5),
	o => \entradaA[5]~input_o\);

\entradaB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(5),
	o => \entradaB[5]~input_o\);

\ULA6|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[5]~input_o\,
	combout => \ULA6|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(6),
	o => \entradaA[6]~input_o\);

\entradaB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(6),
	o => \entradaB[6]~input_o\);

\ULA7|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[6]~input_o\,
	combout => \ULA7|InverterOuNao|saida_MUX[0]~0_combout\);

\ULA7|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|Somador|cOut~combout\ = ( !\entradaA[6]~input_o\ & ( \ULA7|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\entradaA[5]~input_o\ & ((!\ULA6|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA5|Somador|cOut~0_combout\ & !\ULA5|Somador|cOut~1_combout\)))) # 
-- (\entradaA[5]~input_o\ & (!\ULA5|Somador|cOut~0_combout\ & (!\ULA5|Somador|cOut~1_combout\ & !\ULA6|InverterOuNao|saida_MUX[0]~0_combout\))) ) ) ) # ( \entradaA[6]~input_o\ & ( !\ULA7|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\entradaA[5]~input_o\ & 
-- ((!\ULA6|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA5|Somador|cOut~0_combout\ & !\ULA5|Somador|cOut~1_combout\)))) # (\entradaA[5]~input_o\ & (!\ULA5|Somador|cOut~0_combout\ & (!\ULA5|Somador|cOut~1_combout\ & 
-- !\ULA6|InverterOuNao|saida_MUX[0]~0_combout\))) ) ) ) # ( !\entradaA[6]~input_o\ & ( !\ULA7|InverterOuNao|saida_MUX[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA5|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA5|Somador|ALT_INV_cOut~1_combout\,
	datac => \ALT_INV_entradaA[5]~input_o\,
	datad => \ULA6|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \ALT_INV_entradaA[6]~input_o\,
	dataf => \ULA7|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA7|Somador|cOut~combout\);

\entradaA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(7),
	o => \entradaA[7]~input_o\);

\entradaB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(7),
	o => \entradaB[7]~input_o\);

\ULA8|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[7]~input_o\,
	combout => \ULA8|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(8),
	o => \entradaA[8]~input_o\);

\entradaB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(8),
	o => \entradaB[8]~input_o\);

\ULA9|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[8]~input_o\,
	combout => \ULA9|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(9),
	o => \entradaA[9]~input_o\);

\entradaB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(9),
	o => \entradaB[9]~input_o\);

\ULA10|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|Somador|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaA[9]~input_o\ $ (\entradaB[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[9]~input_o\,
	datac => \ALT_INV_entradaB[9]~input_o\,
	combout => \ULA10|Somador|saida~0_combout\);

\ULA10|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|Somador|cOut~0_combout\ = ( \ULA9|InverterOuNao|saida_MUX[0]~0_combout\ & ( \ULA10|Somador|saida~0_combout\ & ( ((!\ULA7|Somador|cOut~combout\ & ((\ULA8|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[7]~input_o\))) # 
-- (\ULA7|Somador|cOut~combout\ & (\entradaA[7]~input_o\ & \ULA8|InverterOuNao|saida_MUX[0]~0_combout\))) # (\entradaA[8]~input_o\) ) ) ) # ( !\ULA9|InverterOuNao|saida_MUX[0]~0_combout\ & ( \ULA10|Somador|saida~0_combout\ & ( (\entradaA[8]~input_o\ & 
-- ((!\ULA7|Somador|cOut~combout\ & ((\ULA8|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[7]~input_o\))) # (\ULA7|Somador|cOut~combout\ & (\entradaA[7]~input_o\ & \ULA8|InverterOuNao|saida_MUX[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA7|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[7]~input_o\,
	datac => \ULA8|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_entradaA[8]~input_o\,
	datae => \ULA9|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \ULA10|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA10|Somador|cOut~0_combout\);

\ULA10|Somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|Somador|cOut~1_combout\ = (\entradaA[9]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[9]~input_o\,
	datac => \ALT_INV_entradaB[9]~input_o\,
	combout => \ULA10|Somador|cOut~1_combout\);

\entradaA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(10),
	o => \entradaA[10]~input_o\);

\entradaB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(10),
	o => \entradaB[10]~input_o\);

\ULA11|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[10]~input_o\,
	combout => \ULA11|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(11),
	o => \entradaA[11]~input_o\);

\entradaB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(11),
	o => \entradaB[11]~input_o\);

\ULA12|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[11]~input_o\,
	combout => \ULA12|InverterOuNao|saida_MUX[0]~0_combout\);

\ULA12|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|Somador|cOut~combout\ = ( !\entradaA[11]~input_o\ & ( \ULA12|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\entradaA[10]~input_o\ & ((!\ULA11|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA10|Somador|cOut~0_combout\ & 
-- !\ULA10|Somador|cOut~1_combout\)))) # (\entradaA[10]~input_o\ & (!\ULA10|Somador|cOut~0_combout\ & (!\ULA10|Somador|cOut~1_combout\ & !\ULA11|InverterOuNao|saida_MUX[0]~0_combout\))) ) ) ) # ( \entradaA[11]~input_o\ & ( 
-- !\ULA12|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\entradaA[10]~input_o\ & ((!\ULA11|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA10|Somador|cOut~0_combout\ & !\ULA10|Somador|cOut~1_combout\)))) # (\entradaA[10]~input_o\ & 
-- (!\ULA10|Somador|cOut~0_combout\ & (!\ULA10|Somador|cOut~1_combout\ & !\ULA11|InverterOuNao|saida_MUX[0]~0_combout\))) ) ) ) # ( !\entradaA[11]~input_o\ & ( !\ULA12|InverterOuNao|saida_MUX[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA10|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA10|Somador|ALT_INV_cOut~1_combout\,
	datac => \ALT_INV_entradaA[10]~input_o\,
	datad => \ULA11|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \ALT_INV_entradaA[11]~input_o\,
	dataf => \ULA12|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA12|Somador|cOut~combout\);

\entradaA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(12),
	o => \entradaA[12]~input_o\);

\entradaB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(12),
	o => \entradaB[12]~input_o\);

\ULA13|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[12]~input_o\,
	combout => \ULA13|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(13),
	o => \entradaA[13]~input_o\);

\entradaB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(13),
	o => \entradaB[13]~input_o\);

\ULA14|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[13]~input_o\,
	combout => \ULA14|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(14),
	o => \entradaA[14]~input_o\);

\entradaB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(14),
	o => \entradaB[14]~input_o\);

\ULA15|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[14]~input_o\,
	combout => \ULA15|InverterOuNao|saida_MUX[0]~0_combout\);

\ULA15|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|Somador|saida~0_combout\ = !\entradaA[14]~input_o\ $ (!\ULA15|InverterOuNao|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[14]~input_o\,
	datab => \ULA15|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA15|Somador|saida~0_combout\);

\ULA15|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|Somador|cOut~0_combout\ = ( \ULA14|InverterOuNao|saida_MUX[0]~0_combout\ & ( \ULA15|Somador|saida~0_combout\ & ( ((!\ULA12|Somador|cOut~combout\ & ((\ULA13|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[12]~input_o\))) # 
-- (\ULA12|Somador|cOut~combout\ & (\entradaA[12]~input_o\ & \ULA13|InverterOuNao|saida_MUX[0]~0_combout\))) # (\entradaA[13]~input_o\) ) ) ) # ( !\ULA14|InverterOuNao|saida_MUX[0]~0_combout\ & ( \ULA15|Somador|saida~0_combout\ & ( (\entradaA[13]~input_o\ & 
-- ((!\ULA12|Somador|cOut~combout\ & ((\ULA13|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[12]~input_o\))) # (\ULA12|Somador|cOut~combout\ & (\entradaA[12]~input_o\ & \ULA13|InverterOuNao|saida_MUX[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA12|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[12]~input_o\,
	datac => \ULA13|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_entradaA[13]~input_o\,
	datae => \ULA14|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \ULA15|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA15|Somador|cOut~0_combout\);

\ULA15|Somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|Somador|cOut~1_combout\ = (\entradaA[14]~input_o\ & \ULA15|InverterOuNao|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[14]~input_o\,
	datab => \ULA15|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA15|Somador|cOut~1_combout\);

\entradaA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(15),
	o => \entradaA[15]~input_o\);

\entradaB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(15),
	o => \entradaB[15]~input_o\);

\ULA16|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[15]~input_o\,
	combout => \ULA16|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(16),
	o => \entradaA[16]~input_o\);

\entradaB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(16),
	o => \entradaB[16]~input_o\);

\ULA17|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[16]~input_o\,
	combout => \ULA17|InverterOuNao|saida_MUX[0]~0_combout\);

\ULA17|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|Somador|cOut~combout\ = ( !\entradaA[16]~input_o\ & ( \ULA17|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\entradaA[15]~input_o\ & ((!\ULA16|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA15|Somador|cOut~0_combout\ & 
-- !\ULA15|Somador|cOut~1_combout\)))) # (\entradaA[15]~input_o\ & (!\ULA15|Somador|cOut~0_combout\ & (!\ULA15|Somador|cOut~1_combout\ & !\ULA16|InverterOuNao|saida_MUX[0]~0_combout\))) ) ) ) # ( \entradaA[16]~input_o\ & ( 
-- !\ULA17|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\entradaA[15]~input_o\ & ((!\ULA16|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA15|Somador|cOut~0_combout\ & !\ULA15|Somador|cOut~1_combout\)))) # (\entradaA[15]~input_o\ & 
-- (!\ULA15|Somador|cOut~0_combout\ & (!\ULA15|Somador|cOut~1_combout\ & !\ULA16|InverterOuNao|saida_MUX[0]~0_combout\))) ) ) ) # ( !\entradaA[16]~input_o\ & ( !\ULA17|InverterOuNao|saida_MUX[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA15|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA15|Somador|ALT_INV_cOut~1_combout\,
	datac => \ALT_INV_entradaA[15]~input_o\,
	datad => \ULA16|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \ALT_INV_entradaA[16]~input_o\,
	dataf => \ULA17|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA17|Somador|cOut~combout\);

\entradaA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(17),
	o => \entradaA[17]~input_o\);

\entradaB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(17),
	o => \entradaB[17]~input_o\);

\ULA18|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[17]~input_o\,
	combout => \ULA18|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(18),
	o => \entradaA[18]~input_o\);

\entradaB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(18),
	o => \entradaB[18]~input_o\);

\ULA19|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[18]~input_o\,
	combout => \ULA19|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(19),
	o => \entradaA[19]~input_o\);

\entradaB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(19),
	o => \entradaB[19]~input_o\);

\ULA20|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[19]~input_o\,
	combout => \ULA20|InverterOuNao|saida_MUX[0]~0_combout\);

\ULA20|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|Somador|saida~0_combout\ = !\entradaA[19]~input_o\ $ (!\ULA20|InverterOuNao|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[19]~input_o\,
	datab => \ULA20|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA20|Somador|saida~0_combout\);

\ULA20|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|Somador|cOut~0_combout\ = ( \ULA19|InverterOuNao|saida_MUX[0]~0_combout\ & ( \ULA20|Somador|saida~0_combout\ & ( ((!\ULA17|Somador|cOut~combout\ & ((\ULA18|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[17]~input_o\))) # 
-- (\ULA17|Somador|cOut~combout\ & (\entradaA[17]~input_o\ & \ULA18|InverterOuNao|saida_MUX[0]~0_combout\))) # (\entradaA[18]~input_o\) ) ) ) # ( !\ULA19|InverterOuNao|saida_MUX[0]~0_combout\ & ( \ULA20|Somador|saida~0_combout\ & ( (\entradaA[18]~input_o\ & 
-- ((!\ULA17|Somador|cOut~combout\ & ((\ULA18|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[17]~input_o\))) # (\ULA17|Somador|cOut~combout\ & (\entradaA[17]~input_o\ & \ULA18|InverterOuNao|saida_MUX[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA17|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[17]~input_o\,
	datac => \ULA18|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_entradaA[18]~input_o\,
	datae => \ULA19|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \ULA20|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA20|Somador|cOut~0_combout\);

\ULA20|Somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|Somador|cOut~1_combout\ = (\entradaA[19]~input_o\ & \ULA20|InverterOuNao|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[19]~input_o\,
	datab => \ULA20|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA20|Somador|cOut~1_combout\);

\entradaA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(20),
	o => \entradaA[20]~input_o\);

\entradaB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(20),
	o => \entradaB[20]~input_o\);

\ULA21|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[20]~input_o\,
	combout => \ULA21|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(21),
	o => \entradaA[21]~input_o\);

\entradaB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(21),
	o => \entradaB[21]~input_o\);

\ULA22|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[21]~input_o\,
	combout => \ULA22|InverterOuNao|saida_MUX[0]~0_combout\);

\ULA22|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|Somador|cOut~combout\ = ( !\entradaA[21]~input_o\ & ( \ULA22|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\entradaA[20]~input_o\ & ((!\ULA21|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA20|Somador|cOut~0_combout\ & 
-- !\ULA20|Somador|cOut~1_combout\)))) # (\entradaA[20]~input_o\ & (!\ULA20|Somador|cOut~0_combout\ & (!\ULA20|Somador|cOut~1_combout\ & !\ULA21|InverterOuNao|saida_MUX[0]~0_combout\))) ) ) ) # ( \entradaA[21]~input_o\ & ( 
-- !\ULA22|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\entradaA[20]~input_o\ & ((!\ULA21|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA20|Somador|cOut~0_combout\ & !\ULA20|Somador|cOut~1_combout\)))) # (\entradaA[20]~input_o\ & 
-- (!\ULA20|Somador|cOut~0_combout\ & (!\ULA20|Somador|cOut~1_combout\ & !\ULA21|InverterOuNao|saida_MUX[0]~0_combout\))) ) ) ) # ( !\entradaA[21]~input_o\ & ( !\ULA22|InverterOuNao|saida_MUX[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA20|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA20|Somador|ALT_INV_cOut~1_combout\,
	datac => \ALT_INV_entradaA[20]~input_o\,
	datad => \ULA21|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \ALT_INV_entradaA[21]~input_o\,
	dataf => \ULA22|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA22|Somador|cOut~combout\);

\entradaA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(22),
	o => \entradaA[22]~input_o\);

\entradaB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(22),
	o => \entradaB[22]~input_o\);

\ULA23|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[22]~input_o\,
	combout => \ULA23|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(23),
	o => \entradaA[23]~input_o\);

\entradaB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(23),
	o => \entradaB[23]~input_o\);

\ULA24|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[23]~input_o\,
	combout => \ULA24|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(24),
	o => \entradaA[24]~input_o\);

\entradaB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(24),
	o => \entradaB[24]~input_o\);

\ULA25|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[24]~input_o\,
	combout => \ULA25|InverterOuNao|saida_MUX[0]~0_combout\);

\ULA25|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|Somador|saida~0_combout\ = !\entradaA[24]~input_o\ $ (!\ULA25|InverterOuNao|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[24]~input_o\,
	datab => \ULA25|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA25|Somador|saida~0_combout\);

\ULA25|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|Somador|cOut~0_combout\ = ( \ULA24|InverterOuNao|saida_MUX[0]~0_combout\ & ( \ULA25|Somador|saida~0_combout\ & ( ((!\ULA22|Somador|cOut~combout\ & ((\ULA23|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[22]~input_o\))) # 
-- (\ULA22|Somador|cOut~combout\ & (\entradaA[22]~input_o\ & \ULA23|InverterOuNao|saida_MUX[0]~0_combout\))) # (\entradaA[23]~input_o\) ) ) ) # ( !\ULA24|InverterOuNao|saida_MUX[0]~0_combout\ & ( \ULA25|Somador|saida~0_combout\ & ( (\entradaA[23]~input_o\ & 
-- ((!\ULA22|Somador|cOut~combout\ & ((\ULA23|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[22]~input_o\))) # (\ULA22|Somador|cOut~combout\ & (\entradaA[22]~input_o\ & \ULA23|InverterOuNao|saida_MUX[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA22|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[22]~input_o\,
	datac => \ULA23|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_entradaA[23]~input_o\,
	datae => \ULA24|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \ULA25|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA25|Somador|cOut~0_combout\);

\ULA25|Somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|Somador|cOut~1_combout\ = (\entradaA[24]~input_o\ & \ULA25|InverterOuNao|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[24]~input_o\,
	datab => \ULA25|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA25|Somador|cOut~1_combout\);

\entradaA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(25),
	o => \entradaA[25]~input_o\);

\entradaB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(25),
	o => \entradaB[25]~input_o\);

\ULA26|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[25]~input_o\,
	combout => \ULA26|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(26),
	o => \entradaA[26]~input_o\);

\entradaB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(26),
	o => \entradaB[26]~input_o\);

\ULA27|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[26]~input_o\,
	combout => \ULA27|InverterOuNao|saida_MUX[0]~0_combout\);

\ULA27|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|Somador|cOut~combout\ = ( !\entradaA[26]~input_o\ & ( \ULA27|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\entradaA[25]~input_o\ & ((!\ULA26|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA25|Somador|cOut~0_combout\ & 
-- !\ULA25|Somador|cOut~1_combout\)))) # (\entradaA[25]~input_o\ & (!\ULA25|Somador|cOut~0_combout\ & (!\ULA25|Somador|cOut~1_combout\ & !\ULA26|InverterOuNao|saida_MUX[0]~0_combout\))) ) ) ) # ( \entradaA[26]~input_o\ & ( 
-- !\ULA27|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\entradaA[25]~input_o\ & ((!\ULA26|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA25|Somador|cOut~0_combout\ & !\ULA25|Somador|cOut~1_combout\)))) # (\entradaA[25]~input_o\ & 
-- (!\ULA25|Somador|cOut~0_combout\ & (!\ULA25|Somador|cOut~1_combout\ & !\ULA26|InverterOuNao|saida_MUX[0]~0_combout\))) ) ) ) # ( !\entradaA[26]~input_o\ & ( !\ULA27|InverterOuNao|saida_MUX[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA25|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA25|Somador|ALT_INV_cOut~1_combout\,
	datac => \ALT_INV_entradaA[25]~input_o\,
	datad => \ULA26|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \ALT_INV_entradaA[26]~input_o\,
	dataf => \ULA27|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA27|Somador|cOut~combout\);

\entradaA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(27),
	o => \entradaA[27]~input_o\);

\entradaB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(27),
	o => \entradaB[27]~input_o\);

\ULA28|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[27]~input_o\,
	combout => \ULA28|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(28),
	o => \entradaA[28]~input_o\);

\entradaB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(28),
	o => \entradaB[28]~input_o\);

\ULA29|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[28]~input_o\,
	combout => \ULA29|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(29),
	o => \entradaA[29]~input_o\);

\entradaB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(29),
	o => \entradaB[29]~input_o\);

\ULA30|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|Somador|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaA[29]~input_o\ $ (\entradaB[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[29]~input_o\,
	datac => \ALT_INV_entradaB[29]~input_o\,
	combout => \ULA30|Somador|saida~0_combout\);

\ULA30|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|Somador|cOut~0_combout\ = ( \ULA29|InverterOuNao|saida_MUX[0]~0_combout\ & ( \ULA30|Somador|saida~0_combout\ & ( ((!\ULA27|Somador|cOut~combout\ & ((\ULA28|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[27]~input_o\))) # 
-- (\ULA27|Somador|cOut~combout\ & (\entradaA[27]~input_o\ & \ULA28|InverterOuNao|saida_MUX[0]~0_combout\))) # (\entradaA[28]~input_o\) ) ) ) # ( !\ULA29|InverterOuNao|saida_MUX[0]~0_combout\ & ( \ULA30|Somador|saida~0_combout\ & ( (\entradaA[28]~input_o\ & 
-- ((!\ULA27|Somador|cOut~combout\ & ((\ULA28|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[27]~input_o\))) # (\ULA27|Somador|cOut~combout\ & (\entradaA[27]~input_o\ & \ULA28|InverterOuNao|saida_MUX[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA27|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[27]~input_o\,
	datac => \ULA28|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_entradaA[28]~input_o\,
	datae => \ULA29|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \ULA30|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA30|Somador|cOut~0_combout\);

\ULA30|Somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|Somador|cOut~1_combout\ = (\entradaA[29]~input_o\ & (!\inverteB~input_o\ $ (!\entradaB[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[29]~input_o\,
	datac => \ALT_INV_entradaB[29]~input_o\,
	combout => \ULA30|Somador|cOut~1_combout\);

\entradaA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(30),
	o => \entradaA[30]~input_o\);

\entradaB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(30),
	o => \entradaB[30]~input_o\);

\ULA31|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|InverterOuNao|saida_MUX[0]~0_combout\ = !\inverteB~input_o\ $ (!\entradaB[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaB[30]~input_o\,
	combout => \ULA31|InverterOuNao|saida_MUX[0]~0_combout\);

\entradaA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(31),
	o => \entradaA[31]~input_o\);

\seletor[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(1),
	o => \seletor[1]~input_o\);

\seletor[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(0),
	o => \seletor[0]~input_o\);

\entradaB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(31),
	o => \entradaB[31]~input_o\);

\ULA32|InverterOuNao|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA32|InverterOuNao|saida_MUX[0]~0_combout\ = !\entradaB[31]~input_o\ $ (!\inverteB~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[31]~input_o\,
	datab => \ALT_INV_inverteB~input_o\,
	combout => \ULA32|InverterOuNao|saida_MUX[0]~0_combout\);

\ULA1|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|MuxOperacao|MUX_OUT[0]~0_combout\ = (\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\ULA32|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011000000010000001100000001000000110000000100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_seletor[0]~input_o\,
	datad => \ULA32|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA1|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA1|MuxOperacao|MUX_OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|MuxOperacao|MUX_OUT[0]~1_combout\ = ( \entradaB[0]~input_o\ & ( (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (!\inverteB~input_o\ & \entradaA[0]~input_o\)) # (\seletor[0]~input_o\ & ((!\inverteB~input_o\) # (\entradaA[0]~input_o\))))) # 
-- (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & ((!\entradaA[0]~input_o\)))) ) ) # ( !\entradaB[0]~input_o\ & ( (!\seletor[0]~input_o\ & (\entradaA[0]~input_o\ & ((\inverteB~input_o\) # (\seletor[1]~input_o\)))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\ & ((\entradaA[0]~input_o\) # (\inverteB~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001101110011001001010001000000010011011100110010010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_entradaA[0]~input_o\,
	datae => \ALT_INV_entradaB[0]~input_o\,
	combout => \ULA1|MuxOperacao|MUX_OUT[0]~1_combout\);

\ULA1|MuxOperacao|MUX_OUT[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|MuxOperacao|MUX_OUT[0]~2_combout\ = ( !\ULA1|MuxOperacao|MUX_OUT[0]~1_combout\ & ( (!\entradaA[31]~input_o\) # ((!\seletor[1]~input_o\) # ((!\seletor[0]~input_o\) # (!\ULA32|InverterOuNao|saida_MUX[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111110000000000000000011111111111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_seletor[0]~input_o\,
	datad => \ULA32|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \ULA1|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	combout => \ULA1|MuxOperacao|MUX_OUT[0]~2_combout\);

\ULA1|MuxOperacao|MUX_OUT[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|MuxOperacao|MUX_OUT[0]~3_combout\ = ( \ULA1|MuxOperacao|MUX_OUT[0]~0_combout\ & ( \ULA1|MuxOperacao|MUX_OUT[0]~2_combout\ & ( (!\entradaA[30]~input_o\ & ((!\ULA31|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA30|Somador|cOut~0_combout\ & 
-- !\ULA30|Somador|cOut~1_combout\)))) # (\entradaA[30]~input_o\ & (!\ULA30|Somador|cOut~0_combout\ & (!\ULA30|Somador|cOut~1_combout\ & !\ULA31|InverterOuNao|saida_MUX[0]~0_combout\))) ) ) ) # ( \ULA1|MuxOperacao|MUX_OUT[0]~0_combout\ & ( 
-- !\ULA1|MuxOperacao|MUX_OUT[0]~2_combout\ ) ) # ( !\ULA1|MuxOperacao|MUX_OUT[0]~0_combout\ & ( !\ULA1|MuxOperacao|MUX_OUT[0]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA30|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA30|Somador|ALT_INV_cOut~1_combout\,
	datac => \ALT_INV_entradaA[30]~input_o\,
	datad => \ULA31|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \ULA1|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	dataf => \ULA1|MuxOperacao|ALT_INV_MUX_OUT[0]~2_combout\,
	combout => \ULA1|MuxOperacao|MUX_OUT[0]~3_combout\);

\ULA1|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Somador|cOut~0_combout\ = (!\entradaB[0]~input_o\ & (\inverteB~input_o\)) # (\entradaB[0]~input_o\ & ((\entradaA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[0]~input_o\,
	datac => \ALT_INV_entradaB[0]~input_o\,
	combout => \ULA1|Somador|cOut~0_combout\);

\ULA2|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \entradaB[1]~input_o\ & ( \ULA1|Somador|cOut~0_combout\ & ( (!\seletor[0]~input_o\ & ((!\inverteB~input_o\ & ((\entradaA[1]~input_o\))) # (\inverteB~input_o\ & (\seletor[1]~input_o\ & !\entradaA[1]~input_o\)))) 
-- # (\seletor[0]~input_o\ & (!\seletor[1]~input_o\ & ((!\inverteB~input_o\) # (\entradaA[1]~input_o\)))) ) ) ) # ( !\entradaB[1]~input_o\ & ( \ULA1|Somador|cOut~0_combout\ & ( (!\seletor[0]~input_o\ & ((!\inverteB~input_o\ & (\seletor[1]~input_o\ & 
-- !\entradaA[1]~input_o\)) # (\inverteB~input_o\ & ((\entradaA[1]~input_o\))))) # (\seletor[0]~input_o\ & (!\seletor[1]~input_o\ & ((\entradaA[1]~input_o\) # (\inverteB~input_o\)))) ) ) ) # ( \entradaB[1]~input_o\ & ( !\ULA1|Somador|cOut~0_combout\ & ( 
-- (!\inverteB~input_o\ & (!\seletor[1]~input_o\ $ (((!\seletor[0]~input_o\ & !\entradaA[1]~input_o\))))) # (\inverteB~input_o\ & (\entradaA[1]~input_o\ & (!\seletor[1]~input_o\ $ (!\seletor[0]~input_o\)))) ) ) ) # ( !\entradaB[1]~input_o\ & ( 
-- !\ULA1|Somador|cOut~0_combout\ & ( (!\inverteB~input_o\ & (\entradaA[1]~input_o\ & (!\seletor[1]~input_o\ $ (!\seletor[0]~input_o\)))) # (\inverteB~input_o\ & (!\seletor[1]~input_o\ $ (((!\seletor[0]~input_o\ & !\entradaA[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101010011000001010011001000010001011100010010011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_entradaA[1]~input_o\,
	datae => \ALT_INV_entradaB[1]~input_o\,
	dataf => \ULA1|Somador|ALT_INV_cOut~0_combout\,
	combout => \ULA2|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA3|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA3|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[2]~input_o\ $ (((!\seletor[1]~input_o\) # (\ULA2|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & (!\seletor[1]~input_o\)) 
-- ) ) # ( !\ULA3|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[2]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA2|Somador|cOut~combout\ $ (!\entradaA[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001100010011000101010111000000100011000100110001010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA2|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[2]~input_o\,
	datae => \ULA3|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA3|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA4|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|Somador|saida~0_combout\ = !\inverteB~input_o\ $ (!\entradaA[3]~input_o\ $ (\entradaB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inverteB~input_o\,
	datab => \ALT_INV_entradaA[3]~input_o\,
	datac => \ALT_INV_entradaB[3]~input_o\,
	combout => \ULA4|Somador|saida~0_combout\);

\ULA2|MuxOperacao|MUX_OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ = (\seletor[1]~input_o\ & !\seletor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	combout => \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\);

\ULA4|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \entradaB[3]~input_o\ & ( (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (!\inverteB~input_o\ & \entradaA[3]~input_o\)) # (\seletor[0]~input_o\ & ((!\inverteB~input_o\) # (\entradaA[3]~input_o\))))) ) ) # ( 
-- !\entradaB[3]~input_o\ & ( (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\inverteB~input_o\ & \entradaA[3]~input_o\)) # (\seletor[0]~input_o\ & ((\entradaA[3]~input_o\) # (\inverteB~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010001000001010001000000010001010100010000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ALT_INV_entradaA[3]~input_o\,
	datae => \ALT_INV_entradaB[3]~input_o\,
	combout => \ULA4|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA4|MuxOperacao|MUX_OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|MuxOperacao|MUX_OUT[0]~1_combout\ = ( \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA4|MuxOperacao|MUX_OUT[0]~0_combout\ ) ) # ( !\ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA4|MuxOperacao|MUX_OUT[0]~0_combout\ ) ) # ( 
-- \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( !\ULA4|MuxOperacao|MUX_OUT[0]~0_combout\ & ( !\ULA4|Somador|saida~0_combout\ $ (((!\ULA2|Somador|cOut~combout\ & ((!\entradaA[2]~input_o\) # (!\ULA3|InverterOuNao|saida_MUX[0]~0_combout\))) # 
-- (\ULA2|Somador|cOut~combout\ & (!\entradaA[2]~input_o\ & !\ULA3|InverterOuNao|saida_MUX[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000101111110100011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA2|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[2]~input_o\,
	datac => \ULA3|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ULA4|Somador|ALT_INV_saida~0_combout\,
	datae => \ULA2|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	dataf => \ULA4|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	combout => \ULA4|MuxOperacao|MUX_OUT[0]~1_combout\);

\ULA4|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|Somador|cOut~combout\ = ( \ULA4|InverterOuNao|saida_MUX[0]~0_combout\ & ( ((!\ULA2|Somador|cOut~combout\ & (\entradaA[2]~input_o\ & \ULA3|InverterOuNao|saida_MUX[0]~0_combout\)) # (\ULA2|Somador|cOut~combout\ & 
-- ((\ULA3|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[2]~input_o\)))) # (\entradaA[3]~input_o\) ) ) # ( !\ULA4|InverterOuNao|saida_MUX[0]~0_combout\ & ( (\entradaA[3]~input_o\ & ((!\ULA2|Somador|cOut~combout\ & (\entradaA[2]~input_o\ & 
-- \ULA3|InverterOuNao|saida_MUX[0]~0_combout\)) # (\ULA2|Somador|cOut~combout\ & ((\ULA3|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA2|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[2]~input_o\,
	datac => \ULA3|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_entradaA[3]~input_o\,
	datae => \ULA4|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA4|Somador|cOut~combout\);

\ULA5|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \entradaA[4]~input_o\ & ( \entradaB[4]~input_o\ & ( (!\seletor[0]~input_o\ & (!\inverteB~input_o\ $ (((\seletor[1]~input_o\ & !\ULA4|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & (!\seletor[1]~input_o\)) 
-- ) ) ) # ( !\entradaA[4]~input_o\ & ( \entradaB[4]~input_o\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & (!\inverteB~input_o\))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\inverteB~input_o\ $ (\ULA4|Somador|cOut~combout\)))) ) ) ) # ( 
-- \entradaA[4]~input_o\ & ( !\entradaB[4]~input_o\ & ( (!\seletor[0]~input_o\ & (!\inverteB~input_o\ $ (((!\seletor[1]~input_o\) # (\ULA4|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & (!\seletor[1]~input_o\)) ) ) ) # ( !\entradaA[4]~input_o\ & ( 
-- !\entradaB[4]~input_o\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & (\inverteB~input_o\))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\inverteB~input_o\ $ (!\ULA4|Somador|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001000010011010100010111001100000001001001010011011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ULA4|Somador|ALT_INV_cOut~combout\,
	datae => \ALT_INV_entradaA[4]~input_o\,
	dataf => \ALT_INV_entradaB[4]~input_o\,
	combout => \ULA5|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA6|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \entradaA[5]~input_o\ & ( \ULA6|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\) # ((!\seletor[0]~input_o\ & ((\ULA5|Somador|cOut~1_combout\) # (\ULA5|Somador|cOut~0_combout\)))) ) ) ) # ( 
-- !\entradaA[5]~input_o\ & ( \ULA6|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA5|Somador|cOut~0_combout\ & !\ULA5|Somador|cOut~1_combout\))) ) ) ) # ( 
-- \entradaA[5]~input_o\ & ( !\ULA6|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA5|Somador|cOut~0_combout\ & !\ULA5|Somador|cOut~1_combout\))) ) ) ) # ( 
-- !\entradaA[5]~input_o\ & ( !\ULA6|InverterOuNao|saida_MUX[0]~0_combout\ & ( (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & ((\ULA5|Somador|cOut~1_combout\) # (\ULA5|Somador|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100011000100010001001100010001000101010111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA5|Somador|ALT_INV_cOut~0_combout\,
	datad => \ULA5|Somador|ALT_INV_cOut~1_combout\,
	datae => \ALT_INV_entradaA[5]~input_o\,
	dataf => \ULA6|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA6|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA6|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|Somador|cOut~combout\ = (!\entradaA[5]~input_o\ & ((!\ULA6|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA5|Somador|cOut~0_combout\ & !\ULA5|Somador|cOut~1_combout\)))) # (\entradaA[5]~input_o\ & (!\ULA5|Somador|cOut~0_combout\ & 
-- (!\ULA5|Somador|cOut~1_combout\ & !\ULA6|InverterOuNao|saida_MUX[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA5|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA5|Somador|ALT_INV_cOut~1_combout\,
	datac => \ALT_INV_entradaA[5]~input_o\,
	datad => \ULA6|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA6|Somador|cOut~combout\);

\ULA7|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA7|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[6]~input_o\ $ (((!\seletor[1]~input_o\) # (!\ULA6|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA7|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[6]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA6|Somador|cOut~combout\ $ 
-- (\entradaA[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100110001001101110101001000000001001100010011011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA6|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[6]~input_o\,
	datae => \ULA7|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA7|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA8|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA8|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[7]~input_o\ $ (((!\seletor[1]~input_o\) # (!\ULA7|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA8|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[7]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA7|Somador|cOut~combout\ $ 
-- (\entradaA[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100110001001101110101001000000001001100010011011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA7|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[7]~input_o\,
	datae => \ULA8|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA8|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA9|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|Somador|saida~0_combout\ = !\entradaA[8]~input_o\ $ (!\ULA9|InverterOuNao|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[8]~input_o\,
	datab => \ULA9|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA9|Somador|saida~0_combout\);

\ULA9|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|MuxOperacao|MUX_OUT[0]~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[8]~input_o\ & \ULA9|InverterOuNao|saida_MUX[0]~0_combout\)) # (\seletor[0]~input_o\ & ((\ULA9|InverterOuNao|saida_MUX[0]~0_combout\) # 
-- (\entradaA[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_entradaA[8]~input_o\,
	datad => \ULA9|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA9|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA9|MuxOperacao|MUX_OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|MuxOperacao|MUX_OUT[0]~1_combout\ = ( \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA9|MuxOperacao|MUX_OUT[0]~0_combout\ ) ) # ( !\ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA9|MuxOperacao|MUX_OUT[0]~0_combout\ ) ) # ( 
-- \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( !\ULA9|MuxOperacao|MUX_OUT[0]~0_combout\ & ( !\ULA9|Somador|saida~0_combout\ $ (((!\ULA7|Somador|cOut~combout\ & (!\entradaA[7]~input_o\ & !\ULA8|InverterOuNao|saida_MUX[0]~0_combout\)) # 
-- (\ULA7|Somador|cOut~combout\ & ((!\entradaA[7]~input_o\) # (!\ULA8|InverterOuNao|saida_MUX[0]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA7|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[7]~input_o\,
	datac => \ULA8|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ULA9|Somador|ALT_INV_saida~0_combout\,
	datae => \ULA2|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	dataf => \ULA9|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	combout => \ULA9|MuxOperacao|MUX_OUT[0]~1_combout\);

\ULA9|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|Somador|cOut~combout\ = ( \ULA9|InverterOuNao|saida_MUX[0]~0_combout\ & ( ((!\ULA7|Somador|cOut~combout\ & ((\ULA8|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[7]~input_o\))) # (\ULA7|Somador|cOut~combout\ & (\entradaA[7]~input_o\ & 
-- \ULA8|InverterOuNao|saida_MUX[0]~0_combout\))) # (\entradaA[8]~input_o\) ) ) # ( !\ULA9|InverterOuNao|saida_MUX[0]~0_combout\ & ( (\entradaA[8]~input_o\ & ((!\ULA7|Somador|cOut~combout\ & ((\ULA8|InverterOuNao|saida_MUX[0]~0_combout\) # 
-- (\entradaA[7]~input_o\))) # (\ULA7|Somador|cOut~combout\ & (\entradaA[7]~input_o\ & \ULA8|InverterOuNao|saida_MUX[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA7|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[7]~input_o\,
	datac => \ULA8|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_entradaA[8]~input_o\,
	datae => \ULA9|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA9|Somador|cOut~combout\);

\ULA10|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \entradaA[9]~input_o\ & ( \entradaB[9]~input_o\ & ( (!\seletor[0]~input_o\ & (!\inverteB~input_o\ $ (((\seletor[1]~input_o\ & !\ULA9|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & (!\seletor[1]~input_o\)) 
-- ) ) ) # ( !\entradaA[9]~input_o\ & ( \entradaB[9]~input_o\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & (!\inverteB~input_o\))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\inverteB~input_o\ $ (\ULA9|Somador|cOut~combout\)))) ) ) ) # ( 
-- \entradaA[9]~input_o\ & ( !\entradaB[9]~input_o\ & ( (!\seletor[0]~input_o\ & (!\inverteB~input_o\ $ (((!\seletor[1]~input_o\) # (\ULA9|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & (!\seletor[1]~input_o\)) ) ) ) # ( !\entradaA[9]~input_o\ & ( 
-- !\entradaB[9]~input_o\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & (\inverteB~input_o\))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\inverteB~input_o\ $ (!\ULA9|Somador|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001000010011010100010111001100000001001001010011011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ULA9|Somador|ALT_INV_cOut~combout\,
	datae => \ALT_INV_entradaA[9]~input_o\,
	dataf => \ALT_INV_entradaB[9]~input_o\,
	combout => \ULA10|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA11|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \entradaA[10]~input_o\ & ( \ULA11|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\) # ((!\seletor[0]~input_o\ & ((\ULA10|Somador|cOut~1_combout\) # (\ULA10|Somador|cOut~0_combout\)))) ) ) ) # ( 
-- !\entradaA[10]~input_o\ & ( \ULA11|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA10|Somador|cOut~0_combout\ & !\ULA10|Somador|cOut~1_combout\))) ) ) ) # 
-- ( \entradaA[10]~input_o\ & ( !\ULA11|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA10|Somador|cOut~0_combout\ & !\ULA10|Somador|cOut~1_combout\))) ) ) ) 
-- # ( !\entradaA[10]~input_o\ & ( !\ULA11|InverterOuNao|saida_MUX[0]~0_combout\ & ( (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & ((\ULA10|Somador|cOut~1_combout\) # (\ULA10|Somador|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100011000100010001001100010001000101010111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA10|Somador|ALT_INV_cOut~0_combout\,
	datad => \ULA10|Somador|ALT_INV_cOut~1_combout\,
	datae => \ALT_INV_entradaA[10]~input_o\,
	dataf => \ULA11|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA11|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA11|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|Somador|cOut~combout\ = (!\entradaA[10]~input_o\ & ((!\ULA11|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA10|Somador|cOut~0_combout\ & !\ULA10|Somador|cOut~1_combout\)))) # (\entradaA[10]~input_o\ & (!\ULA10|Somador|cOut~0_combout\ & 
-- (!\ULA10|Somador|cOut~1_combout\ & !\ULA11|InverterOuNao|saida_MUX[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA10|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA10|Somador|ALT_INV_cOut~1_combout\,
	datac => \ALT_INV_entradaA[10]~input_o\,
	datad => \ULA11|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA11|Somador|cOut~combout\);

\ULA12|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA12|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[11]~input_o\ $ (((!\seletor[1]~input_o\) # (!\ULA11|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA12|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[11]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA11|Somador|cOut~combout\ $ 
-- (\entradaA[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100110001001101110101001000000001001100010011011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA11|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[11]~input_o\,
	datae => \ULA12|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA12|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA13|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA13|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[12]~input_o\ $ (((!\seletor[1]~input_o\) # (!\ULA12|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA13|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[12]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA12|Somador|cOut~combout\ $ 
-- (\entradaA[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100110001001101110101001000000001001100010011011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA12|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[12]~input_o\,
	datae => \ULA13|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA13|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA14|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|Somador|saida~0_combout\ = !\entradaA[13]~input_o\ $ (!\ULA14|InverterOuNao|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[13]~input_o\,
	datab => \ULA14|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA14|Somador|saida~0_combout\);

\ULA14|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|MuxOperacao|MUX_OUT[0]~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[13]~input_o\ & \ULA14|InverterOuNao|saida_MUX[0]~0_combout\)) # (\seletor[0]~input_o\ & ((\ULA14|InverterOuNao|saida_MUX[0]~0_combout\) # 
-- (\entradaA[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_entradaA[13]~input_o\,
	datad => \ULA14|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA14|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA14|MuxOperacao|MUX_OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|MuxOperacao|MUX_OUT[0]~1_combout\ = ( \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA14|MuxOperacao|MUX_OUT[0]~0_combout\ ) ) # ( !\ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA14|MuxOperacao|MUX_OUT[0]~0_combout\ ) ) # ( 
-- \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( !\ULA14|MuxOperacao|MUX_OUT[0]~0_combout\ & ( !\ULA14|Somador|saida~0_combout\ $ (((!\ULA12|Somador|cOut~combout\ & (!\entradaA[12]~input_o\ & !\ULA13|InverterOuNao|saida_MUX[0]~0_combout\)) # 
-- (\ULA12|Somador|cOut~combout\ & ((!\entradaA[12]~input_o\) # (!\ULA13|InverterOuNao|saida_MUX[0]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA12|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[12]~input_o\,
	datac => \ULA13|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ULA14|Somador|ALT_INV_saida~0_combout\,
	datae => \ULA2|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	dataf => \ULA14|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	combout => \ULA14|MuxOperacao|MUX_OUT[0]~1_combout\);

\ULA14|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|Somador|cOut~combout\ = ( \ULA14|InverterOuNao|saida_MUX[0]~0_combout\ & ( ((!\ULA12|Somador|cOut~combout\ & ((\ULA13|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[12]~input_o\))) # (\ULA12|Somador|cOut~combout\ & (\entradaA[12]~input_o\ & 
-- \ULA13|InverterOuNao|saida_MUX[0]~0_combout\))) # (\entradaA[13]~input_o\) ) ) # ( !\ULA14|InverterOuNao|saida_MUX[0]~0_combout\ & ( (\entradaA[13]~input_o\ & ((!\ULA12|Somador|cOut~combout\ & ((\ULA13|InverterOuNao|saida_MUX[0]~0_combout\) # 
-- (\entradaA[12]~input_o\))) # (\ULA12|Somador|cOut~combout\ & (\entradaA[12]~input_o\ & \ULA13|InverterOuNao|saida_MUX[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA12|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[12]~input_o\,
	datac => \ULA13|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_entradaA[13]~input_o\,
	datae => \ULA14|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA14|Somador|cOut~combout\);

\ULA15|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA15|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[14]~input_o\ $ (((!\seletor[1]~input_o\) # (\ULA14|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA15|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[14]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA14|Somador|cOut~combout\ $ 
-- (!\entradaA[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001100010011000101010111000000100011000100110001010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA14|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[14]~input_o\,
	datae => \ULA15|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA15|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA16|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \entradaA[15]~input_o\ & ( \ULA16|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\) # ((!\seletor[0]~input_o\ & ((\ULA15|Somador|cOut~1_combout\) # (\ULA15|Somador|cOut~0_combout\)))) ) ) ) # ( 
-- !\entradaA[15]~input_o\ & ( \ULA16|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA15|Somador|cOut~0_combout\ & !\ULA15|Somador|cOut~1_combout\))) ) ) ) # 
-- ( \entradaA[15]~input_o\ & ( !\ULA16|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA15|Somador|cOut~0_combout\ & !\ULA15|Somador|cOut~1_combout\))) ) ) ) 
-- # ( !\entradaA[15]~input_o\ & ( !\ULA16|InverterOuNao|saida_MUX[0]~0_combout\ & ( (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & ((\ULA15|Somador|cOut~1_combout\) # (\ULA15|Somador|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100011000100010001001100010001000101010111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA15|Somador|ALT_INV_cOut~0_combout\,
	datad => \ULA15|Somador|ALT_INV_cOut~1_combout\,
	datae => \ALT_INV_entradaA[15]~input_o\,
	dataf => \ULA16|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA16|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA16|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|Somador|cOut~combout\ = (!\entradaA[15]~input_o\ & ((!\ULA16|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA15|Somador|cOut~0_combout\ & !\ULA15|Somador|cOut~1_combout\)))) # (\entradaA[15]~input_o\ & (!\ULA15|Somador|cOut~0_combout\ & 
-- (!\ULA15|Somador|cOut~1_combout\ & !\ULA16|InverterOuNao|saida_MUX[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA15|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA15|Somador|ALT_INV_cOut~1_combout\,
	datac => \ALT_INV_entradaA[15]~input_o\,
	datad => \ULA16|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA16|Somador|cOut~combout\);

\ULA17|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA17|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[16]~input_o\ $ (((!\seletor[1]~input_o\) # (!\ULA16|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA17|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[16]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA16|Somador|cOut~combout\ $ 
-- (\entradaA[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100110001001101110101001000000001001100010011011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA16|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[16]~input_o\,
	datae => \ULA17|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA17|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA18|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA18|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[17]~input_o\ $ (((!\seletor[1]~input_o\) # (!\ULA17|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA18|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[17]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA17|Somador|cOut~combout\ $ 
-- (\entradaA[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100110001001101110101001000000001001100010011011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA17|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[17]~input_o\,
	datae => \ULA18|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA18|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA19|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|Somador|saida~0_combout\ = !\entradaA[18]~input_o\ $ (!\ULA19|InverterOuNao|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[18]~input_o\,
	datab => \ULA19|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA19|Somador|saida~0_combout\);

\ULA19|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|MuxOperacao|MUX_OUT[0]~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[18]~input_o\ & \ULA19|InverterOuNao|saida_MUX[0]~0_combout\)) # (\seletor[0]~input_o\ & ((\ULA19|InverterOuNao|saida_MUX[0]~0_combout\) # 
-- (\entradaA[18]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_entradaA[18]~input_o\,
	datad => \ULA19|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA19|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA19|MuxOperacao|MUX_OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|MuxOperacao|MUX_OUT[0]~1_combout\ = ( \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA19|MuxOperacao|MUX_OUT[0]~0_combout\ ) ) # ( !\ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA19|MuxOperacao|MUX_OUT[0]~0_combout\ ) ) # ( 
-- \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( !\ULA19|MuxOperacao|MUX_OUT[0]~0_combout\ & ( !\ULA19|Somador|saida~0_combout\ $ (((!\ULA17|Somador|cOut~combout\ & (!\entradaA[17]~input_o\ & !\ULA18|InverterOuNao|saida_MUX[0]~0_combout\)) # 
-- (\ULA17|Somador|cOut~combout\ & ((!\entradaA[17]~input_o\) # (!\ULA18|InverterOuNao|saida_MUX[0]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA17|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[17]~input_o\,
	datac => \ULA18|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ULA19|Somador|ALT_INV_saida~0_combout\,
	datae => \ULA2|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	dataf => \ULA19|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	combout => \ULA19|MuxOperacao|MUX_OUT[0]~1_combout\);

\ULA19|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|Somador|cOut~combout\ = ( \ULA19|InverterOuNao|saida_MUX[0]~0_combout\ & ( ((!\ULA17|Somador|cOut~combout\ & ((\ULA18|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[17]~input_o\))) # (\ULA17|Somador|cOut~combout\ & (\entradaA[17]~input_o\ & 
-- \ULA18|InverterOuNao|saida_MUX[0]~0_combout\))) # (\entradaA[18]~input_o\) ) ) # ( !\ULA19|InverterOuNao|saida_MUX[0]~0_combout\ & ( (\entradaA[18]~input_o\ & ((!\ULA17|Somador|cOut~combout\ & ((\ULA18|InverterOuNao|saida_MUX[0]~0_combout\) # 
-- (\entradaA[17]~input_o\))) # (\ULA17|Somador|cOut~combout\ & (\entradaA[17]~input_o\ & \ULA18|InverterOuNao|saida_MUX[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA17|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[17]~input_o\,
	datac => \ULA18|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_entradaA[18]~input_o\,
	datae => \ULA19|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA19|Somador|cOut~combout\);

\ULA20|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA20|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[19]~input_o\ $ (((!\seletor[1]~input_o\) # (\ULA19|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA20|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[19]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA19|Somador|cOut~combout\ $ 
-- (!\entradaA[19]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001100010011000101010111000000100011000100110001010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA19|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[19]~input_o\,
	datae => \ULA20|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA20|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA21|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \entradaA[20]~input_o\ & ( \ULA21|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\) # ((!\seletor[0]~input_o\ & ((\ULA20|Somador|cOut~1_combout\) # (\ULA20|Somador|cOut~0_combout\)))) ) ) ) # ( 
-- !\entradaA[20]~input_o\ & ( \ULA21|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA20|Somador|cOut~0_combout\ & !\ULA20|Somador|cOut~1_combout\))) ) ) ) # 
-- ( \entradaA[20]~input_o\ & ( !\ULA21|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA20|Somador|cOut~0_combout\ & !\ULA20|Somador|cOut~1_combout\))) ) ) ) 
-- # ( !\entradaA[20]~input_o\ & ( !\ULA21|InverterOuNao|saida_MUX[0]~0_combout\ & ( (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & ((\ULA20|Somador|cOut~1_combout\) # (\ULA20|Somador|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100011000100010001001100010001000101010111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA20|Somador|ALT_INV_cOut~0_combout\,
	datad => \ULA20|Somador|ALT_INV_cOut~1_combout\,
	datae => \ALT_INV_entradaA[20]~input_o\,
	dataf => \ULA21|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA21|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA21|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|Somador|cOut~combout\ = (!\entradaA[20]~input_o\ & ((!\ULA21|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA20|Somador|cOut~0_combout\ & !\ULA20|Somador|cOut~1_combout\)))) # (\entradaA[20]~input_o\ & (!\ULA20|Somador|cOut~0_combout\ & 
-- (!\ULA20|Somador|cOut~1_combout\ & !\ULA21|InverterOuNao|saida_MUX[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA20|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA20|Somador|ALT_INV_cOut~1_combout\,
	datac => \ALT_INV_entradaA[20]~input_o\,
	datad => \ULA21|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA21|Somador|cOut~combout\);

\ULA22|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA22|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[21]~input_o\ $ (((!\seletor[1]~input_o\) # (!\ULA21|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA22|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[21]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA21|Somador|cOut~combout\ $ 
-- (\entradaA[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100110001001101110101001000000001001100010011011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA21|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[21]~input_o\,
	datae => \ULA22|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA22|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA23|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA23|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[22]~input_o\ $ (((!\seletor[1]~input_o\) # (!\ULA22|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA23|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[22]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA22|Somador|cOut~combout\ $ 
-- (\entradaA[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100110001001101110101001000000001001100010011011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA22|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[22]~input_o\,
	datae => \ULA23|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA23|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA24|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|Somador|saida~0_combout\ = !\entradaA[23]~input_o\ $ (!\ULA24|InverterOuNao|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[23]~input_o\,
	datab => \ULA24|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA24|Somador|saida~0_combout\);

\ULA24|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|MuxOperacao|MUX_OUT[0]~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[23]~input_o\ & \ULA24|InverterOuNao|saida_MUX[0]~0_combout\)) # (\seletor[0]~input_o\ & ((\ULA24|InverterOuNao|saida_MUX[0]~0_combout\) # 
-- (\entradaA[23]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_entradaA[23]~input_o\,
	datad => \ULA24|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA24|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA24|MuxOperacao|MUX_OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|MuxOperacao|MUX_OUT[0]~1_combout\ = ( \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA24|MuxOperacao|MUX_OUT[0]~0_combout\ ) ) # ( !\ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA24|MuxOperacao|MUX_OUT[0]~0_combout\ ) ) # ( 
-- \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( !\ULA24|MuxOperacao|MUX_OUT[0]~0_combout\ & ( !\ULA24|Somador|saida~0_combout\ $ (((!\ULA22|Somador|cOut~combout\ & (!\entradaA[22]~input_o\ & !\ULA23|InverterOuNao|saida_MUX[0]~0_combout\)) # 
-- (\ULA22|Somador|cOut~combout\ & ((!\entradaA[22]~input_o\) # (!\ULA23|InverterOuNao|saida_MUX[0]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA22|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[22]~input_o\,
	datac => \ULA23|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ULA24|Somador|ALT_INV_saida~0_combout\,
	datae => \ULA2|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	dataf => \ULA24|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	combout => \ULA24|MuxOperacao|MUX_OUT[0]~1_combout\);

\ULA24|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|Somador|cOut~combout\ = ( \ULA24|InverterOuNao|saida_MUX[0]~0_combout\ & ( ((!\ULA22|Somador|cOut~combout\ & ((\ULA23|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[22]~input_o\))) # (\ULA22|Somador|cOut~combout\ & (\entradaA[22]~input_o\ & 
-- \ULA23|InverterOuNao|saida_MUX[0]~0_combout\))) # (\entradaA[23]~input_o\) ) ) # ( !\ULA24|InverterOuNao|saida_MUX[0]~0_combout\ & ( (\entradaA[23]~input_o\ & ((!\ULA22|Somador|cOut~combout\ & ((\ULA23|InverterOuNao|saida_MUX[0]~0_combout\) # 
-- (\entradaA[22]~input_o\))) # (\ULA22|Somador|cOut~combout\ & (\entradaA[22]~input_o\ & \ULA23|InverterOuNao|saida_MUX[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA22|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[22]~input_o\,
	datac => \ULA23|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_entradaA[23]~input_o\,
	datae => \ULA24|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA24|Somador|cOut~combout\);

\ULA25|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA25|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[24]~input_o\ $ (((!\seletor[1]~input_o\) # (\ULA24|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA25|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[24]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA24|Somador|cOut~combout\ $ 
-- (!\entradaA[24]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001100010011000101010111000000100011000100110001010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA24|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[24]~input_o\,
	datae => \ULA25|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA25|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA26|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \entradaA[25]~input_o\ & ( \ULA26|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\) # ((!\seletor[0]~input_o\ & ((\ULA25|Somador|cOut~1_combout\) # (\ULA25|Somador|cOut~0_combout\)))) ) ) ) # ( 
-- !\entradaA[25]~input_o\ & ( \ULA26|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA25|Somador|cOut~0_combout\ & !\ULA25|Somador|cOut~1_combout\))) ) ) ) # 
-- ( \entradaA[25]~input_o\ & ( !\ULA26|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA25|Somador|cOut~0_combout\ & !\ULA25|Somador|cOut~1_combout\))) ) ) ) 
-- # ( !\entradaA[25]~input_o\ & ( !\ULA26|InverterOuNao|saida_MUX[0]~0_combout\ & ( (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & ((\ULA25|Somador|cOut~1_combout\) # (\ULA25|Somador|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100011000100010001001100010001000101010111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA25|Somador|ALT_INV_cOut~0_combout\,
	datad => \ULA25|Somador|ALT_INV_cOut~1_combout\,
	datae => \ALT_INV_entradaA[25]~input_o\,
	dataf => \ULA26|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA26|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA26|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|Somador|cOut~combout\ = (!\entradaA[25]~input_o\ & ((!\ULA26|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA25|Somador|cOut~0_combout\ & !\ULA25|Somador|cOut~1_combout\)))) # (\entradaA[25]~input_o\ & (!\ULA25|Somador|cOut~0_combout\ & 
-- (!\ULA25|Somador|cOut~1_combout\ & !\ULA26|InverterOuNao|saida_MUX[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA25|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA25|Somador|ALT_INV_cOut~1_combout\,
	datac => \ALT_INV_entradaA[25]~input_o\,
	datad => \ULA26|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA26|Somador|cOut~combout\);

\ULA27|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA27|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[26]~input_o\ $ (((!\seletor[1]~input_o\) # (!\ULA26|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA27|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[26]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA26|Somador|cOut~combout\ $ 
-- (\entradaA[26]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100110001001101110101001000000001001100010011011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA26|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[26]~input_o\,
	datae => \ULA27|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA27|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA28|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA28|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[0]~input_o\ & (!\entradaA[27]~input_o\ $ (((!\seletor[1]~input_o\) # (!\ULA27|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) # ( !\ULA28|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & ((\entradaA[27]~input_o\)))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA27|Somador|cOut~combout\ $ 
-- (\entradaA[27]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100110001001101110101001000000001001100010011011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA27|Somador|ALT_INV_cOut~combout\,
	datad => \ALT_INV_entradaA[27]~input_o\,
	datae => \ULA28|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA28|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA29|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|Somador|saida~0_combout\ = !\entradaA[28]~input_o\ $ (!\ULA29|InverterOuNao|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[28]~input_o\,
	datab => \ULA29|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA29|Somador|saida~0_combout\);

\ULA29|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|MuxOperacao|MUX_OUT[0]~0_combout\ = (!\seletor[1]~input_o\ & ((!\seletor[0]~input_o\ & (\entradaA[28]~input_o\ & \ULA29|InverterOuNao|saida_MUX[0]~0_combout\)) # (\seletor[0]~input_o\ & ((\ULA29|InverterOuNao|saida_MUX[0]~0_combout\) # 
-- (\entradaA[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000000010001010100000001000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_entradaA[28]~input_o\,
	datad => \ULA29|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA29|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA29|MuxOperacao|MUX_OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|MuxOperacao|MUX_OUT[0]~1_combout\ = ( \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA29|MuxOperacao|MUX_OUT[0]~0_combout\ ) ) # ( !\ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA29|MuxOperacao|MUX_OUT[0]~0_combout\ ) ) # ( 
-- \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( !\ULA29|MuxOperacao|MUX_OUT[0]~0_combout\ & ( !\ULA29|Somador|saida~0_combout\ $ (((!\ULA27|Somador|cOut~combout\ & (!\entradaA[27]~input_o\ & !\ULA28|InverterOuNao|saida_MUX[0]~0_combout\)) # 
-- (\ULA27|Somador|cOut~combout\ & ((!\entradaA[27]~input_o\) # (!\ULA28|InverterOuNao|saida_MUX[0]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA27|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[27]~input_o\,
	datac => \ULA28|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ULA29|Somador|ALT_INV_saida~0_combout\,
	datae => \ULA2|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	dataf => \ULA29|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	combout => \ULA29|MuxOperacao|MUX_OUT[0]~1_combout\);

\ULA29|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|Somador|cOut~combout\ = ( \ULA29|InverterOuNao|saida_MUX[0]~0_combout\ & ( ((!\ULA27|Somador|cOut~combout\ & ((\ULA28|InverterOuNao|saida_MUX[0]~0_combout\) # (\entradaA[27]~input_o\))) # (\ULA27|Somador|cOut~combout\ & (\entradaA[27]~input_o\ & 
-- \ULA28|InverterOuNao|saida_MUX[0]~0_combout\))) # (\entradaA[28]~input_o\) ) ) # ( !\ULA29|InverterOuNao|saida_MUX[0]~0_combout\ & ( (\entradaA[28]~input_o\ & ((!\ULA27|Somador|cOut~combout\ & ((\ULA28|InverterOuNao|saida_MUX[0]~0_combout\) # 
-- (\entradaA[27]~input_o\))) # (\ULA27|Somador|cOut~combout\ & (\entradaA[27]~input_o\ & \ULA28|InverterOuNao|saida_MUX[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA27|Somador|ALT_INV_cOut~combout\,
	datab => \ALT_INV_entradaA[27]~input_o\,
	datac => \ULA28|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ALT_INV_entradaA[28]~input_o\,
	datae => \ULA29|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA29|Somador|cOut~combout\);

\ULA30|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \entradaA[29]~input_o\ & ( \entradaB[29]~input_o\ & ( (!\seletor[0]~input_o\ & (!\inverteB~input_o\ $ (((\seletor[1]~input_o\ & !\ULA29|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) ) # ( !\entradaA[29]~input_o\ & ( \entradaB[29]~input_o\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & (!\inverteB~input_o\))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\inverteB~input_o\ $ 
-- (\ULA29|Somador|cOut~combout\)))) ) ) ) # ( \entradaA[29]~input_o\ & ( !\entradaB[29]~input_o\ & ( (!\seletor[0]~input_o\ & (!\inverteB~input_o\ $ (((!\seletor[1]~input_o\) # (\ULA29|Somador|cOut~combout\))))) # (\seletor[0]~input_o\ & 
-- (!\seletor[1]~input_o\)) ) ) ) # ( !\entradaA[29]~input_o\ & ( !\entradaB[29]~input_o\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\ & (\inverteB~input_o\))) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\inverteB~input_o\ $ 
-- (!\ULA29|Somador|cOut~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001000010011010100010111001100000001001001010011011100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ALT_INV_inverteB~input_o\,
	datad => \ULA29|Somador|ALT_INV_cOut~combout\,
	datae => \ALT_INV_entradaA[29]~input_o\,
	dataf => \ALT_INV_entradaB[29]~input_o\,
	combout => \ULA30|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA31|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \entradaA[30]~input_o\ & ( \ULA31|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\) # ((!\seletor[0]~input_o\ & ((\ULA30|Somador|cOut~1_combout\) # (\ULA30|Somador|cOut~0_combout\)))) ) ) ) # ( 
-- !\entradaA[30]~input_o\ & ( \ULA31|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA30|Somador|cOut~0_combout\ & !\ULA30|Somador|cOut~1_combout\))) ) ) ) # 
-- ( \entradaA[30]~input_o\ & ( !\ULA31|InverterOuNao|saida_MUX[0]~0_combout\ & ( (!\seletor[1]~input_o\ & (\seletor[0]~input_o\)) # (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & (!\ULA30|Somador|cOut~0_combout\ & !\ULA30|Somador|cOut~1_combout\))) ) ) ) 
-- # ( !\entradaA[30]~input_o\ & ( !\ULA31|InverterOuNao|saida_MUX[0]~0_combout\ & ( (\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & ((\ULA30|Somador|cOut~1_combout\) # (\ULA30|Somador|cOut~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100011000100010001001100010001000101010111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_seletor[1]~input_o\,
	datab => \ALT_INV_seletor[0]~input_o\,
	datac => \ULA30|Somador|ALT_INV_cOut~0_combout\,
	datad => \ULA30|Somador|ALT_INV_cOut~1_combout\,
	datae => \ALT_INV_entradaA[30]~input_o\,
	dataf => \ULA31|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA31|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA32|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA32|Somador|saida~0_combout\ = !\entradaA[31]~input_o\ $ (!\ULA32|InverterOuNao|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ULA32|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA32|Somador|saida~0_combout\);

\ULA32|MuxOperacao|MUX_OUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA32|MuxOperacao|MUX_OUT[0]~0_combout\ = ( \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( \ULA32|Somador|saida~0_combout\ & ( (!\entradaA[30]~input_o\ & ((!\ULA31|InverterOuNao|saida_MUX[0]~0_combout\) # ((!\ULA30|Somador|cOut~0_combout\ & 
-- !\ULA30|Somador|cOut~1_combout\)))) # (\entradaA[30]~input_o\ & (!\ULA30|Somador|cOut~0_combout\ & (!\ULA30|Somador|cOut~1_combout\ & !\ULA31|InverterOuNao|saida_MUX[0]~0_combout\))) ) ) ) # ( \ULA2|MuxOperacao|MUX_OUT[0]~1_combout\ & ( 
-- !\ULA32|Somador|saida~0_combout\ & ( (!\entradaA[30]~input_o\ & (\ULA31|InverterOuNao|saida_MUX[0]~0_combout\ & ((\ULA30|Somador|cOut~1_combout\) # (\ULA30|Somador|cOut~0_combout\)))) # (\entradaA[30]~input_o\ & 
-- (((\ULA31|InverterOuNao|saida_MUX[0]~0_combout\) # (\ULA30|Somador|cOut~1_combout\)) # (\ULA30|Somador|cOut~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110111111100000000000000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA30|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA30|Somador|ALT_INV_cOut~1_combout\,
	datac => \ALT_INV_entradaA[30]~input_o\,
	datad => \ULA31|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	datae => \ULA2|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	dataf => \ULA32|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA32|MuxOperacao|MUX_OUT[0]~0_combout\);

\ULA32|MuxOperacao|MUX_OUT[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA32|MuxOperacao|MUX_OUT[0]~1_combout\ = (!\seletor[1]~input_o\ & ((!\entradaA[31]~input_o\ & (\seletor[0]~input_o\ & \ULA32|InverterOuNao|saida_MUX[0]~0_combout\)) # (\entradaA[31]~input_o\ & ((\ULA32|InverterOuNao|saida_MUX[0]~0_combout\) # 
-- (\seletor[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000000100010011000000010001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[31]~input_o\,
	datab => \ALT_INV_seletor[1]~input_o\,
	datac => \ALT_INV_seletor[0]~input_o\,
	datad => \ULA32|InverterOuNao|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA32|MuxOperacao|MUX_OUT[0]~1_combout\);

\ULA32|MuxOperacao|MUX_OUT[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA32|MuxOperacao|MUX_OUT[0]~2_combout\ = (\ULA32|MuxOperacao|MUX_OUT[0]~1_combout\) # (\ULA32|MuxOperacao|MUX_OUT[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA32|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datab => \ULA32|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	combout => \ULA32|MuxOperacao|MUX_OUT[0]~2_combout\);

\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\ULA6|MuxOperacao|MUX_OUT[0]~0_combout\ & ( (!\ULA2|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA3|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA4|MuxOperacao|MUX_OUT[0]~1_combout\ & !\ULA5|MuxOperacao|MUX_OUT[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA2|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datab => \ULA3|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datac => \ULA4|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	datad => \ULA5|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datae => \ULA6|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	combout => \Equal0~0_combout\);

\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ULA7|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA8|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA9|MuxOperacao|MUX_OUT[0]~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA7|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datab => \ULA8|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datac => \ULA9|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \Equal0~1_combout\ & ( (!\ULA10|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA11|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA12|MuxOperacao|MUX_OUT[0]~0_combout\ & !\ULA13|MuxOperacao|MUX_OUT[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA10|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datab => \ULA11|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datac => \ULA12|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datad => \ULA13|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datae => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~2_combout\);

\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\ULA14|MuxOperacao|MUX_OUT[0]~1_combout\ & (!\ULA15|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA16|MuxOperacao|MUX_OUT[0]~0_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA14|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	datab => \ULA15|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datac => \ULA16|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~3_combout\);

\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\ULA17|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA18|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA19|MuxOperacao|MUX_OUT[0]~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA17|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datab => \ULA18|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datac => \ULA19|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~4_combout\ & ( (!\ULA20|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA21|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA22|MuxOperacao|MUX_OUT[0]~0_combout\ & !\ULA23|MuxOperacao|MUX_OUT[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA20|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datab => \ULA21|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datac => \ULA22|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datad => \ULA23|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datae => \ALT_INV_Equal0~4_combout\,
	combout => \Equal0~5_combout\);

\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\ULA24|MuxOperacao|MUX_OUT[0]~1_combout\ & (!\ULA25|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA26|MuxOperacao|MUX_OUT[0]~0_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA24|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	datab => \ULA25|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datac => \ULA26|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datad => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

\Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\ULA27|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA28|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA29|MuxOperacao|MUX_OUT[0]~1_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA27|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datab => \ULA28|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datac => \ULA29|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	datad => \ALT_INV_Equal0~6_combout\,
	combout => \Equal0~7_combout\);

\Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = ( !\ULA1|MuxOperacao|MUX_OUT[0]~3_combout\ & ( \Equal0~7_combout\ & ( (!\ULA30|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA31|MuxOperacao|MUX_OUT[0]~0_combout\ & (!\ULA32|MuxOperacao|MUX_OUT[0]~0_combout\ & 
-- !\ULA32|MuxOperacao|MUX_OUT[0]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA30|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datab => \ULA31|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datac => \ULA32|MuxOperacao|ALT_INV_MUX_OUT[0]~0_combout\,
	datad => \ULA32|MuxOperacao|ALT_INV_MUX_OUT[0]~1_combout\,
	datae => \ULA1|MuxOperacao|ALT_INV_MUX_OUT[0]~3_combout\,
	dataf => \ALT_INV_Equal0~7_combout\,
	combout => \Equal0~8_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;

ww_saida(16) <= \saida[16]~output_o\;

ww_saida(17) <= \saida[17]~output_o\;

ww_saida(18) <= \saida[18]~output_o\;

ww_saida(19) <= \saida[19]~output_o\;

ww_saida(20) <= \saida[20]~output_o\;

ww_saida(21) <= \saida[21]~output_o\;

ww_saida(22) <= \saida[22]~output_o\;

ww_saida(23) <= \saida[23]~output_o\;

ww_saida(24) <= \saida[24]~output_o\;

ww_saida(25) <= \saida[25]~output_o\;

ww_saida(26) <= \saida[26]~output_o\;

ww_saida(27) <= \saida[27]~output_o\;

ww_saida(28) <= \saida[28]~output_o\;

ww_saida(29) <= \saida[29]~output_o\;

ww_saida(30) <= \saida[30]~output_o\;

ww_saida(31) <= \saida[31]~output_o\;

ww_flagZero <= \flagZero~output_o\;
END structure;


