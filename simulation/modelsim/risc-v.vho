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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/07/2023 16:49:54"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	Datapath IS
    PORT (
	PC : IN IEEE.NUMERIC_STD.unsigned(31 DOWNTO 0);
	extend_out : INOUT std_logic_vector(31 DOWNTO 0);
	clk : IN std_logic;
	alu_control : IN std_logic_vector(2 DOWNTO 0);
	alu_result : INOUT std_logic_vector(31 DOWNTO 0);
	read_data : INOUT std_logic_vector(31 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- PC[13]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[14]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[16]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[17]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[18]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[19]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[20]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[21]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[22]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[23]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[24]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[25]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[26]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[27]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[28]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[29]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[30]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[31]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[2]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[5]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[7]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[8]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[9]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[10]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[11]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[13]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[14]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[15]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[16]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[17]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[18]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[19]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[20]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[21]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[22]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[23]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[24]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[25]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[26]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[27]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[28]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[29]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[30]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[31]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[3]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[6]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[8]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[9]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[10]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[11]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[12]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[13]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[14]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[15]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[16]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[17]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[18]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[19]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[20]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[21]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[22]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[23]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[24]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[25]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[26]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[27]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[28]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[29]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[30]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[31]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[6]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[9]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[10]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[11]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[12]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[13]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[14]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[15]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[16]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[17]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[18]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[19]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[20]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[21]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[22]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[23]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[24]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[25]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[26]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[27]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[28]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[29]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[30]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[31]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[9]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[10]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[11]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[12]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_control[0]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_control[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_control[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_PC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_alu_control : std_logic_vector(2 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC[13]~input_o\ : std_logic;
SIGNAL \PC[14]~input_o\ : std_logic;
SIGNAL \PC[15]~input_o\ : std_logic;
SIGNAL \PC[16]~input_o\ : std_logic;
SIGNAL \PC[17]~input_o\ : std_logic;
SIGNAL \PC[18]~input_o\ : std_logic;
SIGNAL \PC[19]~input_o\ : std_logic;
SIGNAL \PC[20]~input_o\ : std_logic;
SIGNAL \PC[21]~input_o\ : std_logic;
SIGNAL \PC[22]~input_o\ : std_logic;
SIGNAL \PC[23]~input_o\ : std_logic;
SIGNAL \PC[24]~input_o\ : std_logic;
SIGNAL \PC[25]~input_o\ : std_logic;
SIGNAL \PC[26]~input_o\ : std_logic;
SIGNAL \PC[27]~input_o\ : std_logic;
SIGNAL \PC[28]~input_o\ : std_logic;
SIGNAL \PC[29]~input_o\ : std_logic;
SIGNAL \PC[30]~input_o\ : std_logic;
SIGNAL \PC[31]~input_o\ : std_logic;
SIGNAL \extend_out[0]~input_o\ : std_logic;
SIGNAL \extend_out[1]~input_o\ : std_logic;
SIGNAL \extend_out[2]~input_o\ : std_logic;
SIGNAL \extend_out[3]~input_o\ : std_logic;
SIGNAL \extend_out[4]~input_o\ : std_logic;
SIGNAL \extend_out[5]~input_o\ : std_logic;
SIGNAL \extend_out[6]~input_o\ : std_logic;
SIGNAL \extend_out[7]~input_o\ : std_logic;
SIGNAL \extend_out[8]~input_o\ : std_logic;
SIGNAL \extend_out[9]~input_o\ : std_logic;
SIGNAL \extend_out[10]~input_o\ : std_logic;
SIGNAL \extend_out[11]~input_o\ : std_logic;
SIGNAL \extend_out[12]~input_o\ : std_logic;
SIGNAL \extend_out[13]~input_o\ : std_logic;
SIGNAL \extend_out[14]~input_o\ : std_logic;
SIGNAL \extend_out[15]~input_o\ : std_logic;
SIGNAL \extend_out[16]~input_o\ : std_logic;
SIGNAL \extend_out[17]~input_o\ : std_logic;
SIGNAL \extend_out[18]~input_o\ : std_logic;
SIGNAL \extend_out[19]~input_o\ : std_logic;
SIGNAL \extend_out[20]~input_o\ : std_logic;
SIGNAL \extend_out[21]~input_o\ : std_logic;
SIGNAL \extend_out[22]~input_o\ : std_logic;
SIGNAL \extend_out[23]~input_o\ : std_logic;
SIGNAL \extend_out[24]~input_o\ : std_logic;
SIGNAL \extend_out[25]~input_o\ : std_logic;
SIGNAL \extend_out[26]~input_o\ : std_logic;
SIGNAL \extend_out[27]~input_o\ : std_logic;
SIGNAL \extend_out[28]~input_o\ : std_logic;
SIGNAL \extend_out[29]~input_o\ : std_logic;
SIGNAL \extend_out[30]~input_o\ : std_logic;
SIGNAL \extend_out[31]~input_o\ : std_logic;
SIGNAL \alu_result[0]~input_o\ : std_logic;
SIGNAL \alu_result[1]~input_o\ : std_logic;
SIGNAL \alu_result[2]~input_o\ : std_logic;
SIGNAL \alu_result[3]~input_o\ : std_logic;
SIGNAL \alu_result[4]~input_o\ : std_logic;
SIGNAL \alu_result[5]~input_o\ : std_logic;
SIGNAL \alu_result[6]~input_o\ : std_logic;
SIGNAL \alu_result[7]~input_o\ : std_logic;
SIGNAL \alu_result[8]~input_o\ : std_logic;
SIGNAL \alu_result[9]~input_o\ : std_logic;
SIGNAL \alu_result[10]~input_o\ : std_logic;
SIGNAL \alu_result[11]~input_o\ : std_logic;
SIGNAL \alu_result[12]~input_o\ : std_logic;
SIGNAL \alu_result[13]~input_o\ : std_logic;
SIGNAL \alu_result[14]~input_o\ : std_logic;
SIGNAL \alu_result[15]~input_o\ : std_logic;
SIGNAL \alu_result[16]~input_o\ : std_logic;
SIGNAL \alu_result[17]~input_o\ : std_logic;
SIGNAL \alu_result[18]~input_o\ : std_logic;
SIGNAL \alu_result[19]~input_o\ : std_logic;
SIGNAL \alu_result[20]~input_o\ : std_logic;
SIGNAL \alu_result[21]~input_o\ : std_logic;
SIGNAL \alu_result[22]~input_o\ : std_logic;
SIGNAL \alu_result[23]~input_o\ : std_logic;
SIGNAL \alu_result[24]~input_o\ : std_logic;
SIGNAL \alu_result[25]~input_o\ : std_logic;
SIGNAL \alu_result[26]~input_o\ : std_logic;
SIGNAL \alu_result[27]~input_o\ : std_logic;
SIGNAL \alu_result[28]~input_o\ : std_logic;
SIGNAL \alu_result[29]~input_o\ : std_logic;
SIGNAL \alu_result[30]~input_o\ : std_logic;
SIGNAL \alu_result[31]~input_o\ : std_logic;
SIGNAL \read_data[0]~input_o\ : std_logic;
SIGNAL \read_data[1]~input_o\ : std_logic;
SIGNAL \read_data[2]~input_o\ : std_logic;
SIGNAL \read_data[3]~input_o\ : std_logic;
SIGNAL \read_data[4]~input_o\ : std_logic;
SIGNAL \read_data[5]~input_o\ : std_logic;
SIGNAL \read_data[6]~input_o\ : std_logic;
SIGNAL \read_data[7]~input_o\ : std_logic;
SIGNAL \read_data[8]~input_o\ : std_logic;
SIGNAL \read_data[9]~input_o\ : std_logic;
SIGNAL \read_data[10]~input_o\ : std_logic;
SIGNAL \read_data[11]~input_o\ : std_logic;
SIGNAL \read_data[12]~input_o\ : std_logic;
SIGNAL \read_data[13]~input_o\ : std_logic;
SIGNAL \read_data[14]~input_o\ : std_logic;
SIGNAL \read_data[15]~input_o\ : std_logic;
SIGNAL \read_data[16]~input_o\ : std_logic;
SIGNAL \read_data[17]~input_o\ : std_logic;
SIGNAL \read_data[18]~input_o\ : std_logic;
SIGNAL \read_data[19]~input_o\ : std_logic;
SIGNAL \read_data[20]~input_o\ : std_logic;
SIGNAL \read_data[21]~input_o\ : std_logic;
SIGNAL \read_data[22]~input_o\ : std_logic;
SIGNAL \read_data[23]~input_o\ : std_logic;
SIGNAL \read_data[24]~input_o\ : std_logic;
SIGNAL \read_data[25]~input_o\ : std_logic;
SIGNAL \read_data[26]~input_o\ : std_logic;
SIGNAL \read_data[27]~input_o\ : std_logic;
SIGNAL \read_data[28]~input_o\ : std_logic;
SIGNAL \read_data[29]~input_o\ : std_logic;
SIGNAL \read_data[30]~input_o\ : std_logic;
SIGNAL \read_data[31]~input_o\ : std_logic;
SIGNAL \extend_out[0]~output_o\ : std_logic;
SIGNAL \extend_out[1]~output_o\ : std_logic;
SIGNAL \extend_out[2]~output_o\ : std_logic;
SIGNAL \extend_out[3]~output_o\ : std_logic;
SIGNAL \extend_out[4]~output_o\ : std_logic;
SIGNAL \extend_out[5]~output_o\ : std_logic;
SIGNAL \extend_out[6]~output_o\ : std_logic;
SIGNAL \extend_out[7]~output_o\ : std_logic;
SIGNAL \extend_out[8]~output_o\ : std_logic;
SIGNAL \extend_out[9]~output_o\ : std_logic;
SIGNAL \extend_out[10]~output_o\ : std_logic;
SIGNAL \extend_out[11]~output_o\ : std_logic;
SIGNAL \extend_out[12]~output_o\ : std_logic;
SIGNAL \extend_out[13]~output_o\ : std_logic;
SIGNAL \extend_out[14]~output_o\ : std_logic;
SIGNAL \extend_out[15]~output_o\ : std_logic;
SIGNAL \extend_out[16]~output_o\ : std_logic;
SIGNAL \extend_out[17]~output_o\ : std_logic;
SIGNAL \extend_out[18]~output_o\ : std_logic;
SIGNAL \extend_out[19]~output_o\ : std_logic;
SIGNAL \extend_out[20]~output_o\ : std_logic;
SIGNAL \extend_out[21]~output_o\ : std_logic;
SIGNAL \extend_out[22]~output_o\ : std_logic;
SIGNAL \extend_out[23]~output_o\ : std_logic;
SIGNAL \extend_out[24]~output_o\ : std_logic;
SIGNAL \extend_out[25]~output_o\ : std_logic;
SIGNAL \extend_out[26]~output_o\ : std_logic;
SIGNAL \extend_out[27]~output_o\ : std_logic;
SIGNAL \extend_out[28]~output_o\ : std_logic;
SIGNAL \extend_out[29]~output_o\ : std_logic;
SIGNAL \extend_out[30]~output_o\ : std_logic;
SIGNAL \extend_out[31]~output_o\ : std_logic;
SIGNAL \alu_result[0]~output_o\ : std_logic;
SIGNAL \alu_result[1]~output_o\ : std_logic;
SIGNAL \alu_result[2]~output_o\ : std_logic;
SIGNAL \alu_result[3]~output_o\ : std_logic;
SIGNAL \alu_result[4]~output_o\ : std_logic;
SIGNAL \alu_result[5]~output_o\ : std_logic;
SIGNAL \alu_result[6]~output_o\ : std_logic;
SIGNAL \alu_result[7]~output_o\ : std_logic;
SIGNAL \alu_result[8]~output_o\ : std_logic;
SIGNAL \alu_result[9]~output_o\ : std_logic;
SIGNAL \alu_result[10]~output_o\ : std_logic;
SIGNAL \alu_result[11]~output_o\ : std_logic;
SIGNAL \alu_result[12]~output_o\ : std_logic;
SIGNAL \alu_result[13]~output_o\ : std_logic;
SIGNAL \alu_result[14]~output_o\ : std_logic;
SIGNAL \alu_result[15]~output_o\ : std_logic;
SIGNAL \alu_result[16]~output_o\ : std_logic;
SIGNAL \alu_result[17]~output_o\ : std_logic;
SIGNAL \alu_result[18]~output_o\ : std_logic;
SIGNAL \alu_result[19]~output_o\ : std_logic;
SIGNAL \alu_result[20]~output_o\ : std_logic;
SIGNAL \alu_result[21]~output_o\ : std_logic;
SIGNAL \alu_result[22]~output_o\ : std_logic;
SIGNAL \alu_result[23]~output_o\ : std_logic;
SIGNAL \alu_result[24]~output_o\ : std_logic;
SIGNAL \alu_result[25]~output_o\ : std_logic;
SIGNAL \alu_result[26]~output_o\ : std_logic;
SIGNAL \alu_result[27]~output_o\ : std_logic;
SIGNAL \alu_result[28]~output_o\ : std_logic;
SIGNAL \alu_result[29]~output_o\ : std_logic;
SIGNAL \alu_result[30]~output_o\ : std_logic;
SIGNAL \alu_result[31]~output_o\ : std_logic;
SIGNAL \read_data[0]~output_o\ : std_logic;
SIGNAL \read_data[1]~output_o\ : std_logic;
SIGNAL \read_data[2]~output_o\ : std_logic;
SIGNAL \read_data[3]~output_o\ : std_logic;
SIGNAL \read_data[4]~output_o\ : std_logic;
SIGNAL \read_data[5]~output_o\ : std_logic;
SIGNAL \read_data[6]~output_o\ : std_logic;
SIGNAL \read_data[7]~output_o\ : std_logic;
SIGNAL \read_data[8]~output_o\ : std_logic;
SIGNAL \read_data[9]~output_o\ : std_logic;
SIGNAL \read_data[10]~output_o\ : std_logic;
SIGNAL \read_data[11]~output_o\ : std_logic;
SIGNAL \read_data[12]~output_o\ : std_logic;
SIGNAL \read_data[13]~output_o\ : std_logic;
SIGNAL \read_data[14]~output_o\ : std_logic;
SIGNAL \read_data[15]~output_o\ : std_logic;
SIGNAL \read_data[16]~output_o\ : std_logic;
SIGNAL \read_data[17]~output_o\ : std_logic;
SIGNAL \read_data[18]~output_o\ : std_logic;
SIGNAL \read_data[19]~output_o\ : std_logic;
SIGNAL \read_data[20]~output_o\ : std_logic;
SIGNAL \read_data[21]~output_o\ : std_logic;
SIGNAL \read_data[22]~output_o\ : std_logic;
SIGNAL \read_data[23]~output_o\ : std_logic;
SIGNAL \read_data[24]~output_o\ : std_logic;
SIGNAL \read_data[25]~output_o\ : std_logic;
SIGNAL \read_data[26]~output_o\ : std_logic;
SIGNAL \read_data[27]~output_o\ : std_logic;
SIGNAL \read_data[28]~output_o\ : std_logic;
SIGNAL \read_data[29]~output_o\ : std_logic;
SIGNAL \read_data[30]~output_o\ : std_logic;
SIGNAL \read_data[31]~output_o\ : std_logic;
SIGNAL \PC[4]~input_o\ : std_logic;
SIGNAL \PC[6]~input_o\ : std_logic;
SIGNAL \PC[5]~input_o\ : std_logic;
SIGNAL \PC[7]~input_o\ : std_logic;
SIGNAL \instuctionMemory|memory~1_combout\ : std_logic;
SIGNAL \PC[12]~input_o\ : std_logic;
SIGNAL \PC[9]~input_o\ : std_logic;
SIGNAL \PC[10]~input_o\ : std_logic;
SIGNAL \PC[11]~input_o\ : std_logic;
SIGNAL \PC[8]~input_o\ : std_logic;
SIGNAL \instuctionMemory|memory~2_combout\ : std_logic;
SIGNAL \PC[3]~input_o\ : std_logic;
SIGNAL \PC[2]~input_o\ : std_logic;
SIGNAL \PC[1]~input_o\ : std_logic;
SIGNAL \PC[0]~input_o\ : std_logic;
SIGNAL \instuctionMemory|memory~0_combout\ : std_logic;
SIGNAL \instuctionMemory|memory~3_combout\ : std_logic;
SIGNAL \alu_control[2]~input_o\ : std_logic;
SIGNAL \alu_control[1]~input_o\ : std_logic;
SIGNAL \alu_control[0]~input_o\ : std_logic;
SIGNAL \alu_unit|Add0~9_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \alu_unit|Add0~15_combout\ : std_logic;
SIGNAL \reg|registers~39_q\ : std_logic;
SIGNAL \reg|registers~1063_combout\ : std_logic;
SIGNAL \alu_unit|Add0~5_cout\ : std_logic;
SIGNAL \alu_unit|Add0~7\ : std_logic;
SIGNAL \alu_unit|Add0~13\ : std_logic;
SIGNAL \alu_unit|Add0~17\ : std_logic;
SIGNAL \alu_unit|Add0~21\ : std_logic;
SIGNAL \alu_unit|Add0~23\ : std_logic;
SIGNAL \alu_unit|Add0~26\ : std_logic;
SIGNAL \alu_unit|Add0~29\ : std_logic;
SIGNAL \alu_unit|Add0~32\ : std_logic;
SIGNAL \alu_unit|Add0~35\ : std_logic;
SIGNAL \alu_unit|Add0~38\ : std_logic;
SIGNAL \alu_unit|Add0~41\ : std_logic;
SIGNAL \alu_unit|Add0~44\ : std_logic;
SIGNAL \alu_unit|Add0~47\ : std_logic;
SIGNAL \alu_unit|Add0~49_combout\ : std_logic;
SIGNAL \alu_unit|Add0~51_combout\ : std_logic;
SIGNAL \data_memory|memory~7_combout\ : std_logic;
SIGNAL \alu_unit|Add0~6_combout\ : std_logic;
SIGNAL \alu_unit|Add0~106_combout\ : std_logic;
SIGNAL \alu_unit|Add0~8_combout\ : std_logic;
SIGNAL \alu_unit|Add0~11_combout\ : std_logic;
SIGNAL \alu_unit|Add0~46_combout\ : std_logic;
SIGNAL \alu_unit|Add0~48_combout\ : std_logic;
SIGNAL \alu_unit|Add0~16_combout\ : std_logic;
SIGNAL \alu_unit|Add0~18_combout\ : std_logic;
SIGNAL \alu_unit|Add0~34_combout\ : std_logic;
SIGNAL \alu_unit|Add0~36_combout\ : std_logic;
SIGNAL \alu_unit|Add0~37_combout\ : std_logic;
SIGNAL \alu_unit|Add0~39_combout\ : std_logic;
SIGNAL \alu_unit|Add0~40_combout\ : std_logic;
SIGNAL \alu_unit|Add0~42_combout\ : std_logic;
SIGNAL \alu_unit|Add0~19_combout\ : std_logic;
SIGNAL \alu_unit|Add0~20_combout\ : std_logic;
SIGNAL \alu_unit|Add0~107_combout\ : std_logic;
SIGNAL \alu_unit|Add0~12_combout\ : std_logic;
SIGNAL \alu_unit|Add0~14_combout\ : std_logic;
SIGNAL \alu_unit|Add0~25_combout\ : std_logic;
SIGNAL \alu_unit|Add0~27_combout\ : std_logic;
SIGNAL \alu_unit|Add0~22_combout\ : std_logic;
SIGNAL \alu_unit|Add0~24_combout\ : std_logic;
SIGNAL \alu_unit|Add0~31_combout\ : std_logic;
SIGNAL \alu_unit|Add0~33_combout\ : std_logic;
SIGNAL \alu_unit|Add0~28_combout\ : std_logic;
SIGNAL \alu_unit|Add0~30_combout\ : std_logic;
SIGNAL \data_memory|memory~2_combout\ : std_logic;
SIGNAL \alu_unit|Add0~43_combout\ : std_logic;
SIGNAL \alu_unit|Add0~45_combout\ : std_logic;
SIGNAL \data_memory|memory~3_combout\ : std_logic;
SIGNAL \data_memory|memory~4_combout\ : std_logic;
SIGNAL \data_memory|memory~5_combout\ : std_logic;
SIGNAL \data_memory|memory~6_combout\ : std_logic;
SIGNAL \reg|registers~41_q\ : std_logic;
SIGNAL \reg|registers~1062_combout\ : std_logic;
SIGNAL \alu_unit|LessThan0~1_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~3_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~5_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~7_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~9_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~11_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~13_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~15_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~17_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~19_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~21_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~23_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~25_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~27_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~29_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~31_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~33_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~35_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~37_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~39_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~41_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~43_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~45_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~47_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~49_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~51_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~53_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~55_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~56_combout\ : std_logic;
SIGNAL \alu_unit|Add0~10_combout\ : std_logic;
SIGNAL \alu_unit|Add0~50\ : std_logic;
SIGNAL \alu_unit|Add0~52_combout\ : std_logic;
SIGNAL \alu_unit|Add0~54_combout\ : std_logic;
SIGNAL \alu_unit|Add0~53\ : std_logic;
SIGNAL \alu_unit|Add0~55_combout\ : std_logic;
SIGNAL \alu_unit|Add0~57_combout\ : std_logic;
SIGNAL \alu_unit|Add0~56\ : std_logic;
SIGNAL \alu_unit|Add0~58_combout\ : std_logic;
SIGNAL \alu_unit|Add0~60_combout\ : std_logic;
SIGNAL \alu_unit|Add0~59\ : std_logic;
SIGNAL \alu_unit|Add0~61_combout\ : std_logic;
SIGNAL \alu_unit|Add0~63_combout\ : std_logic;
SIGNAL \alu_unit|Add0~62\ : std_logic;
SIGNAL \alu_unit|Add0~64_combout\ : std_logic;
SIGNAL \alu_unit|Add0~66_combout\ : std_logic;
SIGNAL \alu_unit|Add0~65\ : std_logic;
SIGNAL \alu_unit|Add0~67_combout\ : std_logic;
SIGNAL \alu_unit|Add0~69_combout\ : std_logic;
SIGNAL \alu_unit|Add0~68\ : std_logic;
SIGNAL \alu_unit|Add0~70_combout\ : std_logic;
SIGNAL \alu_unit|Add0~72_combout\ : std_logic;
SIGNAL \alu_unit|Add0~71\ : std_logic;
SIGNAL \alu_unit|Add0~73_combout\ : std_logic;
SIGNAL \alu_unit|Add0~75_combout\ : std_logic;
SIGNAL \alu_unit|Add0~74\ : std_logic;
SIGNAL \alu_unit|Add0~76_combout\ : std_logic;
SIGNAL \alu_unit|Add0~78_combout\ : std_logic;
SIGNAL \alu_unit|Add0~77\ : std_logic;
SIGNAL \alu_unit|Add0~79_combout\ : std_logic;
SIGNAL \alu_unit|Add0~81_combout\ : std_logic;
SIGNAL \alu_unit|Add0~80\ : std_logic;
SIGNAL \alu_unit|Add0~82_combout\ : std_logic;
SIGNAL \alu_unit|Add0~84_combout\ : std_logic;
SIGNAL \alu_unit|Add0~83\ : std_logic;
SIGNAL \alu_unit|Add0~85_combout\ : std_logic;
SIGNAL \alu_unit|Add0~87_combout\ : std_logic;
SIGNAL \alu_unit|Add0~86\ : std_logic;
SIGNAL \alu_unit|Add0~88_combout\ : std_logic;
SIGNAL \alu_unit|Add0~90_combout\ : std_logic;
SIGNAL \alu_unit|Add0~89\ : std_logic;
SIGNAL \alu_unit|Add0~91_combout\ : std_logic;
SIGNAL \alu_unit|Add0~93_combout\ : std_logic;
SIGNAL \alu_unit|Add0~92\ : std_logic;
SIGNAL \alu_unit|Add0~94_combout\ : std_logic;
SIGNAL \alu_unit|Add0~96_combout\ : std_logic;
SIGNAL \alu_unit|Add0~95\ : std_logic;
SIGNAL \alu_unit|Add0~97_combout\ : std_logic;
SIGNAL \alu_unit|Add0~99_combout\ : std_logic;
SIGNAL \alu_unit|Add0~98\ : std_logic;
SIGNAL \alu_unit|Add0~100_combout\ : std_logic;
SIGNAL \alu_unit|Add0~102_combout\ : std_logic;
SIGNAL \alu_unit|Add0~101\ : std_logic;
SIGNAL \alu_unit|Add0~103_combout\ : std_logic;
SIGNAL \alu_unit|Add0~105_combout\ : std_logic;
SIGNAL \instuctionMemory|ALT_INV_memory~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_PC <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(PC);
ww_clk <= clk;
ww_alu_control <= alu_control;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\instuctionMemory|ALT_INV_memory~3_combout\ <= NOT \instuctionMemory|memory~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X9_Y24_N16
\extend_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \extend_out[0]~output_o\);

-- Location: IOOBUF_X25_Y24_N23
\extend_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \extend_out[1]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\extend_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\extend_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\extend_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[4]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\extend_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[5]~output_o\);

-- Location: IOOBUF_X3_Y24_N9
\extend_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\extend_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\extend_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[8]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\extend_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[9]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\extend_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\extend_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[11]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\extend_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[12]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\extend_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\extend_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[14]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\extend_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[15]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\extend_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[16]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\extend_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[17]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\extend_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[18]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\extend_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[19]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\extend_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[20]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\extend_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[21]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\extend_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[22]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\extend_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[23]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\extend_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[24]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\extend_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[25]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\extend_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[26]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\extend_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[27]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\extend_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[28]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\extend_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[29]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\extend_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[30]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\extend_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[31]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\alu_result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~10_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\alu_result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~14_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[1]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\alu_result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~18_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[2]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\alu_result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~107_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[3]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\alu_result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~24_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\alu_result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~27_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[5]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\alu_result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~30_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[6]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\alu_result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~33_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[7]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\alu_result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~36_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[8]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\alu_result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~39_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[9]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\alu_result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~42_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[10]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\alu_result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~45_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\alu_result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~48_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[12]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\alu_result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~51_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[13]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\alu_result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~54_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[14]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\alu_result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~57_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[15]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\alu_result[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~60_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[16]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\alu_result[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~63_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[17]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\alu_result[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~66_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[18]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\alu_result[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~69_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[19]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\alu_result[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~72_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[20]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\alu_result[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~75_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[21]~output_o\);

-- Location: IOOBUF_X28_Y0_N9
\alu_result[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~78_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[22]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\alu_result[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~81_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[23]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\alu_result[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~84_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[24]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\alu_result[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~87_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[25]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\alu_result[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~90_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[26]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\alu_result[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~93_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[27]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\alu_result[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~96_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[28]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\alu_result[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~99_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[29]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\alu_result[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~102_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[30]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\alu_result[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~105_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[31]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\read_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\read_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory~6_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \read_data[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\read_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\read_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory~6_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \read_data[3]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\read_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\read_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\read_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[6]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\read_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[7]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\read_data[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\read_data[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[9]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\read_data[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[10]~output_o\);

-- Location: IOOBUF_X3_Y24_N16
\read_data[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[11]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\read_data[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[12]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\read_data[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[13]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\read_data[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[14]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\read_data[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[15]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\read_data[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[16]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\read_data[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[17]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\read_data[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[18]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\read_data[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[19]~output_o\);

-- Location: IOOBUF_X3_Y24_N2
\read_data[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[20]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\read_data[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[21]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\read_data[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[22]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\read_data[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[23]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\read_data[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[24]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\read_data[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[25]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\read_data[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[26]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\read_data[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[27]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\read_data[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[28]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\read_data[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[29]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\read_data[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[30]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\read_data[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \read_data[31]~output_o\);

-- Location: IOIBUF_X34_Y17_N22
\PC[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(4),
	o => \PC[4]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\PC[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(6),
	o => \PC[6]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\PC[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(5),
	o => \PC[5]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\PC[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(7),
	o => \PC[7]~input_o\);

-- Location: LCCOMB_X33_Y10_N20
\instuctionMemory|memory~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instuctionMemory|memory~1_combout\ = (!\PC[4]~input_o\ & (!\PC[6]~input_o\ & (!\PC[5]~input_o\ & !\PC[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[4]~input_o\,
	datab => \PC[6]~input_o\,
	datac => \PC[5]~input_o\,
	datad => \PC[7]~input_o\,
	combout => \instuctionMemory|memory~1_combout\);

-- Location: IOIBUF_X30_Y0_N15
\PC[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(12),
	o => \PC[12]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\PC[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(9),
	o => \PC[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\PC[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(10),
	o => \PC[10]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\PC[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(11),
	o => \PC[11]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\PC[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(8),
	o => \PC[8]~input_o\);

-- Location: LCCOMB_X30_Y8_N30
\instuctionMemory|memory~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instuctionMemory|memory~2_combout\ = (!\PC[9]~input_o\ & (!\PC[10]~input_o\ & (!\PC[11]~input_o\ & !\PC[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[9]~input_o\,
	datab => \PC[10]~input_o\,
	datac => \PC[11]~input_o\,
	datad => \PC[8]~input_o\,
	combout => \instuctionMemory|memory~2_combout\);

-- Location: IOIBUF_X34_Y19_N1
\PC[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(3),
	o => \PC[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\PC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(2),
	o => \PC[2]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\PC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(1),
	o => \PC[1]~input_o\);

-- Location: IOIBUF_X34_Y20_N1
\PC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(0),
	o => \PC[0]~input_o\);

-- Location: LCCOMB_X30_Y8_N16
\instuctionMemory|memory~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instuctionMemory|memory~0_combout\ = (!\PC[3]~input_o\ & (!\PC[2]~input_o\ & (!\PC[1]~input_o\ & !\PC[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[2]~input_o\,
	datac => \PC[1]~input_o\,
	datad => \PC[0]~input_o\,
	combout => \instuctionMemory|memory~0_combout\);

-- Location: LCCOMB_X30_Y8_N24
\instuctionMemory|memory~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \instuctionMemory|memory~3_combout\ = (\instuctionMemory|memory~1_combout\ & (!\PC[12]~input_o\ & (\instuctionMemory|memory~2_combout\ & \instuctionMemory|memory~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \PC[12]~input_o\,
	datac => \instuctionMemory|memory~2_combout\,
	datad => \instuctionMemory|memory~0_combout\,
	combout => \instuctionMemory|memory~3_combout\);

-- Location: IOIBUF_X25_Y0_N22
\alu_control[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_control(2),
	o => \alu_control[2]~input_o\);

-- Location: IOIBUF_X34_Y8_N22
\alu_control[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_control(1),
	o => \alu_control[1]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\alu_control[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_control(0),
	o => \alu_control[0]~input_o\);

-- Location: LCCOMB_X30_Y8_N20
\alu_unit|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~9_combout\ = (!\alu_control[1]~input_o\ & !\alu_control[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_control[1]~input_o\,
	datad => \alu_control[0]~input_o\,
	combout => \alu_unit|Add0~9_combout\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y8_N18
\alu_unit|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~15_combout\ = \instuctionMemory|memory~3_combout\ $ (\alu_control[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => \alu_control[0]~input_o\,
	combout => \alu_unit|Add0~15_combout\);

-- Location: FF_X32_Y8_N7
\reg|registers~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_memory|memory~6_combout\,
	ena => \instuctionMemory|ALT_INV_memory~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~39_q\);

-- Location: LCCOMB_X32_Y8_N20
\reg|registers~1063\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1063_combout\ = (!\instuctionMemory|memory~3_combout\ & \reg|registers~39_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => \reg|registers~39_q\,
	combout => \reg|registers~1063_combout\);

-- Location: LCCOMB_X31_Y8_N16
\alu_unit|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~5_cout\ = CARRY(\alu_control[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_control[0]~input_o\,
	datad => VCC,
	cout => \alu_unit|Add0~5_cout\);

-- Location: LCCOMB_X31_Y8_N18
\alu_unit|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~6_combout\ = (\alu_control[0]~input_o\ & (!\alu_unit|Add0~5_cout\)) # (!\alu_control[0]~input_o\ & ((\alu_unit|Add0~5_cout\) # (GND)))
-- \alu_unit|Add0~7\ = CARRY((!\alu_unit|Add0~5_cout\) # (!\alu_control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_control[0]~input_o\,
	datad => VCC,
	cin => \alu_unit|Add0~5_cout\,
	combout => \alu_unit|Add0~6_combout\,
	cout => \alu_unit|Add0~7\);

-- Location: LCCOMB_X31_Y8_N20
\alu_unit|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~12_combout\ = ((\reg|registers~1063_combout\ $ (\alu_control[0]~input_o\ $ (!\alu_unit|Add0~7\)))) # (GND)
-- \alu_unit|Add0~13\ = CARRY((\reg|registers~1063_combout\ & ((\alu_control[0]~input_o\) # (!\alu_unit|Add0~7\))) # (!\reg|registers~1063_combout\ & (\alu_control[0]~input_o\ & !\alu_unit|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1063_combout\,
	datab => \alu_control[0]~input_o\,
	datad => VCC,
	cin => \alu_unit|Add0~7\,
	combout => \alu_unit|Add0~12_combout\,
	cout => \alu_unit|Add0~13\);

-- Location: LCCOMB_X31_Y8_N22
\alu_unit|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~16_combout\ = (\instuctionMemory|memory~3_combout\ & ((\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~13\ & VCC)) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~13\)))) # (!\instuctionMemory|memory~3_combout\ & ((\alu_unit|Add0~15_combout\ 
-- & (!\alu_unit|Add0~13\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~13\) # (GND)))))
-- \alu_unit|Add0~17\ = CARRY((\instuctionMemory|memory~3_combout\ & (!\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~13\)) # (!\instuctionMemory|memory~3_combout\ & ((!\alu_unit|Add0~13\) # (!\alu_unit|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~13\,
	combout => \alu_unit|Add0~16_combout\,
	cout => \alu_unit|Add0~17\);

-- Location: LCCOMB_X31_Y8_N24
\alu_unit|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~20_combout\ = ((\alu_unit|Add0~15_combout\ $ (\reg|registers~1062_combout\ $ (!\alu_unit|Add0~17\)))) # (GND)
-- \alu_unit|Add0~21\ = CARRY((\alu_unit|Add0~15_combout\ & ((\reg|registers~1062_combout\) # (!\alu_unit|Add0~17\))) # (!\alu_unit|Add0~15_combout\ & (\reg|registers~1062_combout\ & !\alu_unit|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~15_combout\,
	datab => \reg|registers~1062_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~17\,
	combout => \alu_unit|Add0~20_combout\,
	cout => \alu_unit|Add0~21\);

-- Location: LCCOMB_X31_Y8_N26
\alu_unit|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~22_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~21\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~21\) # (GND)))
-- \alu_unit|Add0~23\ = CARRY((!\alu_unit|Add0~21\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~21\,
	combout => \alu_unit|Add0~22_combout\,
	cout => \alu_unit|Add0~23\);

-- Location: LCCOMB_X31_Y8_N28
\alu_unit|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~25_combout\ = (\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~23\ $ (GND))) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~23\ & VCC))
-- \alu_unit|Add0~26\ = CARRY((\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~23\,
	combout => \alu_unit|Add0~25_combout\,
	cout => \alu_unit|Add0~26\);

-- Location: LCCOMB_X31_Y8_N30
\alu_unit|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~28_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~26\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~26\) # (GND)))
-- \alu_unit|Add0~29\ = CARRY((!\alu_unit|Add0~26\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~26\,
	combout => \alu_unit|Add0~28_combout\,
	cout => \alu_unit|Add0~29\);

-- Location: LCCOMB_X31_Y7_N0
\alu_unit|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~31_combout\ = (\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~29\ $ (GND))) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~29\ & VCC))
-- \alu_unit|Add0~32\ = CARRY((\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~29\,
	combout => \alu_unit|Add0~31_combout\,
	cout => \alu_unit|Add0~32\);

-- Location: LCCOMB_X31_Y7_N2
\alu_unit|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~34_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~32\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~32\) # (GND)))
-- \alu_unit|Add0~35\ = CARRY((!\alu_unit|Add0~32\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~32\,
	combout => \alu_unit|Add0~34_combout\,
	cout => \alu_unit|Add0~35\);

-- Location: LCCOMB_X31_Y7_N4
\alu_unit|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~37_combout\ = (\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~35\ $ (GND))) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~35\ & VCC))
-- \alu_unit|Add0~38\ = CARRY((\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~35\,
	combout => \alu_unit|Add0~37_combout\,
	cout => \alu_unit|Add0~38\);

-- Location: LCCOMB_X31_Y7_N6
\alu_unit|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~40_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~38\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~38\) # (GND)))
-- \alu_unit|Add0~41\ = CARRY((!\alu_unit|Add0~38\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~38\,
	combout => \alu_unit|Add0~40_combout\,
	cout => \alu_unit|Add0~41\);

-- Location: LCCOMB_X31_Y7_N8
\alu_unit|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~43_combout\ = (\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~41\ $ (GND))) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~41\ & VCC))
-- \alu_unit|Add0~44\ = CARRY((\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~41\,
	combout => \alu_unit|Add0~43_combout\,
	cout => \alu_unit|Add0~44\);

-- Location: LCCOMB_X31_Y7_N10
\alu_unit|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~46_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~44\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~44\) # (GND)))
-- \alu_unit|Add0~47\ = CARRY((!\alu_unit|Add0~44\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~44\,
	combout => \alu_unit|Add0~46_combout\,
	cout => \alu_unit|Add0~47\);

-- Location: LCCOMB_X31_Y7_N12
\alu_unit|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~49_combout\ = ((\alu_unit|Add0~15_combout\ $ (\instuctionMemory|memory~3_combout\ $ (!\alu_unit|Add0~47\)))) # (GND)
-- \alu_unit|Add0~50\ = CARRY((\alu_unit|Add0~15_combout\ & ((\instuctionMemory|memory~3_combout\) # (!\alu_unit|Add0~47\))) # (!\alu_unit|Add0~15_combout\ & (\instuctionMemory|memory~3_combout\ & !\alu_unit|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~15_combout\,
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~47\,
	combout => \alu_unit|Add0~49_combout\,
	cout => \alu_unit|Add0~50\);

-- Location: LCCOMB_X32_Y8_N26
\alu_unit|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~51_combout\ = (!\alu_control[2]~input_o\ & ((\alu_control[1]~input_o\ & (\instuctionMemory|memory~3_combout\)) # (!\alu_control[1]~input_o\ & ((\alu_unit|Add0~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datab => \alu_control[1]~input_o\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_unit|Add0~49_combout\,
	combout => \alu_unit|Add0~51_combout\);

-- Location: LCCOMB_X31_Y8_N12
\data_memory|memory~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory~7_combout\ = ((\alu_control[1]~input_o\) # (\alu_control[0]~input_o\)) # (!\alu_control[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_control[1]~input_o\,
	datac => \alu_control[0]~input_o\,
	combout => \data_memory|memory~7_combout\);

-- Location: LCCOMB_X30_Y8_N28
\alu_unit|Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~106_combout\ = (\alu_unit|Add0~6_combout\ & (!\alu_control[2]~input_o\ & !\alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~6_combout\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~106_combout\);

-- Location: LCCOMB_X30_Y8_N10
\alu_unit|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~8_combout\ = (!\alu_control[2]~input_o\ & !\alu_control[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_control[2]~input_o\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~8_combout\);

-- Location: LCCOMB_X30_Y8_N4
\alu_unit|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~11_combout\ = (\alu_control[1]~input_o\ & (!\alu_control[2]~input_o\ & \alu_control[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_control[1]~input_o\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_control[0]~input_o\,
	combout => \alu_unit|Add0~11_combout\);

-- Location: LCCOMB_X32_Y8_N0
\alu_unit|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~48_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~46_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\alu_unit|Add0~11_combout\ & 
-- ((\instuctionMemory|memory~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~11_combout\,
	datac => \alu_unit|Add0~46_combout\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \alu_unit|Add0~48_combout\);

-- Location: LCCOMB_X32_Y8_N24
\alu_unit|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~18_combout\ = (!\alu_control[2]~input_o\ & ((\alu_control[1]~input_o\ & (\instuctionMemory|memory~3_combout\)) # (!\alu_control[1]~input_o\ & ((\alu_unit|Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \instuctionMemory|memory~3_combout\,
	datac => \alu_unit|Add0~16_combout\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~18_combout\);

-- Location: LCCOMB_X32_Y8_N12
\alu_unit|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~36_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~34_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\alu_unit|Add0~11_combout\ & 
-- ((\instuctionMemory|memory~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~11_combout\,
	datac => \alu_unit|Add0~34_combout\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \alu_unit|Add0~36_combout\);

-- Location: LCCOMB_X32_Y8_N22
\alu_unit|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~39_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~37_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\alu_unit|Add0~11_combout\ & 
-- ((\instuctionMemory|memory~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~11_combout\,
	datac => \alu_unit|Add0~37_combout\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \alu_unit|Add0~39_combout\);

-- Location: LCCOMB_X32_Y8_N8
\alu_unit|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~42_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~40_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\alu_unit|Add0~11_combout\ & 
-- ((\instuctionMemory|memory~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~11_combout\,
	datac => \alu_unit|Add0~40_combout\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \alu_unit|Add0~42_combout\);

-- Location: LCCOMB_X31_Y8_N8
\alu_unit|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~19_combout\ = (\alu_unit|Add0~11_combout\ & ((\instuctionMemory|memory~3_combout\) # (\reg|registers~41_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datac => \alu_unit|Add0~11_combout\,
	datad => \reg|registers~41_q\,
	combout => \alu_unit|Add0~19_combout\);

-- Location: LCCOMB_X31_Y8_N14
\alu_unit|Add0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~107_combout\ = (\alu_unit|Add0~19_combout\) # ((!\alu_control[1]~input_o\ & (!\alu_control[2]~input_o\ & \alu_unit|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~19_combout\,
	datab => \alu_control[1]~input_o\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_unit|Add0~20_combout\,
	combout => \alu_unit|Add0~107_combout\);

-- Location: LCCOMB_X32_Y8_N2
\alu_unit|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~14_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~12_combout\) # ((\reg|registers~1063_combout\ & \alu_unit|Add0~11_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\reg|registers~1063_combout\ & (\alu_unit|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \reg|registers~1063_combout\,
	datac => \alu_unit|Add0~11_combout\,
	datad => \alu_unit|Add0~12_combout\,
	combout => \alu_unit|Add0~14_combout\);

-- Location: LCCOMB_X31_Y8_N0
\alu_unit|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~27_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~25_combout\) # ((\instuctionMemory|memory~3_combout\ & \alu_unit|Add0~11_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\instuctionMemory|memory~3_combout\ & 
-- (\alu_unit|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \instuctionMemory|memory~3_combout\,
	datac => \alu_unit|Add0~11_combout\,
	datad => \alu_unit|Add0~25_combout\,
	combout => \alu_unit|Add0~27_combout\);

-- Location: LCCOMB_X31_Y8_N6
\alu_unit|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~24_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~22_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\alu_unit|Add0~11_combout\ & 
-- ((\instuctionMemory|memory~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~11_combout\,
	datac => \alu_unit|Add0~22_combout\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \alu_unit|Add0~24_combout\);

-- Location: LCCOMB_X32_Y8_N14
\alu_unit|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~33_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~31_combout\) # ((\instuctionMemory|memory~3_combout\ & \alu_unit|Add0~11_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\instuctionMemory|memory~3_combout\ & 
-- (\alu_unit|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \instuctionMemory|memory~3_combout\,
	datac => \alu_unit|Add0~11_combout\,
	datad => \alu_unit|Add0~31_combout\,
	combout => \alu_unit|Add0~33_combout\);

-- Location: LCCOMB_X31_Y8_N10
\alu_unit|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~30_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~28_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\alu_unit|Add0~11_combout\ & 
-- ((\instuctionMemory|memory~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~11_combout\,
	datac => \alu_unit|Add0~28_combout\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \alu_unit|Add0~30_combout\);

-- Location: LCCOMB_X32_Y8_N4
\data_memory|memory~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory~2_combout\ = (!\alu_unit|Add0~27_combout\ & (!\alu_unit|Add0~24_combout\ & (!\alu_unit|Add0~33_combout\ & !\alu_unit|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~27_combout\,
	datab => \alu_unit|Add0~24_combout\,
	datac => \alu_unit|Add0~33_combout\,
	datad => \alu_unit|Add0~30_combout\,
	combout => \data_memory|memory~2_combout\);

-- Location: LCCOMB_X32_Y8_N18
\alu_unit|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~45_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~43_combout\) # ((\instuctionMemory|memory~3_combout\ & \alu_unit|Add0~11_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\instuctionMemory|memory~3_combout\ & 
-- (\alu_unit|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \instuctionMemory|memory~3_combout\,
	datac => \alu_unit|Add0~11_combout\,
	datad => \alu_unit|Add0~43_combout\,
	combout => \alu_unit|Add0~45_combout\);

-- Location: LCCOMB_X32_Y8_N10
\data_memory|memory~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory~3_combout\ = (!\alu_unit|Add0~107_combout\ & (!\alu_unit|Add0~14_combout\ & (\data_memory|memory~2_combout\ & !\alu_unit|Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~107_combout\,
	datab => \alu_unit|Add0~14_combout\,
	datac => \data_memory|memory~2_combout\,
	datad => \alu_unit|Add0~45_combout\,
	combout => \data_memory|memory~3_combout\);

-- Location: LCCOMB_X32_Y8_N28
\data_memory|memory~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory~4_combout\ = (!\alu_unit|Add0~36_combout\ & (!\alu_unit|Add0~39_combout\ & (!\alu_unit|Add0~42_combout\ & \data_memory|memory~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~36_combout\,
	datab => \alu_unit|Add0~39_combout\,
	datac => \alu_unit|Add0~42_combout\,
	datad => \data_memory|memory~3_combout\,
	combout => \data_memory|memory~4_combout\);

-- Location: LCCOMB_X32_Y8_N30
\data_memory|memory~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory~5_combout\ = (!\alu_unit|Add0~106_combout\ & (!\alu_unit|Add0~48_combout\ & (!\alu_unit|Add0~18_combout\ & \data_memory|memory~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~106_combout\,
	datab => \alu_unit|Add0~48_combout\,
	datac => \alu_unit|Add0~18_combout\,
	datad => \data_memory|memory~4_combout\,
	combout => \data_memory|memory~5_combout\);

-- Location: LCCOMB_X32_Y8_N6
\data_memory|memory~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory~6_combout\ = (\alu_unit|Add0~51_combout\ & (\data_memory|memory~5_combout\ & ((\data_memory|memory~7_combout\) # (!\alu_unit|LessThan0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~51_combout\,
	datab => \data_memory|memory~7_combout\,
	datac => \data_memory|memory~5_combout\,
	datad => \alu_unit|LessThan0~56_combout\,
	combout => \data_memory|memory~6_combout\);

-- Location: FF_X32_Y8_N17
\reg|registers~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_memory|memory~6_combout\,
	sload => VCC,
	ena => \instuctionMemory|ALT_INV_memory~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~41_q\);

-- Location: LCCOMB_X32_Y8_N16
\reg|registers~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1062_combout\ = (\reg|registers~41_q\ & !\instuctionMemory|memory~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg|registers~41_q\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \reg|registers~1062_combout\);

-- Location: LCCOMB_X33_Y8_N4
\alu_unit|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~1_cout\ = CARRY((!\reg|registers~1062_combout\ & \instuctionMemory|memory~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1062_combout\,
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cout => \alu_unit|LessThan0~1_cout\);

-- Location: LCCOMB_X33_Y8_N6
\alu_unit|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~3_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~1_cout\,
	cout => \alu_unit|LessThan0~3_cout\);

-- Location: LCCOMB_X33_Y8_N8
\alu_unit|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~5_cout\ = CARRY((\instuctionMemory|memory~3_combout\) # (!\alu_unit|LessThan0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~3_cout\,
	cout => \alu_unit|LessThan0~5_cout\);

-- Location: LCCOMB_X33_Y8_N10
\alu_unit|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~7_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~5_cout\,
	cout => \alu_unit|LessThan0~7_cout\);

-- Location: LCCOMB_X33_Y8_N12
\alu_unit|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~9_cout\ = CARRY((\instuctionMemory|memory~3_combout\) # (!\alu_unit|LessThan0~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~7_cout\,
	cout => \alu_unit|LessThan0~9_cout\);

-- Location: LCCOMB_X33_Y8_N14
\alu_unit|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~11_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~9_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~9_cout\,
	cout => \alu_unit|LessThan0~11_cout\);

-- Location: LCCOMB_X33_Y8_N16
\alu_unit|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~13_cout\ = CARRY((\instuctionMemory|memory~3_combout\) # (!\alu_unit|LessThan0~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~11_cout\,
	cout => \alu_unit|LessThan0~13_cout\);

-- Location: LCCOMB_X33_Y8_N18
\alu_unit|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~15_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~13_cout\,
	cout => \alu_unit|LessThan0~15_cout\);

-- Location: LCCOMB_X33_Y8_N20
\alu_unit|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~17_cout\ = CARRY((\instuctionMemory|memory~3_combout\) # (!\alu_unit|LessThan0~15_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~15_cout\,
	cout => \alu_unit|LessThan0~17_cout\);

-- Location: LCCOMB_X33_Y8_N22
\alu_unit|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~19_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~17_cout\,
	cout => \alu_unit|LessThan0~19_cout\);

-- Location: LCCOMB_X33_Y8_N24
\alu_unit|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~21_cout\ = CARRY(!\alu_unit|LessThan0~19_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \alu_unit|LessThan0~19_cout\,
	cout => \alu_unit|LessThan0~21_cout\);

-- Location: LCCOMB_X33_Y8_N26
\alu_unit|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~23_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~21_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~21_cout\,
	cout => \alu_unit|LessThan0~23_cout\);

-- Location: LCCOMB_X33_Y8_N28
\alu_unit|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~25_cout\ = CARRY((\instuctionMemory|memory~3_combout\) # (!\alu_unit|LessThan0~23_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~23_cout\,
	cout => \alu_unit|LessThan0~25_cout\);

-- Location: LCCOMB_X33_Y8_N30
\alu_unit|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~27_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~25_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~25_cout\,
	cout => \alu_unit|LessThan0~27_cout\);

-- Location: LCCOMB_X33_Y7_N0
\alu_unit|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~29_cout\ = CARRY((\instuctionMemory|memory~3_combout\) # (!\alu_unit|LessThan0~27_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~27_cout\,
	cout => \alu_unit|LessThan0~29_cout\);

-- Location: LCCOMB_X33_Y7_N2
\alu_unit|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~31_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~29_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~29_cout\,
	cout => \alu_unit|LessThan0~31_cout\);

-- Location: LCCOMB_X33_Y7_N4
\alu_unit|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~33_cout\ = CARRY((\instuctionMemory|memory~3_combout\) # (!\alu_unit|LessThan0~31_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~31_cout\,
	cout => \alu_unit|LessThan0~33_cout\);

-- Location: LCCOMB_X33_Y7_N6
\alu_unit|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~35_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~33_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~33_cout\,
	cout => \alu_unit|LessThan0~35_cout\);

-- Location: LCCOMB_X33_Y7_N8
\alu_unit|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~37_cout\ = CARRY((\instuctionMemory|memory~3_combout\) # (!\alu_unit|LessThan0~35_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~35_cout\,
	cout => \alu_unit|LessThan0~37_cout\);

-- Location: LCCOMB_X33_Y7_N10
\alu_unit|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~39_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~37_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~37_cout\,
	cout => \alu_unit|LessThan0~39_cout\);

-- Location: LCCOMB_X33_Y7_N12
\alu_unit|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~41_cout\ = CARRY((\instuctionMemory|memory~3_combout\) # (!\alu_unit|LessThan0~39_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~39_cout\,
	cout => \alu_unit|LessThan0~41_cout\);

-- Location: LCCOMB_X33_Y7_N14
\alu_unit|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~43_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~41_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~41_cout\,
	cout => \alu_unit|LessThan0~43_cout\);

-- Location: LCCOMB_X33_Y7_N16
\alu_unit|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~45_cout\ = CARRY((\instuctionMemory|memory~3_combout\) # (!\alu_unit|LessThan0~43_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~43_cout\,
	cout => \alu_unit|LessThan0~45_cout\);

-- Location: LCCOMB_X33_Y7_N18
\alu_unit|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~47_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~45_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~45_cout\,
	cout => \alu_unit|LessThan0~47_cout\);

-- Location: LCCOMB_X33_Y7_N20
\alu_unit|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~49_cout\ = CARRY((\instuctionMemory|memory~3_combout\) # (!\alu_unit|LessThan0~47_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~47_cout\,
	cout => \alu_unit|LessThan0~49_cout\);

-- Location: LCCOMB_X33_Y7_N22
\alu_unit|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~51_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~49_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~49_cout\,
	cout => \alu_unit|LessThan0~51_cout\);

-- Location: LCCOMB_X33_Y7_N24
\alu_unit|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~53_cout\ = CARRY((\instuctionMemory|memory~3_combout\) # (!\alu_unit|LessThan0~51_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~51_cout\,
	cout => \alu_unit|LessThan0~53_cout\);

-- Location: LCCOMB_X33_Y7_N26
\alu_unit|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~55_cout\ = CARRY((!\instuctionMemory|memory~3_combout\ & !\alu_unit|LessThan0~53_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~53_cout\,
	cout => \alu_unit|LessThan0~55_cout\);

-- Location: LCCOMB_X33_Y7_N28
\alu_unit|LessThan0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~56_combout\ = (!\alu_unit|LessThan0~55_cout\ & !\instuctionMemory|memory~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instuctionMemory|memory~3_combout\,
	cin => \alu_unit|LessThan0~55_cout\,
	combout => \alu_unit|LessThan0~56_combout\);

-- Location: LCCOMB_X30_Y8_N26
\alu_unit|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~10_combout\ = (\alu_unit|Add0~106_combout\) # ((\alu_control[2]~input_o\ & (\alu_unit|Add0~9_combout\ & \alu_unit|LessThan0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_unit|Add0~9_combout\,
	datac => \alu_unit|LessThan0~56_combout\,
	datad => \alu_unit|Add0~106_combout\,
	combout => \alu_unit|Add0~10_combout\);

-- Location: LCCOMB_X31_Y7_N14
\alu_unit|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~52_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~50\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~50\) # (GND)))
-- \alu_unit|Add0~53\ = CARRY((!\alu_unit|Add0~50\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~50\,
	combout => \alu_unit|Add0~52_combout\,
	cout => \alu_unit|Add0~53\);

-- Location: LCCOMB_X30_Y7_N16
\alu_unit|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~54_combout\ = (\instuctionMemory|memory~3_combout\ & ((\alu_unit|Add0~11_combout\) # ((\alu_unit|Add0~8_combout\ & \alu_unit|Add0~52_combout\)))) # (!\instuctionMemory|memory~3_combout\ & (\alu_unit|Add0~8_combout\ & 
-- (\alu_unit|Add0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datab => \alu_unit|Add0~8_combout\,
	datac => \alu_unit|Add0~52_combout\,
	datad => \alu_unit|Add0~11_combout\,
	combout => \alu_unit|Add0~54_combout\);

-- Location: LCCOMB_X31_Y7_N16
\alu_unit|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~55_combout\ = (\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~53\ $ (GND))) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~53\ & VCC))
-- \alu_unit|Add0~56\ = CARRY((\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~53\,
	combout => \alu_unit|Add0~55_combout\,
	cout => \alu_unit|Add0~56\);

-- Location: LCCOMB_X30_Y8_N0
\alu_unit|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~57_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~55_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\alu_unit|Add0~11_combout\ & 
-- ((\instuctionMemory|memory~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~11_combout\,
	datac => \alu_unit|Add0~55_combout\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \alu_unit|Add0~57_combout\);

-- Location: LCCOMB_X31_Y7_N18
\alu_unit|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~58_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~56\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~56\) # (GND)))
-- \alu_unit|Add0~59\ = CARRY((!\alu_unit|Add0~56\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~56\,
	combout => \alu_unit|Add0~58_combout\,
	cout => \alu_unit|Add0~59\);

-- Location: LCCOMB_X32_Y7_N0
\alu_unit|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~60_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~58_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (((\alu_unit|Add0~11_combout\ & 
-- \instuctionMemory|memory~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~58_combout\,
	datac => \alu_unit|Add0~11_combout\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \alu_unit|Add0~60_combout\);

-- Location: LCCOMB_X31_Y7_N20
\alu_unit|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~61_combout\ = (\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~59\ $ (GND))) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~59\ & VCC))
-- \alu_unit|Add0~62\ = CARRY((\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~59\,
	combout => \alu_unit|Add0~61_combout\,
	cout => \alu_unit|Add0~62\);

-- Location: LCCOMB_X32_Y7_N2
\alu_unit|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~63_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~61_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (((\alu_unit|Add0~11_combout\ & 
-- \instuctionMemory|memory~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~61_combout\,
	datac => \alu_unit|Add0~11_combout\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \alu_unit|Add0~63_combout\);

-- Location: LCCOMB_X31_Y7_N22
\alu_unit|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~64_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~62\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~62\) # (GND)))
-- \alu_unit|Add0~65\ = CARRY((!\alu_unit|Add0~62\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~62\,
	combout => \alu_unit|Add0~64_combout\,
	cout => \alu_unit|Add0~65\);

-- Location: LCCOMB_X32_Y7_N16
\alu_unit|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~66_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~64_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (((\alu_unit|Add0~11_combout\ & 
-- \instuctionMemory|memory~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~64_combout\,
	datac => \alu_unit|Add0~11_combout\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \alu_unit|Add0~66_combout\);

-- Location: LCCOMB_X31_Y7_N24
\alu_unit|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~67_combout\ = (\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~65\ $ (GND))) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~65\ & VCC))
-- \alu_unit|Add0~68\ = CARRY((\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~65\,
	combout => \alu_unit|Add0~67_combout\,
	cout => \alu_unit|Add0~68\);

-- Location: LCCOMB_X30_Y7_N14
\alu_unit|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~69_combout\ = (\instuctionMemory|memory~3_combout\ & ((\alu_unit|Add0~11_combout\) # ((\alu_unit|Add0~67_combout\ & \alu_unit|Add0~8_combout\)))) # (!\instuctionMemory|memory~3_combout\ & (((\alu_unit|Add0~67_combout\ & 
-- \alu_unit|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datab => \alu_unit|Add0~11_combout\,
	datac => \alu_unit|Add0~67_combout\,
	datad => \alu_unit|Add0~8_combout\,
	combout => \alu_unit|Add0~69_combout\);

-- Location: LCCOMB_X31_Y7_N26
\alu_unit|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~70_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~68\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~68\) # (GND)))
-- \alu_unit|Add0~71\ = CARRY((!\alu_unit|Add0~68\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~68\,
	combout => \alu_unit|Add0~70_combout\,
	cout => \alu_unit|Add0~71\);

-- Location: LCCOMB_X31_Y8_N4
\alu_unit|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~72_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~70_combout\) # ((\instuctionMemory|memory~3_combout\ & \alu_unit|Add0~11_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\instuctionMemory|memory~3_combout\ & 
-- (\alu_unit|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \instuctionMemory|memory~3_combout\,
	datac => \alu_unit|Add0~11_combout\,
	datad => \alu_unit|Add0~70_combout\,
	combout => \alu_unit|Add0~72_combout\);

-- Location: LCCOMB_X31_Y7_N28
\alu_unit|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~73_combout\ = (\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~71\ $ (GND))) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~71\ & VCC))
-- \alu_unit|Add0~74\ = CARRY((\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~71\,
	combout => \alu_unit|Add0~73_combout\,
	cout => \alu_unit|Add0~74\);

-- Location: LCCOMB_X32_Y7_N22
\alu_unit|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~75_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~73_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (((\alu_unit|Add0~11_combout\ & 
-- \instuctionMemory|memory~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~73_combout\,
	datac => \alu_unit|Add0~11_combout\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \alu_unit|Add0~75_combout\);

-- Location: LCCOMB_X31_Y7_N30
\alu_unit|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~76_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~74\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~74\) # (GND)))
-- \alu_unit|Add0~77\ = CARRY((!\alu_unit|Add0~74\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~74\,
	combout => \alu_unit|Add0~76_combout\,
	cout => \alu_unit|Add0~77\);

-- Location: LCCOMB_X30_Y7_N0
\alu_unit|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~78_combout\ = (\instuctionMemory|memory~3_combout\ & ((\alu_unit|Add0~11_combout\) # ((\alu_unit|Add0~8_combout\ & \alu_unit|Add0~76_combout\)))) # (!\instuctionMemory|memory~3_combout\ & (\alu_unit|Add0~8_combout\ & 
-- (\alu_unit|Add0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datab => \alu_unit|Add0~8_combout\,
	datac => \alu_unit|Add0~76_combout\,
	datad => \alu_unit|Add0~11_combout\,
	combout => \alu_unit|Add0~78_combout\);

-- Location: LCCOMB_X31_Y6_N0
\alu_unit|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~79_combout\ = (\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~77\ $ (GND))) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~77\ & VCC))
-- \alu_unit|Add0~80\ = CARRY((\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~77\,
	combout => \alu_unit|Add0~79_combout\,
	cout => \alu_unit|Add0~80\);

-- Location: LCCOMB_X31_Y6_N30
\alu_unit|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~81_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~79_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\alu_unit|Add0~11_combout\ & 
-- (\instuctionMemory|memory~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~11_combout\,
	datac => \instuctionMemory|memory~3_combout\,
	datad => \alu_unit|Add0~79_combout\,
	combout => \alu_unit|Add0~81_combout\);

-- Location: LCCOMB_X31_Y6_N2
\alu_unit|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~82_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~80\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~80\) # (GND)))
-- \alu_unit|Add0~83\ = CARRY((!\alu_unit|Add0~80\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~80\,
	combout => \alu_unit|Add0~82_combout\,
	cout => \alu_unit|Add0~83\);

-- Location: LCCOMB_X31_Y6_N20
\alu_unit|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~84_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~82_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\alu_unit|Add0~11_combout\ & 
-- (\instuctionMemory|memory~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~11_combout\,
	datac => \instuctionMemory|memory~3_combout\,
	datad => \alu_unit|Add0~82_combout\,
	combout => \alu_unit|Add0~84_combout\);

-- Location: LCCOMB_X31_Y6_N4
\alu_unit|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~85_combout\ = (\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~83\ $ (GND))) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~83\ & VCC))
-- \alu_unit|Add0~86\ = CARRY((\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~83\,
	combout => \alu_unit|Add0~85_combout\,
	cout => \alu_unit|Add0~86\);

-- Location: LCCOMB_X31_Y6_N18
\alu_unit|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~87_combout\ = (\instuctionMemory|memory~3_combout\ & ((\alu_unit|Add0~11_combout\) # ((\alu_unit|Add0~85_combout\ & \alu_unit|Add0~8_combout\)))) # (!\instuctionMemory|memory~3_combout\ & (\alu_unit|Add0~85_combout\ & 
-- (\alu_unit|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datab => \alu_unit|Add0~85_combout\,
	datac => \alu_unit|Add0~8_combout\,
	datad => \alu_unit|Add0~11_combout\,
	combout => \alu_unit|Add0~87_combout\);

-- Location: LCCOMB_X31_Y6_N6
\alu_unit|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~88_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~86\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~86\) # (GND)))
-- \alu_unit|Add0~89\ = CARRY((!\alu_unit|Add0~86\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~86\,
	combout => \alu_unit|Add0~88_combout\,
	cout => \alu_unit|Add0~89\);

-- Location: LCCOMB_X31_Y6_N24
\alu_unit|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~90_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~88_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\alu_unit|Add0~11_combout\ & 
-- (\instuctionMemory|memory~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~11_combout\,
	datac => \instuctionMemory|memory~3_combout\,
	datad => \alu_unit|Add0~88_combout\,
	combout => \alu_unit|Add0~90_combout\);

-- Location: LCCOMB_X31_Y6_N8
\alu_unit|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~91_combout\ = (\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~89\ $ (GND))) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~89\ & VCC))
-- \alu_unit|Add0~92\ = CARRY((\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~89\,
	combout => \alu_unit|Add0~91_combout\,
	cout => \alu_unit|Add0~92\);

-- Location: LCCOMB_X31_Y6_N26
\alu_unit|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~93_combout\ = (\instuctionMemory|memory~3_combout\ & ((\alu_unit|Add0~11_combout\) # ((\alu_unit|Add0~91_combout\ & \alu_unit|Add0~8_combout\)))) # (!\instuctionMemory|memory~3_combout\ & (\alu_unit|Add0~91_combout\ & 
-- (\alu_unit|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datab => \alu_unit|Add0~91_combout\,
	datac => \alu_unit|Add0~8_combout\,
	datad => \alu_unit|Add0~11_combout\,
	combout => \alu_unit|Add0~93_combout\);

-- Location: LCCOMB_X31_Y6_N10
\alu_unit|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~94_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~92\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~92\) # (GND)))
-- \alu_unit|Add0~95\ = CARRY((!\alu_unit|Add0~92\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~92\,
	combout => \alu_unit|Add0~94_combout\,
	cout => \alu_unit|Add0~95\);

-- Location: LCCOMB_X31_Y6_N28
\alu_unit|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~96_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~94_combout\) # ((\alu_unit|Add0~11_combout\ & \instuctionMemory|memory~3_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\alu_unit|Add0~11_combout\ & 
-- (\instuctionMemory|memory~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \alu_unit|Add0~11_combout\,
	datac => \instuctionMemory|memory~3_combout\,
	datad => \alu_unit|Add0~94_combout\,
	combout => \alu_unit|Add0~96_combout\);

-- Location: LCCOMB_X31_Y6_N12
\alu_unit|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~97_combout\ = (\alu_unit|Add0~15_combout\ & (\alu_unit|Add0~95\ $ (GND))) # (!\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~95\ & VCC))
-- \alu_unit|Add0~98\ = CARRY((\alu_unit|Add0~15_combout\ & !\alu_unit|Add0~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~95\,
	combout => \alu_unit|Add0~97_combout\,
	cout => \alu_unit|Add0~98\);

-- Location: LCCOMB_X32_Y7_N12
\alu_unit|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~99_combout\ = (\alu_unit|Add0~11_combout\ & ((\instuctionMemory|memory~3_combout\) # ((\alu_unit|Add0~97_combout\ & \alu_unit|Add0~8_combout\)))) # (!\alu_unit|Add0~11_combout\ & (\alu_unit|Add0~97_combout\ & (\alu_unit|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~11_combout\,
	datab => \alu_unit|Add0~97_combout\,
	datac => \alu_unit|Add0~8_combout\,
	datad => \instuctionMemory|memory~3_combout\,
	combout => \alu_unit|Add0~99_combout\);

-- Location: LCCOMB_X31_Y6_N14
\alu_unit|Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~100_combout\ = (\alu_unit|Add0~15_combout\ & (!\alu_unit|Add0~98\)) # (!\alu_unit|Add0~15_combout\ & ((\alu_unit|Add0~98\) # (GND)))
-- \alu_unit|Add0~101\ = CARRY((!\alu_unit|Add0~98\) # (!\alu_unit|Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~98\,
	combout => \alu_unit|Add0~100_combout\,
	cout => \alu_unit|Add0~101\);

-- Location: LCCOMB_X31_Y6_N22
\alu_unit|Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~102_combout\ = (\instuctionMemory|memory~3_combout\ & ((\alu_unit|Add0~11_combout\) # ((\alu_unit|Add0~100_combout\ & \alu_unit|Add0~8_combout\)))) # (!\instuctionMemory|memory~3_combout\ & (\alu_unit|Add0~100_combout\ & 
-- (\alu_unit|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~3_combout\,
	datab => \alu_unit|Add0~100_combout\,
	datac => \alu_unit|Add0~8_combout\,
	datad => \alu_unit|Add0~11_combout\,
	combout => \alu_unit|Add0~102_combout\);

-- Location: LCCOMB_X31_Y6_N16
\alu_unit|Add0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~103_combout\ = \alu_unit|Add0~15_combout\ $ (!\alu_unit|Add0~101\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~15_combout\,
	cin => \alu_unit|Add0~101\,
	combout => \alu_unit|Add0~103_combout\);

-- Location: LCCOMB_X30_Y8_N2
\alu_unit|Add0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~105_combout\ = (\alu_unit|Add0~8_combout\ & ((\alu_unit|Add0~103_combout\) # ((\instuctionMemory|memory~3_combout\ & \alu_unit|Add0~11_combout\)))) # (!\alu_unit|Add0~8_combout\ & (\instuctionMemory|memory~3_combout\ & 
-- (\alu_unit|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~8_combout\,
	datab => \instuctionMemory|memory~3_combout\,
	datac => \alu_unit|Add0~11_combout\,
	datad => \alu_unit|Add0~103_combout\,
	combout => \alu_unit|Add0~105_combout\);

-- Location: IOIBUF_X7_Y0_N8
\PC[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(13),
	o => \PC[13]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\PC[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(14),
	o => \PC[14]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\PC[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(15),
	o => \PC[15]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\PC[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(16),
	o => \PC[16]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\PC[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(17),
	o => \PC[17]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\PC[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(18),
	o => \PC[18]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\PC[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(19),
	o => \PC[19]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\PC[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(20),
	o => \PC[20]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\PC[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(21),
	o => \PC[21]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\PC[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(22),
	o => \PC[22]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\PC[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(23),
	o => \PC[23]~input_o\);

-- Location: IOIBUF_X34_Y19_N8
\PC[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(24),
	o => \PC[24]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\PC[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(25),
	o => \PC[25]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\PC[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(26),
	o => \PC[26]~input_o\);

-- Location: IOIBUF_X25_Y0_N8
\PC[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(27),
	o => \PC[27]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\PC[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(28),
	o => \PC[28]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\PC[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(29),
	o => \PC[29]~input_o\);

-- Location: IOIBUF_X30_Y24_N8
\PC[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(30),
	o => \PC[30]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\PC[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(31),
	o => \PC[31]~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\extend_out[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(0),
	o => \extend_out[0]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\extend_out[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(1),
	o => \extend_out[1]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\extend_out[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(2),
	o => \extend_out[2]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\extend_out[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(3),
	o => \extend_out[3]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\extend_out[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(4),
	o => \extend_out[4]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\extend_out[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(5),
	o => \extend_out[5]~input_o\);

-- Location: IOIBUF_X3_Y24_N8
\extend_out[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(6),
	o => \extend_out[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\extend_out[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(7),
	o => \extend_out[7]~input_o\);

-- Location: IOIBUF_X23_Y24_N22
\extend_out[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(8),
	o => \extend_out[8]~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\extend_out[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(9),
	o => \extend_out[9]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\extend_out[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(10),
	o => \extend_out[10]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\extend_out[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(11),
	o => \extend_out[11]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\extend_out[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(12),
	o => \extend_out[12]~input_o\);

-- Location: IOIBUF_X25_Y24_N1
\extend_out[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(13),
	o => \extend_out[13]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\extend_out[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(14),
	o => \extend_out[14]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\extend_out[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(15),
	o => \extend_out[15]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\extend_out[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(16),
	o => \extend_out[16]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\extend_out[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(17),
	o => \extend_out[17]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\extend_out[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(18),
	o => \extend_out[18]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\extend_out[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(19),
	o => \extend_out[19]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\extend_out[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(20),
	o => \extend_out[20]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\extend_out[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(21),
	o => \extend_out[21]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\extend_out[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(22),
	o => \extend_out[22]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\extend_out[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(23),
	o => \extend_out[23]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\extend_out[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(24),
	o => \extend_out[24]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\extend_out[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(25),
	o => \extend_out[25]~input_o\);

-- Location: IOIBUF_X25_Y24_N8
\extend_out[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(26),
	o => \extend_out[26]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\extend_out[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(27),
	o => \extend_out[27]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\extend_out[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(28),
	o => \extend_out[28]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\extend_out[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(29),
	o => \extend_out[29]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\extend_out[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(30),
	o => \extend_out[30]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\extend_out[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(31),
	o => \extend_out[31]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\alu_result[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(0),
	o => \alu_result[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\alu_result[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(1),
	o => \alu_result[1]~input_o\);

-- Location: IOIBUF_X34_Y11_N8
\alu_result[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(2),
	o => \alu_result[2]~input_o\);

-- Location: IOIBUF_X34_Y8_N15
\alu_result[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(3),
	o => \alu_result[3]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\alu_result[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(4),
	o => \alu_result[4]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\alu_result[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(5),
	o => \alu_result[5]~input_o\);

-- Location: IOIBUF_X34_Y8_N8
\alu_result[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(6),
	o => \alu_result[6]~input_o\);

-- Location: IOIBUF_X34_Y11_N1
\alu_result[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(7),
	o => \alu_result[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\alu_result[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(8),
	o => \alu_result[8]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\alu_result[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(9),
	o => \alu_result[9]~input_o\);

-- Location: IOIBUF_X32_Y24_N15
\alu_result[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(10),
	o => \alu_result[10]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\alu_result[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(11),
	o => \alu_result[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\alu_result[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(12),
	o => \alu_result[12]~input_o\);

-- Location: IOIBUF_X34_Y10_N1
\alu_result[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(13),
	o => \alu_result[13]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\alu_result[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(14),
	o => \alu_result[14]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\alu_result[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(15),
	o => \alu_result[15]~input_o\);

-- Location: IOIBUF_X34_Y7_N15
\alu_result[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(16),
	o => \alu_result[16]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\alu_result[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(17),
	o => \alu_result[17]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\alu_result[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(18),
	o => \alu_result[18]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\alu_result[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(19),
	o => \alu_result[19]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\alu_result[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(20),
	o => \alu_result[20]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\alu_result[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(21),
	o => \alu_result[21]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\alu_result[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(22),
	o => \alu_result[22]~input_o\);

-- Location: IOIBUF_X34_Y5_N15
\alu_result[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(23),
	o => \alu_result[23]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\alu_result[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(24),
	o => \alu_result[24]~input_o\);

-- Location: IOIBUF_X34_Y5_N22
\alu_result[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(25),
	o => \alu_result[25]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\alu_result[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(26),
	o => \alu_result[26]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\alu_result[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(27),
	o => \alu_result[27]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\alu_result[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(28),
	o => \alu_result[28]~input_o\);

-- Location: IOIBUF_X34_Y3_N15
\alu_result[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(29),
	o => \alu_result[29]~input_o\);

-- Location: IOIBUF_X34_Y6_N15
\alu_result[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(30),
	o => \alu_result[30]~input_o\);

-- Location: IOIBUF_X34_Y20_N15
\alu_result[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(31),
	o => \alu_result[31]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\read_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(0),
	o => \read_data[0]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\read_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(1),
	o => \read_data[1]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\read_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(2),
	o => \read_data[2]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\read_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(3),
	o => \read_data[3]~input_o\);

-- Location: IOIBUF_X32_Y24_N22
\read_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(4),
	o => \read_data[4]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\read_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(5),
	o => \read_data[5]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\read_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(6),
	o => \read_data[6]~input_o\);

-- Location: IOIBUF_X28_Y24_N15
\read_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(7),
	o => \read_data[7]~input_o\);

-- Location: IOIBUF_X25_Y24_N15
\read_data[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(8),
	o => \read_data[8]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\read_data[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(9),
	o => \read_data[9]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\read_data[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(10),
	o => \read_data[10]~input_o\);

-- Location: IOIBUF_X3_Y24_N15
\read_data[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(11),
	o => \read_data[11]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\read_data[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(12),
	o => \read_data[12]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\read_data[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(13),
	o => \read_data[13]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\read_data[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(14),
	o => \read_data[14]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\read_data[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(15),
	o => \read_data[15]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\read_data[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(16),
	o => \read_data[16]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\read_data[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(17),
	o => \read_data[17]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\read_data[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(18),
	o => \read_data[18]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\read_data[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(19),
	o => \read_data[19]~input_o\);

-- Location: IOIBUF_X3_Y24_N1
\read_data[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(20),
	o => \read_data[20]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\read_data[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(21),
	o => \read_data[21]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\read_data[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(22),
	o => \read_data[22]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\read_data[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(23),
	o => \read_data[23]~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\read_data[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(24),
	o => \read_data[24]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\read_data[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(25),
	o => \read_data[25]~input_o\);

-- Location: IOIBUF_X21_Y24_N15
\read_data[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(26),
	o => \read_data[26]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\read_data[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(27),
	o => \read_data[27]~input_o\);

-- Location: IOIBUF_X21_Y24_N8
\read_data[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(28),
	o => \read_data[28]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\read_data[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(29),
	o => \read_data[29]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\read_data[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(30),
	o => \read_data[30]~input_o\);

-- Location: IOIBUF_X11_Y24_N1
\read_data[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => read_data(31),
	o => \read_data[31]~input_o\);

extend_out(0) <= \extend_out[0]~output_o\;

extend_out(1) <= \extend_out[1]~output_o\;

extend_out(2) <= \extend_out[2]~output_o\;

extend_out(3) <= \extend_out[3]~output_o\;

extend_out(4) <= \extend_out[4]~output_o\;

extend_out(5) <= \extend_out[5]~output_o\;

extend_out(6) <= \extend_out[6]~output_o\;

extend_out(7) <= \extend_out[7]~output_o\;

extend_out(8) <= \extend_out[8]~output_o\;

extend_out(9) <= \extend_out[9]~output_o\;

extend_out(10) <= \extend_out[10]~output_o\;

extend_out(11) <= \extend_out[11]~output_o\;

extend_out(12) <= \extend_out[12]~output_o\;

extend_out(13) <= \extend_out[13]~output_o\;

extend_out(14) <= \extend_out[14]~output_o\;

extend_out(15) <= \extend_out[15]~output_o\;

extend_out(16) <= \extend_out[16]~output_o\;

extend_out(17) <= \extend_out[17]~output_o\;

extend_out(18) <= \extend_out[18]~output_o\;

extend_out(19) <= \extend_out[19]~output_o\;

extend_out(20) <= \extend_out[20]~output_o\;

extend_out(21) <= \extend_out[21]~output_o\;

extend_out(22) <= \extend_out[22]~output_o\;

extend_out(23) <= \extend_out[23]~output_o\;

extend_out(24) <= \extend_out[24]~output_o\;

extend_out(25) <= \extend_out[25]~output_o\;

extend_out(26) <= \extend_out[26]~output_o\;

extend_out(27) <= \extend_out[27]~output_o\;

extend_out(28) <= \extend_out[28]~output_o\;

extend_out(29) <= \extend_out[29]~output_o\;

extend_out(30) <= \extend_out[30]~output_o\;

extend_out(31) <= \extend_out[31]~output_o\;

alu_result(0) <= \alu_result[0]~output_o\;

alu_result(1) <= \alu_result[1]~output_o\;

alu_result(2) <= \alu_result[2]~output_o\;

alu_result(3) <= \alu_result[3]~output_o\;

alu_result(4) <= \alu_result[4]~output_o\;

alu_result(5) <= \alu_result[5]~output_o\;

alu_result(6) <= \alu_result[6]~output_o\;

alu_result(7) <= \alu_result[7]~output_o\;

alu_result(8) <= \alu_result[8]~output_o\;

alu_result(9) <= \alu_result[9]~output_o\;

alu_result(10) <= \alu_result[10]~output_o\;

alu_result(11) <= \alu_result[11]~output_o\;

alu_result(12) <= \alu_result[12]~output_o\;

alu_result(13) <= \alu_result[13]~output_o\;

alu_result(14) <= \alu_result[14]~output_o\;

alu_result(15) <= \alu_result[15]~output_o\;

alu_result(16) <= \alu_result[16]~output_o\;

alu_result(17) <= \alu_result[17]~output_o\;

alu_result(18) <= \alu_result[18]~output_o\;

alu_result(19) <= \alu_result[19]~output_o\;

alu_result(20) <= \alu_result[20]~output_o\;

alu_result(21) <= \alu_result[21]~output_o\;

alu_result(22) <= \alu_result[22]~output_o\;

alu_result(23) <= \alu_result[23]~output_o\;

alu_result(24) <= \alu_result[24]~output_o\;

alu_result(25) <= \alu_result[25]~output_o\;

alu_result(26) <= \alu_result[26]~output_o\;

alu_result(27) <= \alu_result[27]~output_o\;

alu_result(28) <= \alu_result[28]~output_o\;

alu_result(29) <= \alu_result[29]~output_o\;

alu_result(30) <= \alu_result[30]~output_o\;

alu_result(31) <= \alu_result[31]~output_o\;

read_data(0) <= \read_data[0]~output_o\;

read_data(1) <= \read_data[1]~output_o\;

read_data(2) <= \read_data[2]~output_o\;

read_data(3) <= \read_data[3]~output_o\;

read_data(4) <= \read_data[4]~output_o\;

read_data(5) <= \read_data[5]~output_o\;

read_data(6) <= \read_data[6]~output_o\;

read_data(7) <= \read_data[7]~output_o\;

read_data(8) <= \read_data[8]~output_o\;

read_data(9) <= \read_data[9]~output_o\;

read_data(10) <= \read_data[10]~output_o\;

read_data(11) <= \read_data[11]~output_o\;

read_data(12) <= \read_data[12]~output_o\;

read_data(13) <= \read_data[13]~output_o\;

read_data(14) <= \read_data[14]~output_o\;

read_data(15) <= \read_data[15]~output_o\;

read_data(16) <= \read_data[16]~output_o\;

read_data(17) <= \read_data[17]~output_o\;

read_data(18) <= \read_data[18]~output_o\;

read_data(19) <= \read_data[19]~output_o\;

read_data(20) <= \read_data[20]~output_o\;

read_data(21) <= \read_data[21]~output_o\;

read_data(22) <= \read_data[22]~output_o\;

read_data(23) <= \read_data[23]~output_o\;

read_data(24) <= \read_data[24]~output_o\;

read_data(25) <= \read_data[25]~output_o\;

read_data(26) <= \read_data[26]~output_o\;

read_data(27) <= \read_data[27]~output_o\;

read_data(28) <= \read_data[28]~output_o\;

read_data(29) <= \read_data[29]~output_o\;

read_data(30) <= \read_data[30]~output_o\;

read_data(31) <= \read_data[31]~output_o\;
END structure;


