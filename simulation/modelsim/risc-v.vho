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

-- DATE "05/08/2023 17:53:10"

-- 
-- Device: Altera EP4CE10F17C6 Package FBGA256
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
	PC : IN std_logic_vector(31 DOWNTO 0);
	extend_out : BUFFER std_logic_vector(31 DOWNTO 0);
	clk : IN std_logic;
	alu_control : IN std_logic_vector(2 DOWNTO 0);
	alu_result : BUFFER std_logic_vector(31 DOWNTO 0);
	readData : BUFFER std_logic_vector(31 DOWNTO 0);
	ImmSrc : IN std_logic;
	MemWrite : IN std_logic;
	RegWrite : IN std_logic
	);
END Datapath;

-- Design Ports Information
-- PC[9]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[10]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[11]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[12]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[13]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[14]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[15]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[16]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[17]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[18]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[19]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[20]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[21]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[22]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[23]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[24]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[25]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[26]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[27]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[28]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[29]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[30]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[31]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[5]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[6]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[7]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[8]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[9]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[11]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[12]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[13]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[14]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[15]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[16]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[17]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[18]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[19]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[20]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[21]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[22]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[23]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[24]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[25]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[26]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[27]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[28]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[29]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[30]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- extend_out[31]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[4]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[6]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[7]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[9]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[10]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[11]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[12]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[13]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[14]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[15]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[16]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[17]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[18]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[19]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[20]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[21]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[22]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[23]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[24]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[25]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[26]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[27]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[28]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[29]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[30]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_result[31]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[5]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[7]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[8]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[10]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[11]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[12]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[13]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[14]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[15]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[16]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[17]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[18]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[19]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[20]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[21]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[22]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[23]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[24]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[25]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[26]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[27]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[28]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[29]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[30]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readData[31]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ImmSrc	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[4]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[5]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[6]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[8]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_control[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_control[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_control[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_extend_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_alu_control : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_alu_result : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_readData : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ImmSrc : std_logic;
SIGNAL ww_MemWrite : std_logic;
SIGNAL ww_RegWrite : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC[9]~input_o\ : std_logic;
SIGNAL \PC[10]~input_o\ : std_logic;
SIGNAL \PC[11]~input_o\ : std_logic;
SIGNAL \PC[12]~input_o\ : std_logic;
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
SIGNAL \readData[0]~input_o\ : std_logic;
SIGNAL \readData[1]~input_o\ : std_logic;
SIGNAL \readData[2]~input_o\ : std_logic;
SIGNAL \readData[3]~input_o\ : std_logic;
SIGNAL \readData[4]~input_o\ : std_logic;
SIGNAL \readData[5]~input_o\ : std_logic;
SIGNAL \readData[6]~input_o\ : std_logic;
SIGNAL \readData[7]~input_o\ : std_logic;
SIGNAL \readData[8]~input_o\ : std_logic;
SIGNAL \readData[9]~input_o\ : std_logic;
SIGNAL \readData[10]~input_o\ : std_logic;
SIGNAL \readData[11]~input_o\ : std_logic;
SIGNAL \readData[12]~input_o\ : std_logic;
SIGNAL \readData[13]~input_o\ : std_logic;
SIGNAL \readData[14]~input_o\ : std_logic;
SIGNAL \readData[15]~input_o\ : std_logic;
SIGNAL \readData[16]~input_o\ : std_logic;
SIGNAL \readData[17]~input_o\ : std_logic;
SIGNAL \readData[18]~input_o\ : std_logic;
SIGNAL \readData[19]~input_o\ : std_logic;
SIGNAL \readData[20]~input_o\ : std_logic;
SIGNAL \readData[21]~input_o\ : std_logic;
SIGNAL \readData[22]~input_o\ : std_logic;
SIGNAL \readData[23]~input_o\ : std_logic;
SIGNAL \readData[24]~input_o\ : std_logic;
SIGNAL \readData[25]~input_o\ : std_logic;
SIGNAL \readData[26]~input_o\ : std_logic;
SIGNAL \readData[27]~input_o\ : std_logic;
SIGNAL \readData[28]~input_o\ : std_logic;
SIGNAL \readData[29]~input_o\ : std_logic;
SIGNAL \readData[30]~input_o\ : std_logic;
SIGNAL \readData[31]~input_o\ : std_logic;
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
SIGNAL \readData[0]~output_o\ : std_logic;
SIGNAL \readData[1]~output_o\ : std_logic;
SIGNAL \readData[2]~output_o\ : std_logic;
SIGNAL \readData[3]~output_o\ : std_logic;
SIGNAL \readData[4]~output_o\ : std_logic;
SIGNAL \readData[5]~output_o\ : std_logic;
SIGNAL \readData[6]~output_o\ : std_logic;
SIGNAL \readData[7]~output_o\ : std_logic;
SIGNAL \readData[8]~output_o\ : std_logic;
SIGNAL \readData[9]~output_o\ : std_logic;
SIGNAL \readData[10]~output_o\ : std_logic;
SIGNAL \readData[11]~output_o\ : std_logic;
SIGNAL \readData[12]~output_o\ : std_logic;
SIGNAL \readData[13]~output_o\ : std_logic;
SIGNAL \readData[14]~output_o\ : std_logic;
SIGNAL \readData[15]~output_o\ : std_logic;
SIGNAL \readData[16]~output_o\ : std_logic;
SIGNAL \readData[17]~output_o\ : std_logic;
SIGNAL \readData[18]~output_o\ : std_logic;
SIGNAL \readData[19]~output_o\ : std_logic;
SIGNAL \readData[20]~output_o\ : std_logic;
SIGNAL \readData[21]~output_o\ : std_logic;
SIGNAL \readData[22]~output_o\ : std_logic;
SIGNAL \readData[23]~output_o\ : std_logic;
SIGNAL \readData[24]~output_o\ : std_logic;
SIGNAL \readData[25]~output_o\ : std_logic;
SIGNAL \readData[26]~output_o\ : std_logic;
SIGNAL \readData[27]~output_o\ : std_logic;
SIGNAL \readData[28]~output_o\ : std_logic;
SIGNAL \readData[29]~output_o\ : std_logic;
SIGNAL \readData[30]~output_o\ : std_logic;
SIGNAL \readData[31]~output_o\ : std_logic;
SIGNAL \ImmSrc~input_o\ : std_logic;
SIGNAL \PC[3]~input_o\ : std_logic;
SIGNAL \PC[0]~input_o\ : std_logic;
SIGNAL \PC[1]~input_o\ : std_logic;
SIGNAL \PC[2]~input_o\ : std_logic;
SIGNAL \instuctionMemory|memory~0_combout\ : std_logic;
SIGNAL \PC[8]~input_o\ : std_logic;
SIGNAL \PC[5]~input_o\ : std_logic;
SIGNAL \PC[7]~input_o\ : std_logic;
SIGNAL \PC[4]~input_o\ : std_logic;
SIGNAL \PC[6]~input_o\ : std_logic;
SIGNAL \instuctionMemory|memory~1_combout\ : std_logic;
SIGNAL \extend_in[1]~0_combout\ : std_logic;
SIGNAL \instuctionMemory|memory~2_combout\ : std_logic;
SIGNAL \extend_in[3]~1_combout\ : std_logic;
SIGNAL \alu_control[2]~input_o\ : std_logic;
SIGNAL \alu_control[1]~input_o\ : std_logic;
SIGNAL \alu_control[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \MemWrite~input_o\ : std_logic;
SIGNAL \alu_unit|Add0~12_combout\ : std_logic;
SIGNAL \alu_unit|Add0~17_combout\ : std_logic;
SIGNAL \reg|registers~1084_combout\ : std_logic;
SIGNAL \alu_unit|Add0~7_combout\ : std_logic;
SIGNAL \alu_unit|Add0~1_cout\ : std_logic;
SIGNAL \alu_unit|Add0~3\ : std_logic;
SIGNAL \alu_unit|Add0~9\ : std_logic;
SIGNAL \alu_unit|Add0~14\ : std_logic;
SIGNAL \alu_unit|Add0~19\ : std_logic;
SIGNAL \alu_unit|Add0~23\ : std_logic;
SIGNAL \alu_unit|Add0~27\ : std_logic;
SIGNAL \alu_unit|Add0~31\ : std_logic;
SIGNAL \alu_unit|Add0~35\ : std_logic;
SIGNAL \alu_unit|Add0~39\ : std_logic;
SIGNAL \alu_unit|Add0~43\ : std_logic;
SIGNAL \alu_unit|Add0~46_combout\ : std_logic;
SIGNAL \alu_unit|Add0~45_combout\ : std_logic;
SIGNAL \alu_unit|Add0~48_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a49\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[17]~17_combout\ : std_logic;
SIGNAL \RegWrite~input_o\ : std_logic;
SIGNAL \reg|registers~1094_combout\ : std_logic;
SIGNAL \reg|registers~55_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a48\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[16]~16_combout\ : std_logic;
SIGNAL \reg|registers~54feeder_combout\ : std_logic;
SIGNAL \reg|registers~54_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a47\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[15]~15_combout\ : std_logic;
SIGNAL \reg|registers~53feeder_combout\ : std_logic;
SIGNAL \reg|registers~53_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a46\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[14]~14_combout\ : std_logic;
SIGNAL \reg|registers~52_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a44\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[12]~12_combout\ : std_logic;
SIGNAL \reg|registers~50_q\ : std_logic;
SIGNAL \reg|registers~1082_combout\ : std_logic;
SIGNAL \alu_unit|Add0~53_combout\ : std_logic;
SIGNAL \alu_unit|Add0~47\ : std_logic;
SIGNAL \alu_unit|Add0~51\ : std_logic;
SIGNAL \alu_unit|Add0~54_combout\ : std_logic;
SIGNAL \alu_unit|Add0~56_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a43\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[11]~11_combout\ : std_logic;
SIGNAL \reg|registers~49feeder_combout\ : std_logic;
SIGNAL \reg|registers~49_q\ : std_logic;
SIGNAL \reg|registers~1083_combout\ : std_logic;
SIGNAL \alu_unit|Add0~49_combout\ : std_logic;
SIGNAL \alu_unit|Add0~50_combout\ : std_logic;
SIGNAL \alu_unit|Add0~52_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a42\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[10]~10_combout\ : std_logic;
SIGNAL \reg|registers~48_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[9]~9_combout\ : std_logic;
SIGNAL \reg|registers~47feeder_combout\ : std_logic;
SIGNAL \reg|registers~47_q\ : std_logic;
SIGNAL \reg|registers~1085_combout\ : std_logic;
SIGNAL \alu_unit|Add0~42_combout\ : std_logic;
SIGNAL \alu_unit|Add0~41_combout\ : std_logic;
SIGNAL \alu_unit|Add0~44_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a40\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[8]~8_combout\ : std_logic;
SIGNAL \reg|registers~46feeder_combout\ : std_logic;
SIGNAL \reg|registers~46_q\ : std_logic;
SIGNAL \reg|registers~1086_combout\ : std_logic;
SIGNAL \alu_unit|Add0~37_combout\ : std_logic;
SIGNAL \alu_unit|Add0~38_combout\ : std_logic;
SIGNAL \alu_unit|Add0~40_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a39\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[7]~7_combout\ : std_logic;
SIGNAL \reg|registers~45feeder_combout\ : std_logic;
SIGNAL \reg|registers~45_q\ : std_logic;
SIGNAL \reg|registers~1087_combout\ : std_logic;
SIGNAL \alu_unit|Add0~34_combout\ : std_logic;
SIGNAL \alu_unit|Add0~33_combout\ : std_logic;
SIGNAL \alu_unit|Add0~36_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a38\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[6]~6_combout\ : std_logic;
SIGNAL \reg|registers~44_q\ : std_logic;
SIGNAL \reg|registers~1088_combout\ : std_logic;
SIGNAL \alu_unit|Add0~29_combout\ : std_logic;
SIGNAL \alu_unit|Add0~30_combout\ : std_logic;
SIGNAL \alu_unit|Add0~32_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a37\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[5]~5_combout\ : std_logic;
SIGNAL \reg|registers~43_q\ : std_logic;
SIGNAL \reg|registers~1089_combout\ : std_logic;
SIGNAL \alu_unit|Add0~26_combout\ : std_logic;
SIGNAL \alu_unit|Add0~25_combout\ : std_logic;
SIGNAL \alu_unit|Add0~28_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a36\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[4]~4_combout\ : std_logic;
SIGNAL \reg|registers~42_q\ : std_logic;
SIGNAL \reg|registers~1090_combout\ : std_logic;
SIGNAL \alu_unit|Add0~22_combout\ : std_logic;
SIGNAL \alu_unit|Add0~21_combout\ : std_logic;
SIGNAL \alu_unit|Add0~24_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a35\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[3]~3_combout\ : std_logic;
SIGNAL \reg|registers~41_q\ : std_logic;
SIGNAL \reg|registers~1091_combout\ : std_logic;
SIGNAL \alu_unit|Add0~18_combout\ : std_logic;
SIGNAL \alu_unit|Add0~16_combout\ : std_logic;
SIGNAL \alu_unit|Add0~20_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a34\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[2]~2_combout\ : std_logic;
SIGNAL \reg|registers~40feeder_combout\ : std_logic;
SIGNAL \reg|registers~40_q\ : std_logic;
SIGNAL \reg|registers~1092_combout\ : std_logic;
SIGNAL \alu_unit|Add0~13_combout\ : std_logic;
SIGNAL \alu_unit|Add0~11_combout\ : std_logic;
SIGNAL \alu_unit|Add0~15_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a33\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[1]~1_combout\ : std_logic;
SIGNAL \reg|registers~39_q\ : std_logic;
SIGNAL \reg|registers~1093_combout\ : std_logic;
SIGNAL \alu_unit|Add0~6_combout\ : std_logic;
SIGNAL \alu_unit|Add0~8_combout\ : std_logic;
SIGNAL \alu_unit|Add0~10_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a45\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[13]~13_combout\ : std_logic;
SIGNAL \reg|registers~51_q\ : std_logic;
SIGNAL \reg|registers~1081_combout\ : std_logic;
SIGNAL \alu_unit|Add0~57_combout\ : std_logic;
SIGNAL \alu_unit|Add0~55\ : std_logic;
SIGNAL \alu_unit|Add0~58_combout\ : std_logic;
SIGNAL \alu_unit|Add0~60_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[0]~0_combout\ : std_logic;
SIGNAL \reg|registers~38feeder_combout\ : std_logic;
SIGNAL \reg|registers~38_q\ : std_logic;
SIGNAL \reg|registers~1062_combout\ : std_logic;
SIGNAL \alu_unit|Add0~2_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a62\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[30]~30_combout\ : std_logic;
SIGNAL \reg|registers~68_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a61\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[29]~29_combout\ : std_logic;
SIGNAL \reg|registers~67feeder_combout\ : std_logic;
SIGNAL \reg|registers~67_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a60\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[28]~28_combout\ : std_logic;
SIGNAL \reg|registers~66_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a59~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[27]~27_combout\ : std_logic;
SIGNAL \reg|registers~65_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a63\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[31]~31_combout\ : std_logic;
SIGNAL \reg|registers~69_q\ : std_logic;
SIGNAL \reg|registers~1063_combout\ : std_logic;
SIGNAL \reg|registers~1064_combout\ : std_logic;
SIGNAL \reg|registers~1065_combout\ : std_logic;
SIGNAL \reg|registers~1066_combout\ : std_logic;
SIGNAL \reg|registers~1067_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a57\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[25]~25_combout\ : std_logic;
SIGNAL \reg|registers~63_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a56\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[24]~24_combout\ : std_logic;
SIGNAL \reg|registers~62_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a55\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[23]~23_combout\ : std_logic;
SIGNAL \reg|registers~61_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a54\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[22]~22_combout\ : std_logic;
SIGNAL \reg|registers~60_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a53\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[21]~21_combout\ : std_logic;
SIGNAL \reg|registers~59_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a52\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[20]~20_combout\ : std_logic;
SIGNAL \reg|registers~58feeder_combout\ : std_logic;
SIGNAL \reg|registers~58_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a51\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[19]~19_combout\ : std_logic;
SIGNAL \reg|registers~57_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a50~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[18]~18_combout\ : std_logic;
SIGNAL \reg|registers~56_q\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a58\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|mux2|result_node[26]~26_combout\ : std_logic;
SIGNAL \reg|registers~64_q\ : std_logic;
SIGNAL \reg|registers~1068_combout\ : std_logic;
SIGNAL \reg|registers~1069_combout\ : std_logic;
SIGNAL \reg|registers~1070_combout\ : std_logic;
SIGNAL \reg|registers~1071_combout\ : std_logic;
SIGNAL \reg|registers~1072_combout\ : std_logic;
SIGNAL \reg|registers~1073_combout\ : std_logic;
SIGNAL \reg|registers~1074_combout\ : std_logic;
SIGNAL \reg|registers~1075_combout\ : std_logic;
SIGNAL \reg|registers~1076_combout\ : std_logic;
SIGNAL \reg|registers~1077_combout\ : std_logic;
SIGNAL \reg|registers~1078_combout\ : std_logic;
SIGNAL \reg|registers~1079_combout\ : std_logic;
SIGNAL \reg|registers~1080_combout\ : std_logic;
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
SIGNAL \alu_unit|LessThan0~57_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~59_cout\ : std_logic;
SIGNAL \alu_unit|LessThan0~60_combout\ : std_logic;
SIGNAL \alu_unit|Add0~4_combout\ : std_logic;
SIGNAL \alu_unit|Add0~5_combout\ : std_logic;
SIGNAL \alu_unit|Add0~61_combout\ : std_logic;
SIGNAL \alu_unit|Add0~59\ : std_logic;
SIGNAL \alu_unit|Add0~62_combout\ : std_logic;
SIGNAL \alu_unit|Add0~64_combout\ : std_logic;
SIGNAL \alu_unit|Add0~63\ : std_logic;
SIGNAL \alu_unit|Add0~67_combout\ : std_logic;
SIGNAL \alu_unit|Add0~65_combout\ : std_logic;
SIGNAL \alu_unit|Add0~66_combout\ : std_logic;
SIGNAL \alu_unit|Add0~69_combout\ : std_logic;
SIGNAL \alu_unit|Add0~68\ : std_logic;
SIGNAL \alu_unit|Add0~70_combout\ : std_logic;
SIGNAL \alu_unit|Add0~72_combout\ : std_logic;
SIGNAL \alu_unit|Add0~73_combout\ : std_logic;
SIGNAL \alu_unit|Add0~71\ : std_logic;
SIGNAL \alu_unit|Add0~74_combout\ : std_logic;
SIGNAL \alu_unit|Add0~76_combout\ : std_logic;
SIGNAL \alu_unit|Add0~77_combout\ : std_logic;
SIGNAL \alu_unit|Add0~78_combout\ : std_logic;
SIGNAL \alu_unit|Add0~75\ : std_logic;
SIGNAL \alu_unit|Add0~79_combout\ : std_logic;
SIGNAL \alu_unit|Add0~81_combout\ : std_logic;
SIGNAL \alu_unit|Add0~80\ : std_logic;
SIGNAL \alu_unit|Add0~82_combout\ : std_logic;
SIGNAL \alu_unit|Add0~84_combout\ : std_logic;
SIGNAL \alu_unit|Add0~85_combout\ : std_logic;
SIGNAL \alu_unit|Add0~83\ : std_logic;
SIGNAL \alu_unit|Add0~87_combout\ : std_logic;
SIGNAL \alu_unit|Add0~86_combout\ : std_logic;
SIGNAL \alu_unit|Add0~89_combout\ : std_logic;
SIGNAL \alu_unit|Add0~88\ : std_logic;
SIGNAL \alu_unit|Add0~90_combout\ : std_logic;
SIGNAL \alu_unit|Add0~92_combout\ : std_logic;
SIGNAL \alu_unit|Add0~93_combout\ : std_logic;
SIGNAL \alu_unit|Add0~91\ : std_logic;
SIGNAL \alu_unit|Add0~94_combout\ : std_logic;
SIGNAL \alu_unit|Add0~96_combout\ : std_logic;
SIGNAL \alu_unit|Add0~97_combout\ : std_logic;
SIGNAL \alu_unit|Add0~95\ : std_logic;
SIGNAL \alu_unit|Add0~98_combout\ : std_logic;
SIGNAL \alu_unit|Add0~100_combout\ : std_logic;
SIGNAL \alu_unit|Add0~101_combout\ : std_logic;
SIGNAL \alu_unit|Add0~99\ : std_logic;
SIGNAL \alu_unit|Add0~102_combout\ : std_logic;
SIGNAL \alu_unit|Add0~104_combout\ : std_logic;
SIGNAL \alu_unit|Add0~105_combout\ : std_logic;
SIGNAL \alu_unit|Add0~103\ : std_logic;
SIGNAL \alu_unit|Add0~106_combout\ : std_logic;
SIGNAL \alu_unit|Add0~108_combout\ : std_logic;
SIGNAL \alu_unit|Add0~109_combout\ : std_logic;
SIGNAL \alu_unit|Add0~107\ : std_logic;
SIGNAL \alu_unit|Add0~110_combout\ : std_logic;
SIGNAL \alu_unit|Add0~112_combout\ : std_logic;
SIGNAL \alu_unit|Add0~113_combout\ : std_logic;
SIGNAL \alu_unit|Add0~111\ : std_logic;
SIGNAL \alu_unit|Add0~115_combout\ : std_logic;
SIGNAL \alu_unit|Add0~114_combout\ : std_logic;
SIGNAL \alu_unit|Add0~117_combout\ : std_logic;
SIGNAL \alu_unit|Add0~116\ : std_logic;
SIGNAL \alu_unit|Add0~118_combout\ : std_logic;
SIGNAL \alu_unit|Add0~120_combout\ : std_logic;
SIGNAL \alu_unit|Add0~121_combout\ : std_logic;
SIGNAL \alu_unit|Add0~119\ : std_logic;
SIGNAL \alu_unit|Add0~122_combout\ : std_logic;
SIGNAL \alu_unit|Add0~124_combout\ : std_logic;
SIGNAL \alu_unit|Add0~125_combout\ : std_logic;
SIGNAL \alu_unit|Add0~123\ : std_logic;
SIGNAL \alu_unit|Add0~126_combout\ : std_logic;
SIGNAL \alu_unit|Add0~128_combout\ : std_logic;
SIGNAL \alu_unit|Add0~129_combout\ : std_logic;
SIGNAL \alu_unit|Add0~127\ : std_logic;
SIGNAL \alu_unit|Add0~130_combout\ : std_logic;
SIGNAL \alu_unit|Add0~132_combout\ : std_logic;
SIGNAL \alu_unit|Add0~133_combout\ : std_logic;
SIGNAL \data_memory|memory_rtl_0|auto_generated|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \alu_unit|ALT_INV_Add0~60_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_PC <= PC;
extend_out <= ww_extend_out;
ww_clk <= clk;
ww_alu_control <= alu_control;
alu_result <= ww_alu_result;
readData <= ww_readData;
ww_ImmSrc <= ImmSrc;
ww_MemWrite <= MemWrite;
ww_RegWrite <= RegWrite;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\ <= (\reg|registers~46_q\ & \reg|registers~45_q\ & \reg|registers~44_q\ & \reg|registers~43_q\ & \reg|registers~42_q\ & \reg|registers~41_q\ & \reg|registers~40_q\ & 
\reg|registers~39_q\ & \reg|registers~38_q\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & \alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & 
\alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a32~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);
\data_memory|memory_rtl_0|auto_generated|ram_block1a33\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\(1);
\data_memory|memory_rtl_0|auto_generated|ram_block1a34\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\(2);
\data_memory|memory_rtl_0|auto_generated|ram_block1a35\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\(3);
\data_memory|memory_rtl_0|auto_generated|ram_block1a36\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\(4);
\data_memory|memory_rtl_0|auto_generated|ram_block1a37\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\(5);
\data_memory|memory_rtl_0|auto_generated|ram_block1a38\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\(6);
\data_memory|memory_rtl_0|auto_generated|ram_block1a39\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\(7);
\data_memory|memory_rtl_0|auto_generated|ram_block1a40\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\(8);

\data_memory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \reg|registers~38_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \reg|registers~39_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a1~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \reg|registers~40_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a2~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \reg|registers~41_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a3~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \reg|registers~42_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a4~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \reg|registers~43_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a5~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \reg|registers~44_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a6~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \reg|registers~45_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a7~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \reg|registers~46_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a8~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\ <= (\reg|registers~55_q\ & \reg|registers~54_q\ & \reg|registers~53_q\ & \reg|registers~52_q\ & \reg|registers~51_q\ & \reg|registers~50_q\ & \reg|registers~49_q\ & 
\reg|registers~48_q\ & \reg|registers~47_q\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & \alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & 
\alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a41~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\(0);
\data_memory|memory_rtl_0|auto_generated|ram_block1a42\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\(1);
\data_memory|memory_rtl_0|auto_generated|ram_block1a43\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\(2);
\data_memory|memory_rtl_0|auto_generated|ram_block1a44\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\(3);
\data_memory|memory_rtl_0|auto_generated|ram_block1a45\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\(4);
\data_memory|memory_rtl_0|auto_generated|ram_block1a46\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\(5);
\data_memory|memory_rtl_0|auto_generated|ram_block1a47\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\(6);
\data_memory|memory_rtl_0|auto_generated|ram_block1a48\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\(7);
\data_memory|memory_rtl_0|auto_generated|ram_block1a49\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\(8);

\data_memory|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \reg|registers~47_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a9~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \reg|registers~48_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a10~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \reg|registers~49_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a11~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \reg|registers~50_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a12~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \reg|registers~51_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a13~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \reg|registers~52_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a14~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \reg|registers~53_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a15~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \reg|registers~54_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \reg|registers~55_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a17~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\ <= (\reg|registers~64_q\ & \reg|registers~63_q\ & \reg|registers~62_q\ & \reg|registers~61_q\ & \reg|registers~60_q\ & \reg|registers~59_q\ & \reg|registers~58_q\ & 
\reg|registers~57_q\ & \reg|registers~56_q\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & \alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & 
\alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a50~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\(0);
\data_memory|memory_rtl_0|auto_generated|ram_block1a51\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\(1);
\data_memory|memory_rtl_0|auto_generated|ram_block1a52\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\(2);
\data_memory|memory_rtl_0|auto_generated|ram_block1a53\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\(3);
\data_memory|memory_rtl_0|auto_generated|ram_block1a54\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\(4);
\data_memory|memory_rtl_0|auto_generated|ram_block1a55\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\(5);
\data_memory|memory_rtl_0|auto_generated|ram_block1a56\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\(6);
\data_memory|memory_rtl_0|auto_generated|ram_block1a57\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\(7);
\data_memory|memory_rtl_0|auto_generated|ram_block1a58\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\(8);

\data_memory|memory_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \reg|registers~56_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \reg|registers~57_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a19~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \reg|registers~58_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a20~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \reg|registers~59_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a21~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \reg|registers~60_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a22~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \reg|registers~61_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a23~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \reg|registers~62_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a24~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \reg|registers~63_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a25~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \reg|registers~64_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a26~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \reg|registers~69_q\ & \reg|registers~68_q\ & \reg|registers~67_q\ & \reg|registers~66_q\ & \reg|registers~65_q\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & \alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & 
\alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a59~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAOUT_bus\(0);
\data_memory|memory_rtl_0|auto_generated|ram_block1a60\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAOUT_bus\(1);
\data_memory|memory_rtl_0|auto_generated|ram_block1a61\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAOUT_bus\(2);
\data_memory|memory_rtl_0|auto_generated|ram_block1a62\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAOUT_bus\(3);
\data_memory|memory_rtl_0|auto_generated|ram_block1a63\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAOUT_bus\(4);

\data_memory|memory_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \reg|registers~65_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a27~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \reg|registers~66_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a28~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \reg|registers~67_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a29~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \reg|registers~68_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a30~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\data_memory|memory_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \reg|registers~69_q\;

\data_memory|memory_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\alu_unit|Add0~56_combout\ & \alu_unit|Add0~52_combout\ & \alu_unit|Add0~48_combout\ & \alu_unit|Add0~44_combout\ & \alu_unit|Add0~40_combout\ & \alu_unit|Add0~36_combout\ & 
\alu_unit|Add0~32_combout\ & \alu_unit|Add0~28_combout\ & \alu_unit|Add0~24_combout\ & \alu_unit|Add0~20_combout\ & \alu_unit|Add0~15_combout\ & \alu_unit|Add0~10_combout\ & \alu_unit|Add0~5_combout\);

\data_memory|memory_rtl_0|auto_generated|ram_block1a31~portadataout\ <= \data_memory|memory_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\alu_unit|ALT_INV_Add0~60_combout\ <= NOT \alu_unit|Add0~60_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X32_Y0_N9
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

-- Location: IOOBUF_X0_Y18_N23
\extend_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \extend_in[1]~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\extend_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[2]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\extend_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \extend_in[3]~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\extend_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \extend_in[3]~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\extend_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\extend_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\extend_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[7]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\extend_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[8]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\extend_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[9]~output_o\);

-- Location: IOOBUF_X30_Y0_N16
\extend_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\extend_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\extend_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[12]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\extend_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[13]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\extend_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[14]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\extend_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[15]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\extend_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[16]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\extend_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[17]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\extend_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[18]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\extend_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[19]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\extend_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[20]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\extend_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[21]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\extend_out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[22]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\extend_out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[23]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\extend_out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[24]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\extend_out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[25]~output_o\);

-- Location: IOOBUF_X3_Y24_N2
\extend_out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[26]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\extend_out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[27]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\extend_out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[28]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\extend_out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[29]~output_o\);

-- Location: IOOBUF_X3_Y24_N16
\extend_out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[30]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\extend_out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instuctionMemory|memory~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \extend_out[31]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\alu_result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~5_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\alu_result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~10_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\alu_result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~15_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\alu_result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~20_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[3]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
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

-- Location: IOOBUF_X25_Y24_N23
\alu_result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~28_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[5]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\alu_result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~32_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[6]~output_o\);

-- Location: IOOBUF_X25_Y24_N9
\alu_result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~36_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[7]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\alu_result[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~40_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[8]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\alu_result[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~44_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\alu_result[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~48_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[10]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\alu_result[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~52_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[11]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\alu_result[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~56_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[12]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\alu_result[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~60_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[13]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\alu_result[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~64_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[14]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\alu_result[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~69_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[15]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\alu_result[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~73_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[16]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\alu_result[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~77_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[17]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\alu_result[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~81_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[18]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\alu_result[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~85_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[19]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\alu_result[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~89_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[20]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\alu_result[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~93_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[21]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\alu_result[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~97_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[22]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\alu_result[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~101_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[23]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\alu_result[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~105_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[24]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\alu_result[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~109_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[25]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\alu_result[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~113_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[26]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\alu_result[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~117_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[27]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\alu_result[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~121_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[28]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\alu_result[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~125_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[29]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\alu_result[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~129_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[30]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\alu_result[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_unit|Add0~133_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \alu_result[31]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\readData[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[0]~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\readData[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[1]~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\readData[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[2]~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[2]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\readData[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[3]~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\readData[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[4]~4_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\readData[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[5]~5_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\readData[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[6]~6_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[6]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\readData[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[7]~7_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[7]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\readData[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[8]~8_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[8]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\readData[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[9]~9_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\readData[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[10]~10_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[10]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\readData[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[11]~11_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[11]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\readData[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[12]~12_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[12]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\readData[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[13]~13_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[13]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\readData[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[14]~14_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[14]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\readData[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[15]~15_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\readData[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[16]~16_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\readData[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[17]~17_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\readData[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[18]~18_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[18]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\readData[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[19]~19_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[19]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\readData[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[20]~20_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[20]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\readData[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[21]~21_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[21]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\readData[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[22]~22_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[22]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\readData[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[23]~23_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[23]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\readData[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[24]~24_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[24]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\readData[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[25]~25_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[25]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\readData[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[26]~26_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[26]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\readData[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[27]~27_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[27]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\readData[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[28]~28_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[28]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\readData[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[29]~29_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[29]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\readData[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[30]~30_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[30]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\readData[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[31]~31_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \readData[31]~output_o\);

-- Location: IOIBUF_X16_Y24_N22
\ImmSrc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ImmSrc,
	o => \ImmSrc~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\PC[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(3),
	o => \PC[3]~input_o\);

-- Location: IOIBUF_X9_Y24_N22
\PC[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(0),
	o => \PC[0]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\PC[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(1),
	o => \PC[1]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\PC[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(2),
	o => \PC[2]~input_o\);

-- Location: LCCOMB_X10_Y23_N4
\instuctionMemory|memory~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \instuctionMemory|memory~0_combout\ = (!\PC[3]~input_o\ & (!\PC[0]~input_o\ & (!\PC[1]~input_o\ & !\PC[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[3]~input_o\,
	datab => \PC[0]~input_o\,
	datac => \PC[1]~input_o\,
	datad => \PC[2]~input_o\,
	combout => \instuctionMemory|memory~0_combout\);

-- Location: IOIBUF_X0_Y10_N22
\PC[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(8),
	o => \PC[8]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\PC[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(5),
	o => \PC[5]~input_o\);

-- Location: IOIBUF_X34_Y10_N1
\PC[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(7),
	o => \PC[7]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\PC[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(4),
	o => \PC[4]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\PC[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(6),
	o => \PC[6]~input_o\);

-- Location: LCCOMB_X33_Y10_N8
\instuctionMemory|memory~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \instuctionMemory|memory~1_combout\ = (!\PC[5]~input_o\ & (!\PC[7]~input_o\ & (!\PC[4]~input_o\ & !\PC[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[5]~input_o\,
	datab => \PC[7]~input_o\,
	datac => \PC[4]~input_o\,
	datad => \PC[6]~input_o\,
	combout => \instuctionMemory|memory~1_combout\);

-- Location: LCCOMB_X16_Y14_N12
\extend_in[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \extend_in[1]~0_combout\ = (\ImmSrc~input_o\ & (\instuctionMemory|memory~0_combout\ & (!\PC[8]~input_o\ & \instuctionMemory|memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ImmSrc~input_o\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \instuctionMemory|memory~1_combout\,
	combout => \extend_in[1]~0_combout\);

-- Location: LCCOMB_X14_Y13_N12
\instuctionMemory|memory~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \instuctionMemory|memory~2_combout\ = (!\PC[8]~input_o\ & (\instuctionMemory|memory~1_combout\ & \instuctionMemory|memory~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datad => \instuctionMemory|memory~0_combout\,
	combout => \instuctionMemory|memory~2_combout\);

-- Location: LCCOMB_X16_Y14_N14
\extend_in[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \extend_in[3]~1_combout\ = (!\ImmSrc~input_o\ & (\instuctionMemory|memory~0_combout\ & (!\PC[8]~input_o\ & \instuctionMemory|memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ImmSrc~input_o\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \instuctionMemory|memory~1_combout\,
	combout => \extend_in[3]~1_combout\);

-- Location: IOIBUF_X0_Y19_N22
\alu_control[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_control(2),
	o => \alu_control[2]~input_o\);

-- Location: IOIBUF_X18_Y24_N8
\alu_control[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_control(1),
	o => \alu_control[1]~input_o\);

-- Location: IOIBUF_X0_Y19_N1
\alu_control[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_control(0),
	o => \alu_control[0]~input_o\);

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

-- Location: IOIBUF_X16_Y0_N15
\MemWrite~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MemWrite,
	o => \MemWrite~input_o\);

-- Location: LCCOMB_X19_Y13_N10
\data_memory|memory_rtl_0|auto_generated|decode3|eq_node[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0) = (\MemWrite~input_o\ & !\alu_unit|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MemWrite~input_o\,
	datad => \alu_unit|Add0~60_combout\,
	combout => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0));

-- Location: LCCOMB_X16_Y13_N26
\data_memory|memory_rtl_0|auto_generated|decode3|eq_node[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(1) = (\MemWrite~input_o\ & \alu_unit|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MemWrite~input_o\,
	datad => \alu_unit|Add0~60_combout\,
	combout => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(1));

-- Location: LCCOMB_X19_Y14_N28
\alu_unit|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~12_combout\ = \alu_control[0]~input_o\ $ (((\instuctionMemory|memory~1_combout\ & (!\PC[8]~input_o\ & \instuctionMemory|memory~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \alu_control[0]~input_o\,
	datac => \PC[8]~input_o\,
	datad => \instuctionMemory|memory~0_combout\,
	combout => \alu_unit|Add0~12_combout\);

-- Location: LCCOMB_X16_Y14_N16
\alu_unit|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~17_combout\ = \alu_control[0]~input_o\ $ (((!\ImmSrc~input_o\ & \instuctionMemory|memory~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ImmSrc~input_o\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => \alu_control[0]~input_o\,
	combout => \alu_unit|Add0~17_combout\);

-- Location: LCCOMB_X14_Y13_N22
\reg|registers~1084\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1084_combout\ = (\reg|registers~48_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \instuctionMemory|memory~0_combout\,
	datad => \reg|registers~48_q\,
	combout => \reg|registers~1084_combout\);

-- Location: LCCOMB_X16_Y14_N28
\alu_unit|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~7_combout\ = \alu_control[0]~input_o\ $ (((\ImmSrc~input_o\ & \instuctionMemory|memory~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ImmSrc~input_o\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => \alu_control[0]~input_o\,
	combout => \alu_unit|Add0~7_combout\);

-- Location: LCCOMB_X18_Y14_N16
\alu_unit|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~1_cout\ = CARRY(\alu_control[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_control[0]~input_o\,
	datad => VCC,
	cout => \alu_unit|Add0~1_cout\);

-- Location: LCCOMB_X18_Y14_N18
\alu_unit|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~2_combout\ = (\alu_control[0]~input_o\ & ((\reg|registers~1062_combout\ & (\alu_unit|Add0~1_cout\ & VCC)) # (!\reg|registers~1062_combout\ & (!\alu_unit|Add0~1_cout\)))) # (!\alu_control[0]~input_o\ & ((\reg|registers~1062_combout\ & 
-- (!\alu_unit|Add0~1_cout\)) # (!\reg|registers~1062_combout\ & ((\alu_unit|Add0~1_cout\) # (GND)))))
-- \alu_unit|Add0~3\ = CARRY((\alu_control[0]~input_o\ & (!\reg|registers~1062_combout\ & !\alu_unit|Add0~1_cout\)) # (!\alu_control[0]~input_o\ & ((!\alu_unit|Add0~1_cout\) # (!\reg|registers~1062_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[0]~input_o\,
	datab => \reg|registers~1062_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~1_cout\,
	combout => \alu_unit|Add0~2_combout\,
	cout => \alu_unit|Add0~3\);

-- Location: LCCOMB_X18_Y14_N20
\alu_unit|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~8_combout\ = ((\reg|registers~1093_combout\ $ (\alu_unit|Add0~7_combout\ $ (!\alu_unit|Add0~3\)))) # (GND)
-- \alu_unit|Add0~9\ = CARRY((\reg|registers~1093_combout\ & ((\alu_unit|Add0~7_combout\) # (!\alu_unit|Add0~3\))) # (!\reg|registers~1093_combout\ & (\alu_unit|Add0~7_combout\ & !\alu_unit|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1093_combout\,
	datab => \alu_unit|Add0~7_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~3\,
	combout => \alu_unit|Add0~8_combout\,
	cout => \alu_unit|Add0~9\);

-- Location: LCCOMB_X18_Y14_N22
\alu_unit|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~13_combout\ = (\alu_unit|Add0~12_combout\ & ((\reg|registers~1092_combout\ & (\alu_unit|Add0~9\ & VCC)) # (!\reg|registers~1092_combout\ & (!\alu_unit|Add0~9\)))) # (!\alu_unit|Add0~12_combout\ & ((\reg|registers~1092_combout\ & 
-- (!\alu_unit|Add0~9\)) # (!\reg|registers~1092_combout\ & ((\alu_unit|Add0~9\) # (GND)))))
-- \alu_unit|Add0~14\ = CARRY((\alu_unit|Add0~12_combout\ & (!\reg|registers~1092_combout\ & !\alu_unit|Add0~9\)) # (!\alu_unit|Add0~12_combout\ & ((!\alu_unit|Add0~9\) # (!\reg|registers~1092_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1092_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~9\,
	combout => \alu_unit|Add0~13_combout\,
	cout => \alu_unit|Add0~14\);

-- Location: LCCOMB_X18_Y14_N24
\alu_unit|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~18_combout\ = ((\reg|registers~1091_combout\ $ (\alu_unit|Add0~17_combout\ $ (!\alu_unit|Add0~14\)))) # (GND)
-- \alu_unit|Add0~19\ = CARRY((\reg|registers~1091_combout\ & ((\alu_unit|Add0~17_combout\) # (!\alu_unit|Add0~14\))) # (!\reg|registers~1091_combout\ & (\alu_unit|Add0~17_combout\ & !\alu_unit|Add0~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1091_combout\,
	datab => \alu_unit|Add0~17_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~14\,
	combout => \alu_unit|Add0~18_combout\,
	cout => \alu_unit|Add0~19\);

-- Location: LCCOMB_X18_Y14_N26
\alu_unit|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~22_combout\ = (\alu_unit|Add0~17_combout\ & ((\reg|registers~1090_combout\ & (\alu_unit|Add0~19\ & VCC)) # (!\reg|registers~1090_combout\ & (!\alu_unit|Add0~19\)))) # (!\alu_unit|Add0~17_combout\ & ((\reg|registers~1090_combout\ & 
-- (!\alu_unit|Add0~19\)) # (!\reg|registers~1090_combout\ & ((\alu_unit|Add0~19\) # (GND)))))
-- \alu_unit|Add0~23\ = CARRY((\alu_unit|Add0~17_combout\ & (!\reg|registers~1090_combout\ & !\alu_unit|Add0~19\)) # (!\alu_unit|Add0~17_combout\ & ((!\alu_unit|Add0~19\) # (!\reg|registers~1090_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~17_combout\,
	datab => \reg|registers~1090_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~19\,
	combout => \alu_unit|Add0~22_combout\,
	cout => \alu_unit|Add0~23\);

-- Location: LCCOMB_X18_Y14_N28
\alu_unit|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~26_combout\ = ((\reg|registers~1089_combout\ $ (\alu_unit|Add0~12_combout\ $ (!\alu_unit|Add0~23\)))) # (GND)
-- \alu_unit|Add0~27\ = CARRY((\reg|registers~1089_combout\ & ((\alu_unit|Add0~12_combout\) # (!\alu_unit|Add0~23\))) # (!\reg|registers~1089_combout\ & (\alu_unit|Add0~12_combout\ & !\alu_unit|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1089_combout\,
	datab => \alu_unit|Add0~12_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~23\,
	combout => \alu_unit|Add0~26_combout\,
	cout => \alu_unit|Add0~27\);

-- Location: LCCOMB_X18_Y14_N30
\alu_unit|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~30_combout\ = (\alu_unit|Add0~12_combout\ & ((\reg|registers~1088_combout\ & (\alu_unit|Add0~27\ & VCC)) # (!\reg|registers~1088_combout\ & (!\alu_unit|Add0~27\)))) # (!\alu_unit|Add0~12_combout\ & ((\reg|registers~1088_combout\ & 
-- (!\alu_unit|Add0~27\)) # (!\reg|registers~1088_combout\ & ((\alu_unit|Add0~27\) # (GND)))))
-- \alu_unit|Add0~31\ = CARRY((\alu_unit|Add0~12_combout\ & (!\reg|registers~1088_combout\ & !\alu_unit|Add0~27\)) # (!\alu_unit|Add0~12_combout\ & ((!\alu_unit|Add0~27\) # (!\reg|registers~1088_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1088_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~27\,
	combout => \alu_unit|Add0~30_combout\,
	cout => \alu_unit|Add0~31\);

-- Location: LCCOMB_X18_Y13_N0
\alu_unit|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~34_combout\ = ((\reg|registers~1087_combout\ $ (\alu_unit|Add0~12_combout\ $ (!\alu_unit|Add0~31\)))) # (GND)
-- \alu_unit|Add0~35\ = CARRY((\reg|registers~1087_combout\ & ((\alu_unit|Add0~12_combout\) # (!\alu_unit|Add0~31\))) # (!\reg|registers~1087_combout\ & (\alu_unit|Add0~12_combout\ & !\alu_unit|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1087_combout\,
	datab => \alu_unit|Add0~12_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~31\,
	combout => \alu_unit|Add0~34_combout\,
	cout => \alu_unit|Add0~35\);

-- Location: LCCOMB_X18_Y13_N2
\alu_unit|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~38_combout\ = (\reg|registers~1086_combout\ & ((\alu_unit|Add0~12_combout\ & (\alu_unit|Add0~35\ & VCC)) # (!\alu_unit|Add0~12_combout\ & (!\alu_unit|Add0~35\)))) # (!\reg|registers~1086_combout\ & ((\alu_unit|Add0~12_combout\ & 
-- (!\alu_unit|Add0~35\)) # (!\alu_unit|Add0~12_combout\ & ((\alu_unit|Add0~35\) # (GND)))))
-- \alu_unit|Add0~39\ = CARRY((\reg|registers~1086_combout\ & (!\alu_unit|Add0~12_combout\ & !\alu_unit|Add0~35\)) # (!\reg|registers~1086_combout\ & ((!\alu_unit|Add0~35\) # (!\alu_unit|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1086_combout\,
	datab => \alu_unit|Add0~12_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~35\,
	combout => \alu_unit|Add0~38_combout\,
	cout => \alu_unit|Add0~39\);

-- Location: LCCOMB_X18_Y13_N4
\alu_unit|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~42_combout\ = ((\alu_unit|Add0~12_combout\ $ (\reg|registers~1085_combout\ $ (!\alu_unit|Add0~39\)))) # (GND)
-- \alu_unit|Add0~43\ = CARRY((\alu_unit|Add0~12_combout\ & ((\reg|registers~1085_combout\) # (!\alu_unit|Add0~39\))) # (!\alu_unit|Add0~12_combout\ & (\reg|registers~1085_combout\ & !\alu_unit|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1085_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~39\,
	combout => \alu_unit|Add0~42_combout\,
	cout => \alu_unit|Add0~43\);

-- Location: LCCOMB_X18_Y13_N6
\alu_unit|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~46_combout\ = (\alu_unit|Add0~12_combout\ & ((\reg|registers~1084_combout\ & (\alu_unit|Add0~43\ & VCC)) # (!\reg|registers~1084_combout\ & (!\alu_unit|Add0~43\)))) # (!\alu_unit|Add0~12_combout\ & ((\reg|registers~1084_combout\ & 
-- (!\alu_unit|Add0~43\)) # (!\reg|registers~1084_combout\ & ((\alu_unit|Add0~43\) # (GND)))))
-- \alu_unit|Add0~47\ = CARRY((\alu_unit|Add0~12_combout\ & (!\reg|registers~1084_combout\ & !\alu_unit|Add0~43\)) # (!\alu_unit|Add0~12_combout\ & ((!\alu_unit|Add0~43\) # (!\reg|registers~1084_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1084_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~43\,
	combout => \alu_unit|Add0~46_combout\,
	cout => \alu_unit|Add0~47\);

-- Location: LCCOMB_X19_Y15_N8
\alu_unit|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~45_combout\ = (\alu_control[0]~input_o\ & (\alu_control[1]~input_o\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1084_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \alu_control[0]~input_o\,
	datac => \alu_control[1]~input_o\,
	datad => \reg|registers~1084_combout\,
	combout => \alu_unit|Add0~45_combout\);

-- Location: LCCOMB_X19_Y13_N4
\alu_unit|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~48_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~45_combout\) # ((\alu_unit|Add0~46_combout\ & !\alu_control[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_unit|Add0~46_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_unit|Add0~45_combout\,
	combout => \alu_unit|Add0~48_combout\);

-- Location: M9K_X15_Y2_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y4_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a17\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 17,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y12_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a41\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(1),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y12_N0
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[17]~17_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a49\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a17~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a17~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a49\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[17]~17_combout\);

-- Location: IOIBUF_X13_Y24_N22
\RegWrite~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RegWrite,
	o => \RegWrite~input_o\);

-- Location: LCCOMB_X16_Y14_N26
\reg|registers~1094\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1094_combout\ = (\RegWrite~input_o\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~1_combout\)) # (!\instuctionMemory|memory~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegWrite~input_o\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \instuctionMemory|memory~1_combout\,
	combout => \reg|registers~1094_combout\);

-- Location: FF_X16_Y13_N7
\reg|registers~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[17]~17_combout\,
	sload => VCC,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~55_q\);

-- Location: M9K_X15_Y5_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y12_N2
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[16]~16_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a48\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a16~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a48\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a16~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[16]~16_combout\);

-- Location: LCCOMB_X17_Y12_N12
\reg|registers~54feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~54feeder_combout\ = \data_memory|memory_rtl_0|auto_generated|mux2|result_node[16]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[16]~16_combout\,
	combout => \reg|registers~54feeder_combout\);

-- Location: FF_X17_Y12_N13
\reg|registers~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|registers~54feeder_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~54_q\);

-- Location: M9K_X27_Y7_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a15\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 15,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y12_N24
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[15]~15_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a47\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a15~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a47\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a15~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[15]~15_combout\);

-- Location: LCCOMB_X17_Y12_N28
\reg|registers~53feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~53feeder_combout\ = \data_memory|memory_rtl_0|auto_generated|mux2|result_node[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[15]~15_combout\,
	combout => \reg|registers~53feeder_combout\);

-- Location: FF_X17_Y12_N29
\reg|registers~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|registers~53feeder_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~53_q\);

-- Location: M9K_X27_Y2_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y15_N20
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[14]~14_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a46\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a14~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a46\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a14~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[14]~14_combout\);

-- Location: FF_X17_Y14_N1
\reg|registers~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[14]~14_combout\,
	sload => VCC,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~52_q\);

-- Location: LCCOMB_X14_Y13_N14
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[12]~12_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a44\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a12~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|memory_rtl_0|auto_generated|ram_block1a12~portadataout\,
	datab => \data_memory|memory_rtl_0|auto_generated|ram_block1a44\,
	datad => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[12]~12_combout\);

-- Location: FF_X14_Y13_N5
\reg|registers~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[12]~12_combout\,
	sload => VCC,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~50_q\);

-- Location: LCCOMB_X14_Y13_N6
\reg|registers~1082\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1082_combout\ = (\reg|registers~50_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \reg|registers~50_q\,
	datad => \instuctionMemory|memory~0_combout\,
	combout => \reg|registers~1082_combout\);

-- Location: LCCOMB_X19_Y15_N10
\alu_unit|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~53_combout\ = (\alu_control[0]~input_o\ & (\alu_control[1]~input_o\ & ((\reg|registers~1082_combout\) # (\instuctionMemory|memory~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1082_combout\,
	datab => \alu_control[0]~input_o\,
	datac => \alu_control[1]~input_o\,
	datad => \instuctionMemory|memory~2_combout\,
	combout => \alu_unit|Add0~53_combout\);

-- Location: LCCOMB_X18_Y13_N8
\alu_unit|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~50_combout\ = ((\reg|registers~1083_combout\ $ (\alu_unit|Add0~12_combout\ $ (!\alu_unit|Add0~47\)))) # (GND)
-- \alu_unit|Add0~51\ = CARRY((\reg|registers~1083_combout\ & ((\alu_unit|Add0~12_combout\) # (!\alu_unit|Add0~47\))) # (!\reg|registers~1083_combout\ & (\alu_unit|Add0~12_combout\ & !\alu_unit|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1083_combout\,
	datab => \alu_unit|Add0~12_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~47\,
	combout => \alu_unit|Add0~50_combout\,
	cout => \alu_unit|Add0~51\);

-- Location: LCCOMB_X18_Y13_N10
\alu_unit|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~54_combout\ = (\reg|registers~1082_combout\ & ((\alu_unit|Add0~12_combout\ & (\alu_unit|Add0~51\ & VCC)) # (!\alu_unit|Add0~12_combout\ & (!\alu_unit|Add0~51\)))) # (!\reg|registers~1082_combout\ & ((\alu_unit|Add0~12_combout\ & 
-- (!\alu_unit|Add0~51\)) # (!\alu_unit|Add0~12_combout\ & ((\alu_unit|Add0~51\) # (GND)))))
-- \alu_unit|Add0~55\ = CARRY((\reg|registers~1082_combout\ & (!\alu_unit|Add0~12_combout\ & !\alu_unit|Add0~51\)) # (!\reg|registers~1082_combout\ & ((!\alu_unit|Add0~51\) # (!\alu_unit|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1082_combout\,
	datab => \alu_unit|Add0~12_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~51\,
	combout => \alu_unit|Add0~54_combout\,
	cout => \alu_unit|Add0~55\);

-- Location: LCCOMB_X19_Y15_N12
\alu_unit|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~56_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~53_combout\) # ((!\alu_control[1]~input_o\ & \alu_unit|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~53_combout\,
	datab => \alu_control[1]~input_o\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_unit|Add0~54_combout\,
	combout => \alu_unit|Add0~56_combout\);

-- Location: M9K_X15_Y19_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X19_Y13_N0
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[11]~11_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a43\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a11~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|memory_rtl_0|auto_generated|ram_block1a11~portadataout\,
	datac => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a43\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[11]~11_combout\);

-- Location: LCCOMB_X19_Y13_N28
\reg|registers~49feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~49feeder_combout\ = \data_memory|memory_rtl_0|auto_generated|mux2|result_node[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[11]~11_combout\,
	combout => \reg|registers~49feeder_combout\);

-- Location: FF_X19_Y13_N29
\reg|registers~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|registers~49feeder_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~49_q\);

-- Location: LCCOMB_X19_Y13_N22
\reg|registers~1083\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1083_combout\ = (\reg|registers~49_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \instuctionMemory|memory~0_combout\,
	datad => \reg|registers~49_q\,
	combout => \reg|registers~1083_combout\);

-- Location: LCCOMB_X19_Y15_N14
\alu_unit|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~49_combout\ = (\alu_control[0]~input_o\ & (\alu_control[1]~input_o\ & ((\reg|registers~1083_combout\) # (\instuctionMemory|memory~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1083_combout\,
	datab => \alu_control[0]~input_o\,
	datac => \alu_control[1]~input_o\,
	datad => \instuctionMemory|memory~2_combout\,
	combout => \alu_unit|Add0~49_combout\);

-- Location: LCCOMB_X19_Y15_N28
\alu_unit|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~52_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~49_combout\) # ((!\alu_control[1]~input_o\ & \alu_unit|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_unit|Add0~49_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_unit|Add0~50_combout\,
	combout => \alu_unit|Add0~52_combout\);

-- Location: M9K_X15_Y11_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y13_N28
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[10]~10_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a42\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a10~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a10~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a42\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[10]~10_combout\);

-- Location: FF_X14_Y13_N29
\reg|registers~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[10]~10_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~48_q\);

-- Location: M9K_X27_Y19_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X19_Y14_N18
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[9]~9_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a41~portadataout\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a9~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a41~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a9~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[9]~9_combout\);

-- Location: LCCOMB_X19_Y14_N20
\reg|registers~47feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~47feeder_combout\ = \data_memory|memory_rtl_0|auto_generated|mux2|result_node[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[9]~9_combout\,
	combout => \reg|registers~47feeder_combout\);

-- Location: FF_X19_Y14_N21
\reg|registers~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|registers~47feeder_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~47_q\);

-- Location: LCCOMB_X19_Y14_N14
\reg|registers~1085\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1085_combout\ = (\reg|registers~47_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~0_combout\)) # (!\instuctionMemory|memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~47_q\,
	combout => \reg|registers~1085_combout\);

-- Location: LCCOMB_X19_Y13_N12
\alu_unit|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~41_combout\ = (\alu_control[1]~input_o\ & (\alu_control[0]~input_o\ & ((\reg|registers~1085_combout\) # (\instuctionMemory|memory~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[1]~input_o\,
	datab => \alu_control[0]~input_o\,
	datac => \reg|registers~1085_combout\,
	datad => \instuctionMemory|memory~2_combout\,
	combout => \alu_unit|Add0~41_combout\);

-- Location: LCCOMB_X19_Y13_N14
\alu_unit|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~44_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~41_combout\) # ((!\alu_control[1]~input_o\ & \alu_unit|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[1]~input_o\,
	datab => \alu_unit|Add0~42_combout\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_unit|Add0~41_combout\,
	combout => \alu_unit|Add0~44_combout\);

-- Location: M9K_X15_Y14_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a32\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(1),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y8_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X19_Y14_N4
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[8]~8_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a40\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a8~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a40\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a8~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[8]~8_combout\);

-- Location: LCCOMB_X19_Y14_N16
\reg|registers~46feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~46feeder_combout\ = \data_memory|memory_rtl_0|auto_generated|mux2|result_node[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[8]~8_combout\,
	combout => \reg|registers~46feeder_combout\);

-- Location: FF_X19_Y14_N17
\reg|registers~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|registers~46feeder_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~46_q\);

-- Location: LCCOMB_X19_Y14_N2
\reg|registers~1086\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1086_combout\ = (\reg|registers~46_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~0_combout\)) # (!\instuctionMemory|memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~46_q\,
	combout => \reg|registers~1086_combout\);

-- Location: LCCOMB_X19_Y13_N8
\alu_unit|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~37_combout\ = (\alu_control[0]~input_o\ & (\alu_control[1]~input_o\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1086_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \alu_control[0]~input_o\,
	datac => \alu_control[1]~input_o\,
	datad => \reg|registers~1086_combout\,
	combout => \alu_unit|Add0~37_combout\);

-- Location: LCCOMB_X19_Y13_N2
\alu_unit|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~40_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~37_combout\) # ((!\alu_control[1]~input_o\ & \alu_unit|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_unit|Add0~37_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_unit|Add0~38_combout\,
	combout => \alu_unit|Add0~40_combout\);

-- Location: M9K_X15_Y9_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y12_N18
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[7]~7_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a39\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a7~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a7~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a39\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[7]~7_combout\);

-- Location: LCCOMB_X17_Y12_N16
\reg|registers~45feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~45feeder_combout\ = \data_memory|memory_rtl_0|auto_generated|mux2|result_node[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[7]~7_combout\,
	combout => \reg|registers~45feeder_combout\);

-- Location: FF_X17_Y12_N17
\reg|registers~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|registers~45feeder_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~45_q\);

-- Location: LCCOMB_X17_Y12_N26
\reg|registers~1087\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1087_combout\ = (\reg|registers~45_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \instuctionMemory|memory~0_combout\,
	datad => \reg|registers~45_q\,
	combout => \reg|registers~1087_combout\);

-- Location: LCCOMB_X19_Y15_N20
\alu_unit|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~33_combout\ = (\alu_control[1]~input_o\ & (\alu_control[0]~input_o\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1087_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1087_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_control[0]~input_o\,
	combout => \alu_unit|Add0~33_combout\);

-- Location: LCCOMB_X19_Y15_N22
\alu_unit|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~36_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~33_combout\) # ((!\alu_control[1]~input_o\ & \alu_unit|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_control[1]~input_o\,
	datac => \alu_unit|Add0~34_combout\,
	datad => \alu_unit|Add0~33_combout\,
	combout => \alu_unit|Add0~36_combout\);

-- Location: M9K_X27_Y17_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N0
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[6]~6_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a38\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a6~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a38\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a6~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[6]~6_combout\);

-- Location: FF_X18_Y14_N1
\reg|registers~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[6]~6_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~44_q\);

-- Location: LCCOMB_X18_Y14_N2
\reg|registers~1088\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1088_combout\ = (\reg|registers~44_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~1_combout\) # (!\instuctionMemory|memory~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \instuctionMemory|memory~1_combout\,
	datad => \reg|registers~44_q\,
	combout => \reg|registers~1088_combout\);

-- Location: LCCOMB_X19_Y15_N24
\alu_unit|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~29_combout\ = (\alu_control[0]~input_o\ & (\alu_control[1]~input_o\ & ((\reg|registers~1088_combout\) # (\instuctionMemory|memory~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1088_combout\,
	datab => \alu_control[0]~input_o\,
	datac => \alu_control[1]~input_o\,
	datad => \instuctionMemory|memory~2_combout\,
	combout => \alu_unit|Add0~29_combout\);

-- Location: LCCOMB_X19_Y15_N26
\alu_unit|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~32_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~29_combout\) # ((!\alu_control[1]~input_o\ & \alu_unit|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_unit|Add0~29_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_unit|Add0~30_combout\,
	combout => \alu_unit|Add0~32_combout\);

-- Location: M9K_X15_Y7_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N4
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[5]~5_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a37\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a5~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a37\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a5~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[5]~5_combout\);

-- Location: FF_X18_Y14_N5
\reg|registers~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[5]~5_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~43_q\);

-- Location: LCCOMB_X18_Y14_N6
\reg|registers~1089\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1089_combout\ = (\reg|registers~43_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \reg|registers~43_q\,
	datad => \instuctionMemory|memory~0_combout\,
	combout => \reg|registers~1089_combout\);

-- Location: LCCOMB_X19_Y13_N24
\alu_unit|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~25_combout\ = (\alu_control[0]~input_o\ & (\alu_control[1]~input_o\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1089_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \alu_control[0]~input_o\,
	datac => \alu_control[1]~input_o\,
	datad => \reg|registers~1089_combout\,
	combout => \alu_unit|Add0~25_combout\);

-- Location: LCCOMB_X19_Y13_N26
\alu_unit|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~28_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~25_combout\) # ((\alu_unit|Add0~26_combout\ & !\alu_control[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_unit|Add0~26_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_unit|Add0~25_combout\,
	combout => \alu_unit|Add0~28_combout\);

-- Location: M9K_X15_Y17_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N8
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[4]~4_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a36\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a4~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a36\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a4~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[4]~4_combout\);

-- Location: FF_X18_Y14_N9
\reg|registers~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[4]~4_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~42_q\);

-- Location: LCCOMB_X18_Y14_N14
\reg|registers~1090\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1090_combout\ = (\reg|registers~42_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \reg|registers~42_q\,
	datad => \instuctionMemory|memory~0_combout\,
	combout => \reg|registers~1090_combout\);

-- Location: LCCOMB_X19_Y15_N16
\alu_unit|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~21_combout\ = (\alu_control[1]~input_o\ & ((\reg|registers~1090_combout\ & ((\extend_in[3]~1_combout\) # (\alu_control[0]~input_o\))) # (!\reg|registers~1090_combout\ & (\extend_in[3]~1_combout\ & \alu_control[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1090_combout\,
	datab => \extend_in[3]~1_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_control[0]~input_o\,
	combout => \alu_unit|Add0~21_combout\);

-- Location: LCCOMB_X19_Y15_N2
\alu_unit|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~24_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~21_combout\) # ((!\alu_control[1]~input_o\ & \alu_unit|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_control[1]~input_o\,
	datac => \alu_unit|Add0~22_combout\,
	datad => \alu_unit|Add0~21_combout\,
	combout => \alu_unit|Add0~24_combout\);

-- Location: M9K_X15_Y21_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y14_N12
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[3]~3_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a35\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a3~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|ram_block1a35\,
	datac => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a3~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[3]~3_combout\);

-- Location: FF_X18_Y14_N13
\reg|registers~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[3]~3_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~41_q\);

-- Location: LCCOMB_X18_Y14_N10
\reg|registers~1091\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1091_combout\ = (\reg|registers~41_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~1_combout\) # (!\instuctionMemory|memory~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \instuctionMemory|memory~1_combout\,
	datad => \reg|registers~41_q\,
	combout => \reg|registers~1091_combout\);

-- Location: LCCOMB_X19_Y15_N0
\alu_unit|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~16_combout\ = (\alu_control[1]~input_o\ & ((\reg|registers~1091_combout\ & ((\extend_in[3]~1_combout\) # (\alu_control[0]~input_o\))) # (!\reg|registers~1091_combout\ & (\extend_in[3]~1_combout\ & \alu_control[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1091_combout\,
	datab => \extend_in[3]~1_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_control[0]~input_o\,
	combout => \alu_unit|Add0~16_combout\);

-- Location: LCCOMB_X19_Y15_N30
\alu_unit|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~20_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~16_combout\) # ((!\alu_control[1]~input_o\ & \alu_unit|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_control[1]~input_o\,
	datac => \alu_unit|Add0~18_combout\,
	datad => \alu_unit|Add0~16_combout\,
	combout => \alu_unit|Add0~20_combout\);

-- Location: M9K_X27_Y21_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X19_Y14_N10
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[2]~2_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a34\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a2~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a34\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a2~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[2]~2_combout\);

-- Location: LCCOMB_X19_Y14_N12
\reg|registers~40feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~40feeder_combout\ = \data_memory|memory_rtl_0|auto_generated|mux2|result_node[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[2]~2_combout\,
	combout => \reg|registers~40feeder_combout\);

-- Location: FF_X19_Y14_N13
\reg|registers~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|registers~40feeder_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~40_q\);

-- Location: LCCOMB_X19_Y14_N22
\reg|registers~1092\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1092_combout\ = (\reg|registers~40_q\) # ((\instuctionMemory|memory~1_combout\ & (\instuctionMemory|memory~0_combout\ & !\PC[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~40_q\,
	combout => \reg|registers~1092_combout\);

-- Location: LCCOMB_X19_Y13_N16
\alu_unit|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~11_combout\ = (\alu_control[1]~input_o\ & ((\instuctionMemory|memory~2_combout\) # ((\alu_control[0]~input_o\ & \reg|registers~1092_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[1]~input_o\,
	datab => \alu_control[0]~input_o\,
	datac => \reg|registers~1092_combout\,
	datad => \instuctionMemory|memory~2_combout\,
	combout => \alu_unit|Add0~11_combout\);

-- Location: LCCOMB_X19_Y13_N30
\alu_unit|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~15_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~11_combout\) # ((\alu_unit|Add0~13_combout\ & !\alu_control[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_unit|Add0~13_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_unit|Add0~11_combout\,
	combout => \alu_unit|Add0~15_combout\);

-- Location: M9K_X27_Y14_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y14_N4
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[1]~1_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a33\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a1~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a33\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a1~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[1]~1_combout\);

-- Location: FF_X16_Y14_N17
\reg|registers~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[1]~1_combout\,
	sload => VCC,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~39_q\);

-- Location: LCCOMB_X16_Y14_N6
\reg|registers~1093\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1093_combout\ = (\reg|registers~39_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~0_combout\)) # (!\instuctionMemory|memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~39_q\,
	combout => \reg|registers~1093_combout\);

-- Location: LCCOMB_X16_Y14_N0
\alu_unit|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~6_combout\ = (\alu_control[1]~input_o\ & ((\alu_control[0]~input_o\ & ((\extend_in[1]~0_combout\) # (\reg|registers~1093_combout\))) # (!\alu_control[0]~input_o\ & (\extend_in[1]~0_combout\ & \reg|registers~1093_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[0]~input_o\,
	datab => \alu_control[1]~input_o\,
	datac => \extend_in[1]~0_combout\,
	datad => \reg|registers~1093_combout\,
	combout => \alu_unit|Add0~6_combout\);

-- Location: LCCOMB_X16_Y14_N2
\alu_unit|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~10_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~6_combout\) # ((!\alu_control[1]~input_o\ & \alu_unit|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_unit|Add0~6_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_unit|Add0~8_combout\,
	combout => \alu_unit|Add0~10_combout\);

-- Location: M9K_X27_Y16_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X19_Y14_N24
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[13]~13_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a45\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a13~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a13~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a45\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[13]~13_combout\);

-- Location: FF_X19_Y14_N25
\reg|registers~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[13]~13_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~51_q\);

-- Location: LCCOMB_X19_Y14_N26
\reg|registers~1081\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1081_combout\ = (\reg|registers~51_q\) # ((\instuctionMemory|memory~1_combout\ & (\instuctionMemory|memory~0_combout\ & !\PC[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~51_q\,
	combout => \reg|registers~1081_combout\);

-- Location: LCCOMB_X19_Y13_N18
\alu_unit|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~57_combout\ = (\instuctionMemory|memory~2_combout\) # ((\alu_control[0]~input_o\ & \reg|registers~1081_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_control[0]~input_o\,
	datac => \reg|registers~1081_combout\,
	datad => \instuctionMemory|memory~2_combout\,
	combout => \alu_unit|Add0~57_combout\);

-- Location: LCCOMB_X18_Y13_N12
\alu_unit|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~58_combout\ = ((\alu_unit|Add0~12_combout\ $ (\reg|registers~1081_combout\ $ (!\alu_unit|Add0~55\)))) # (GND)
-- \alu_unit|Add0~59\ = CARRY((\alu_unit|Add0~12_combout\ & ((\reg|registers~1081_combout\) # (!\alu_unit|Add0~55\))) # (!\alu_unit|Add0~12_combout\ & (\reg|registers~1081_combout\ & !\alu_unit|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1081_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~55\,
	combout => \alu_unit|Add0~58_combout\,
	cout => \alu_unit|Add0~59\);

-- Location: LCCOMB_X19_Y13_N20
\alu_unit|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~60_combout\ = (!\alu_control[2]~input_o\ & ((\alu_control[1]~input_o\ & (\alu_unit|Add0~57_combout\)) # (!\alu_control[1]~input_o\ & ((\alu_unit|Add0~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_unit|Add0~57_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_unit|Add0~58_combout\,
	combout => \alu_unit|Add0~60_combout\);

-- Location: FF_X19_Y13_N1
\data_memory|memory_rtl_0|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \alu_unit|Add0~60_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0));

-- Location: M9K_X15_Y10_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y12_N0
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[0]~0_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a32~portadataout\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a32~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[0]~0_combout\);

-- Location: LCCOMB_X17_Y12_N20
\reg|registers~38feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~38feeder_combout\ = \data_memory|memory_rtl_0|auto_generated|mux2|result_node[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[0]~0_combout\,
	combout => \reg|registers~38feeder_combout\);

-- Location: FF_X17_Y12_N21
\reg|registers~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|registers~38feeder_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~38_q\);

-- Location: LCCOMB_X17_Y12_N22
\reg|registers~1062\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1062_combout\ = (\reg|registers~38_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \instuctionMemory|memory~0_combout\,
	datad => \reg|registers~38_q\,
	combout => \reg|registers~1062_combout\);

-- Location: M9K_X15_Y16_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a31\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 31,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y15_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a59\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(1),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a59_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y15_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a30\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 30,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y14_N8
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[30]~30_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a62\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a30~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a62\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a30~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[30]~30_combout\);

-- Location: FF_X16_Y14_N29
\reg|registers~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[30]~30_combout\,
	sload => VCC,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~68_q\);

-- Location: M9K_X15_Y3_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a29\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 29,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y14_N10
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[29]~29_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a61\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a29~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a61\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a29~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[29]~29_combout\);

-- Location: LCCOMB_X16_Y14_N20
\reg|registers~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~67feeder_combout\ = \data_memory|memory_rtl_0|auto_generated|mux2|result_node[29]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[29]~29_combout\,
	combout => \reg|registers~67feeder_combout\);

-- Location: FF_X16_Y14_N21
\reg|registers~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|registers~67feeder_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~67_q\);

-- Location: M9K_X27_Y13_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a28\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 28,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y13_N26
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[28]~28_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a60\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a28~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a60\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a28~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[28]~28_combout\);

-- Location: FF_X14_Y13_N11
\reg|registers~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[28]~28_combout\,
	sload => VCC,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~66_q\);

-- Location: M9K_X15_Y18_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y14_N24
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[27]~27_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a59~portadataout\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a27~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a59~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a27~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[27]~27_combout\);

-- Location: FF_X16_Y14_N25
\reg|registers~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[27]~27_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~65_q\);

-- Location: LCCOMB_X14_Y13_N4
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[31]~31_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a63\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a31~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|memory_rtl_0|auto_generated|ram_block1a31~portadataout\,
	datab => \data_memory|memory_rtl_0|auto_generated|ram_block1a63\,
	datad => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[31]~31_combout\);

-- Location: FF_X14_Y13_N15
\reg|registers~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[31]~31_combout\,
	sload => VCC,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~69_q\);

-- Location: LCCOMB_X14_Y13_N24
\reg|registers~1063\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1063_combout\ = (\reg|registers~69_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \instuctionMemory|memory~0_combout\,
	datad => \reg|registers~69_q\,
	combout => \reg|registers~1063_combout\);

-- Location: LCCOMB_X16_Y14_N18
\reg|registers~1064\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1064_combout\ = (\reg|registers~68_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~0_combout\)) # (!\instuctionMemory|memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~68_q\,
	combout => \reg|registers~1064_combout\);

-- Location: LCCOMB_X16_Y14_N30
\reg|registers~1065\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1065_combout\ = (\reg|registers~67_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~0_combout\)) # (!\instuctionMemory|memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~67_q\,
	combout => \reg|registers~1065_combout\);

-- Location: LCCOMB_X14_Y13_N16
\reg|registers~1066\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1066_combout\ = (\reg|registers~66_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \instuctionMemory|memory~0_combout\,
	datad => \reg|registers~66_q\,
	combout => \reg|registers~1066_combout\);

-- Location: LCCOMB_X16_Y14_N22
\reg|registers~1067\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1067_combout\ = (\reg|registers~65_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~0_combout\)) # (!\instuctionMemory|memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~65_q\,
	combout => \reg|registers~1067_combout\);

-- Location: M9K_X15_Y6_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y12_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a19\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 19,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y5_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a21\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 21,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y18_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a23\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 23,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y10_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a24\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 24,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y9_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a25\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 25,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y13_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a50\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(1),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a50_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y13_N4
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[25]~25_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a57\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a25~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a25~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a57\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[25]~25_combout\);

-- Location: FF_X16_Y13_N17
\reg|registers~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[25]~25_combout\,
	sload => VCC,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~63_q\);

-- Location: LCCOMB_X19_Y14_N0
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[24]~24_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a56\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a24~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a24~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a56\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[24]~24_combout\);

-- Location: FF_X19_Y14_N1
\reg|registers~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[24]~24_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~62_q\);

-- Location: LCCOMB_X19_Y14_N8
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[23]~23_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a55\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a23~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a23~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a55\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[23]~23_combout\);

-- Location: FF_X19_Y14_N9
\reg|registers~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[23]~23_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~61_q\);

-- Location: M9K_X15_Y20_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a22\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: LCCOMB_X14_Y13_N30
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[22]~22_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a54\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a22~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|memory_rtl_0|auto_generated|ram_block1a54\,
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a22~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[22]~22_combout\);

-- Location: FF_X14_Y13_N31
\reg|registers~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[22]~22_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~60_q\);

-- Location: LCCOMB_X16_Y13_N22
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[21]~21_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a53\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a21~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a21~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a53\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[21]~21_combout\);

-- Location: FF_X16_Y13_N19
\reg|registers~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[21]~21_combout\,
	sload => VCC,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~59_q\);

-- Location: M9K_X15_Y8_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a20\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 20,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y12_N24
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[20]~20_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a52\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a20~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a52\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a20~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[20]~20_combout\);

-- Location: LCCOMB_X16_Y12_N28
\reg|registers~58feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~58feeder_combout\ = \data_memory|memory_rtl_0|auto_generated|mux2|result_node[20]~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[20]~20_combout\,
	combout => \reg|registers~58feeder_combout\);

-- Location: FF_X16_Y12_N29
\reg|registers~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \reg|registers~58feeder_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~58_q\);

-- Location: LCCOMB_X16_Y12_N22
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[19]~19_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a51\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a19~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a19~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a51\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[19]~19_combout\);

-- Location: FF_X16_Y13_N11
\reg|registers~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[19]~19_combout\,
	sload => VCC,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~57_q\);

-- Location: LCCOMB_X14_Y13_N8
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[18]~18_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a50~portadataout\))) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a18~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datac => \data_memory|memory_rtl_0|auto_generated|ram_block1a18~portadataout\,
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a50~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[18]~18_combout\);

-- Location: FF_X14_Y13_N13
\reg|registers~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[18]~18_combout\,
	sload => VCC,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~56_q\);

-- Location: M9K_X27_Y11_N0
\data_memory|memory_rtl_0|auto_generated|ram_block1a26\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/risc-v.ram0_DataMemory_5d7c1658.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DataMemory:data_memory|altsyncram:memory_rtl_0|altsyncram_o8d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 26,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 9001,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \data_memory|memory_rtl_0|auto_generated|decode3|eq_node\(0),
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	ena0 => \alu_unit|ALT_INV_Add0~60_combout\,
	portadatain => \data_memory|memory_rtl_0|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \data_memory|memory_rtl_0|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \data_memory|memory_rtl_0|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y13_N24
\data_memory|memory_rtl_0|auto_generated|mux2|result_node[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_memory|memory_rtl_0|auto_generated|mux2|result_node[26]~26_combout\ = (\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & (\data_memory|memory_rtl_0|auto_generated|ram_block1a58\)) # 
-- (!\data_memory|memory_rtl_0|auto_generated|address_reg_a\(0) & ((\data_memory|memory_rtl_0|auto_generated|ram_block1a26~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_memory|memory_rtl_0|auto_generated|ram_block1a58\,
	datab => \data_memory|memory_rtl_0|auto_generated|address_reg_a\(0),
	datad => \data_memory|memory_rtl_0|auto_generated|ram_block1a26~portadataout\,
	combout => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[26]~26_combout\);

-- Location: FF_X16_Y13_N25
\reg|registers~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_memory|memory_rtl_0|auto_generated|mux2|result_node[26]~26_combout\,
	ena => \reg|registers~1094_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|registers~64_q\);

-- Location: LCCOMB_X16_Y13_N14
\reg|registers~1068\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1068_combout\ = (\reg|registers~64_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~1_combout\)) # (!\instuctionMemory|memory~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~0_combout\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~64_q\,
	combout => \reg|registers~1068_combout\);

-- Location: LCCOMB_X16_Y13_N16
\reg|registers~1069\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1069_combout\ = (\reg|registers~63_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \reg|registers~63_q\,
	datad => \instuctionMemory|memory~0_combout\,
	combout => \reg|registers~1069_combout\);

-- Location: LCCOMB_X19_Y14_N6
\reg|registers~1070\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1070_combout\ = (\reg|registers~62_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~0_combout\)) # (!\instuctionMemory|memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~62_q\,
	combout => \reg|registers~1070_combout\);

-- Location: LCCOMB_X19_Y14_N30
\reg|registers~1071\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1071_combout\ = (\reg|registers~61_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~0_combout\)) # (!\instuctionMemory|memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \reg|registers~61_q\,
	datad => \PC[8]~input_o\,
	combout => \reg|registers~1071_combout\);

-- Location: LCCOMB_X14_Y13_N20
\reg|registers~1072\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1072_combout\ = (\reg|registers~60_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \reg|registers~60_q\,
	datad => \instuctionMemory|memory~0_combout\,
	combout => \reg|registers~1072_combout\);

-- Location: LCCOMB_X16_Y13_N28
\reg|registers~1073\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1073_combout\ = (\reg|registers~59_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~1_combout\)) # (!\instuctionMemory|memory~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~0_combout\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~59_q\,
	combout => \reg|registers~1073_combout\);

-- Location: LCCOMB_X16_Y12_N2
\reg|registers~1074\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1074_combout\ = (\reg|registers~58_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~0_combout\)) # (!\instuctionMemory|memory~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~1_combout\,
	datab => \instuctionMemory|memory~0_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~58_q\,
	combout => \reg|registers~1074_combout\);

-- Location: LCCOMB_X16_Y13_N20
\reg|registers~1075\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1075_combout\ = (\reg|registers~57_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~1_combout\)) # (!\instuctionMemory|memory~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~0_combout\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~57_q\,
	combout => \reg|registers~1075_combout\);

-- Location: LCCOMB_X14_Y13_N2
\reg|registers~1076\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1076_combout\ = (\reg|registers~56_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \instuctionMemory|memory~0_combout\,
	datad => \reg|registers~56_q\,
	combout => \reg|registers~1076_combout\);

-- Location: LCCOMB_X16_Y13_N8
\reg|registers~1077\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1077_combout\ = (\reg|registers~55_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~1_combout\)) # (!\instuctionMemory|memory~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~0_combout\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \PC[8]~input_o\,
	datad => \reg|registers~55_q\,
	combout => \reg|registers~1077_combout\);

-- Location: LCCOMB_X17_Y12_N10
\reg|registers~1078\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1078_combout\ = (\reg|registers~54_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \instuctionMemory|memory~0_combout\,
	datad => \reg|registers~54_q\,
	combout => \reg|registers~1078_combout\);

-- Location: LCCOMB_X17_Y12_N6
\reg|registers~1079\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1079_combout\ = (\reg|registers~53_q\ & ((\PC[8]~input_o\) # ((!\instuctionMemory|memory~0_combout\) # (!\instuctionMemory|memory~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC[8]~input_o\,
	datab => \instuctionMemory|memory~1_combout\,
	datac => \instuctionMemory|memory~0_combout\,
	datad => \reg|registers~53_q\,
	combout => \reg|registers~1079_combout\);

-- Location: LCCOMB_X17_Y14_N0
\reg|registers~1080\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|registers~1080_combout\ = (\reg|registers~52_q\ & (((\PC[8]~input_o\) # (!\instuctionMemory|memory~1_combout\)) # (!\instuctionMemory|memory~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~0_combout\,
	datab => \PC[8]~input_o\,
	datac => \reg|registers~52_q\,
	datad => \instuctionMemory|memory~1_combout\,
	combout => \reg|registers~1080_combout\);

-- Location: LCCOMB_X17_Y14_N2
\alu_unit|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~1_cout\ = CARRY((\extend_in[1]~0_combout\ & !\reg|registers~1093_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \extend_in[1]~0_combout\,
	datab => \reg|registers~1093_combout\,
	datad => VCC,
	cout => \alu_unit|LessThan0~1_cout\);

-- Location: LCCOMB_X17_Y14_N4
\alu_unit|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~3_cout\ = CARRY((\reg|registers~1092_combout\ & ((!\alu_unit|LessThan0~1_cout\) # (!\instuctionMemory|memory~2_combout\))) # (!\reg|registers~1092_combout\ & (!\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1092_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~1_cout\,
	cout => \alu_unit|LessThan0~3_cout\);

-- Location: LCCOMB_X17_Y14_N6
\alu_unit|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~5_cout\ = CARRY((\extend_in[3]~1_combout\ & ((!\alu_unit|LessThan0~3_cout\) # (!\reg|registers~1091_combout\))) # (!\extend_in[3]~1_combout\ & (!\reg|registers~1091_combout\ & !\alu_unit|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \extend_in[3]~1_combout\,
	datab => \reg|registers~1091_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~3_cout\,
	cout => \alu_unit|LessThan0~5_cout\);

-- Location: LCCOMB_X17_Y14_N8
\alu_unit|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~7_cout\ = CARRY((\extend_in[3]~1_combout\ & (\reg|registers~1090_combout\ & !\alu_unit|LessThan0~5_cout\)) # (!\extend_in[3]~1_combout\ & ((\reg|registers~1090_combout\) # (!\alu_unit|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \extend_in[3]~1_combout\,
	datab => \reg|registers~1090_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~5_cout\,
	cout => \alu_unit|LessThan0~7_cout\);

-- Location: LCCOMB_X17_Y14_N10
\alu_unit|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~9_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & ((!\alu_unit|LessThan0~7_cout\) # (!\reg|registers~1089_combout\))) # (!\instuctionMemory|memory~2_combout\ & (!\reg|registers~1089_combout\ & !\alu_unit|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1089_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~7_cout\,
	cout => \alu_unit|LessThan0~9_cout\);

-- Location: LCCOMB_X17_Y14_N12
\alu_unit|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~11_cout\ = CARRY((\reg|registers~1088_combout\ & ((!\alu_unit|LessThan0~9_cout\) # (!\instuctionMemory|memory~2_combout\))) # (!\reg|registers~1088_combout\ & (!\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1088_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~9_cout\,
	cout => \alu_unit|LessThan0~11_cout\);

-- Location: LCCOMB_X17_Y14_N14
\alu_unit|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~13_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & ((!\alu_unit|LessThan0~11_cout\) # (!\reg|registers~1087_combout\))) # (!\instuctionMemory|memory~2_combout\ & (!\reg|registers~1087_combout\ & !\alu_unit|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1087_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~11_cout\,
	cout => \alu_unit|LessThan0~13_cout\);

-- Location: LCCOMB_X17_Y14_N16
\alu_unit|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~15_cout\ = CARRY((\reg|registers~1086_combout\ & ((!\alu_unit|LessThan0~13_cout\) # (!\instuctionMemory|memory~2_combout\))) # (!\reg|registers~1086_combout\ & (!\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1086_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~13_cout\,
	cout => \alu_unit|LessThan0~15_cout\);

-- Location: LCCOMB_X17_Y14_N18
\alu_unit|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~17_cout\ = CARRY((\reg|registers~1085_combout\ & (\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~15_cout\)) # (!\reg|registers~1085_combout\ & ((\instuctionMemory|memory~2_combout\) # (!\alu_unit|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1085_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~15_cout\,
	cout => \alu_unit|LessThan0~17_cout\);

-- Location: LCCOMB_X17_Y14_N20
\alu_unit|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~19_cout\ = CARRY((\reg|registers~1084_combout\ & ((!\alu_unit|LessThan0~17_cout\) # (!\instuctionMemory|memory~2_combout\))) # (!\reg|registers~1084_combout\ & (!\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1084_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~17_cout\,
	cout => \alu_unit|LessThan0~19_cout\);

-- Location: LCCOMB_X17_Y14_N22
\alu_unit|LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~21_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & ((!\alu_unit|LessThan0~19_cout\) # (!\reg|registers~1083_combout\))) # (!\instuctionMemory|memory~2_combout\ & (!\reg|registers~1083_combout\ & !\alu_unit|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1083_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~19_cout\,
	cout => \alu_unit|LessThan0~21_cout\);

-- Location: LCCOMB_X17_Y14_N24
\alu_unit|LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~23_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & (\reg|registers~1082_combout\ & !\alu_unit|LessThan0~21_cout\)) # (!\instuctionMemory|memory~2_combout\ & ((\reg|registers~1082_combout\) # (!\alu_unit|LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1082_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~21_cout\,
	cout => \alu_unit|LessThan0~23_cout\);

-- Location: LCCOMB_X17_Y14_N26
\alu_unit|LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~25_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & ((!\alu_unit|LessThan0~23_cout\) # (!\reg|registers~1081_combout\))) # (!\instuctionMemory|memory~2_combout\ & (!\reg|registers~1081_combout\ & !\alu_unit|LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1081_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~23_cout\,
	cout => \alu_unit|LessThan0~25_cout\);

-- Location: LCCOMB_X17_Y14_N28
\alu_unit|LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~27_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & (\reg|registers~1080_combout\ & !\alu_unit|LessThan0~25_cout\)) # (!\instuctionMemory|memory~2_combout\ & ((\reg|registers~1080_combout\) # (!\alu_unit|LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1080_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~25_cout\,
	cout => \alu_unit|LessThan0~27_cout\);

-- Location: LCCOMB_X17_Y14_N30
\alu_unit|LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~29_cout\ = CARRY((\reg|registers~1079_combout\ & (\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~27_cout\)) # (!\reg|registers~1079_combout\ & ((\instuctionMemory|memory~2_combout\) # (!\alu_unit|LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1079_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~27_cout\,
	cout => \alu_unit|LessThan0~29_cout\);

-- Location: LCCOMB_X17_Y13_N0
\alu_unit|LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~31_cout\ = CARRY((\reg|registers~1078_combout\ & ((!\alu_unit|LessThan0~29_cout\) # (!\instuctionMemory|memory~2_combout\))) # (!\reg|registers~1078_combout\ & (!\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1078_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~29_cout\,
	cout => \alu_unit|LessThan0~31_cout\);

-- Location: LCCOMB_X17_Y13_N2
\alu_unit|LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~33_cout\ = CARRY((\reg|registers~1077_combout\ & (\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~31_cout\)) # (!\reg|registers~1077_combout\ & ((\instuctionMemory|memory~2_combout\) # (!\alu_unit|LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1077_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~31_cout\,
	cout => \alu_unit|LessThan0~33_cout\);

-- Location: LCCOMB_X17_Y13_N4
\alu_unit|LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~35_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & (\reg|registers~1076_combout\ & !\alu_unit|LessThan0~33_cout\)) # (!\instuctionMemory|memory~2_combout\ & ((\reg|registers~1076_combout\) # (!\alu_unit|LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1076_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~33_cout\,
	cout => \alu_unit|LessThan0~35_cout\);

-- Location: LCCOMB_X17_Y13_N6
\alu_unit|LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~37_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & ((!\alu_unit|LessThan0~35_cout\) # (!\reg|registers~1075_combout\))) # (!\instuctionMemory|memory~2_combout\ & (!\reg|registers~1075_combout\ & !\alu_unit|LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1075_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~35_cout\,
	cout => \alu_unit|LessThan0~37_cout\);

-- Location: LCCOMB_X17_Y13_N8
\alu_unit|LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~39_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & (\reg|registers~1074_combout\ & !\alu_unit|LessThan0~37_cout\)) # (!\instuctionMemory|memory~2_combout\ & ((\reg|registers~1074_combout\) # (!\alu_unit|LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1074_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~37_cout\,
	cout => \alu_unit|LessThan0~39_cout\);

-- Location: LCCOMB_X17_Y13_N10
\alu_unit|LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~41_cout\ = CARRY((\reg|registers~1073_combout\ & (\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~39_cout\)) # (!\reg|registers~1073_combout\ & ((\instuctionMemory|memory~2_combout\) # (!\alu_unit|LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1073_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~39_cout\,
	cout => \alu_unit|LessThan0~41_cout\);

-- Location: LCCOMB_X17_Y13_N12
\alu_unit|LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~43_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & (\reg|registers~1072_combout\ & !\alu_unit|LessThan0~41_cout\)) # (!\instuctionMemory|memory~2_combout\ & ((\reg|registers~1072_combout\) # (!\alu_unit|LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1072_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~41_cout\,
	cout => \alu_unit|LessThan0~43_cout\);

-- Location: LCCOMB_X17_Y13_N14
\alu_unit|LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~45_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & ((!\alu_unit|LessThan0~43_cout\) # (!\reg|registers~1071_combout\))) # (!\instuctionMemory|memory~2_combout\ & (!\reg|registers~1071_combout\ & !\alu_unit|LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1071_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~43_cout\,
	cout => \alu_unit|LessThan0~45_cout\);

-- Location: LCCOMB_X17_Y13_N16
\alu_unit|LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~47_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & (\reg|registers~1070_combout\ & !\alu_unit|LessThan0~45_cout\)) # (!\instuctionMemory|memory~2_combout\ & ((\reg|registers~1070_combout\) # (!\alu_unit|LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1070_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~45_cout\,
	cout => \alu_unit|LessThan0~47_cout\);

-- Location: LCCOMB_X17_Y13_N18
\alu_unit|LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~49_cout\ = CARRY((\reg|registers~1069_combout\ & (\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~47_cout\)) # (!\reg|registers~1069_combout\ & ((\instuctionMemory|memory~2_combout\) # (!\alu_unit|LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1069_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~47_cout\,
	cout => \alu_unit|LessThan0~49_cout\);

-- Location: LCCOMB_X17_Y13_N20
\alu_unit|LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~51_cout\ = CARRY((\reg|registers~1068_combout\ & ((!\alu_unit|LessThan0~49_cout\) # (!\instuctionMemory|memory~2_combout\))) # (!\reg|registers~1068_combout\ & (!\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1068_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~49_cout\,
	cout => \alu_unit|LessThan0~51_cout\);

-- Location: LCCOMB_X17_Y13_N22
\alu_unit|LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~53_cout\ = CARRY((\instuctionMemory|memory~2_combout\ & ((!\alu_unit|LessThan0~51_cout\) # (!\reg|registers~1067_combout\))) # (!\instuctionMemory|memory~2_combout\ & (!\reg|registers~1067_combout\ & !\alu_unit|LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1067_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~51_cout\,
	cout => \alu_unit|LessThan0~53_cout\);

-- Location: LCCOMB_X17_Y13_N24
\alu_unit|LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~55_cout\ = CARRY((\reg|registers~1066_combout\ & ((!\alu_unit|LessThan0~53_cout\) # (!\instuctionMemory|memory~2_combout\))) # (!\reg|registers~1066_combout\ & (!\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1066_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~53_cout\,
	cout => \alu_unit|LessThan0~55_cout\);

-- Location: LCCOMB_X17_Y13_N26
\alu_unit|LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~57_cout\ = CARRY((\reg|registers~1065_combout\ & (\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~55_cout\)) # (!\reg|registers~1065_combout\ & ((\instuctionMemory|memory~2_combout\) # (!\alu_unit|LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1065_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~55_cout\,
	cout => \alu_unit|LessThan0~57_cout\);

-- Location: LCCOMB_X17_Y13_N28
\alu_unit|LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~59_cout\ = CARRY((\reg|registers~1064_combout\ & ((!\alu_unit|LessThan0~57_cout\) # (!\instuctionMemory|memory~2_combout\))) # (!\reg|registers~1064_combout\ & (!\instuctionMemory|memory~2_combout\ & !\alu_unit|LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1064_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datad => VCC,
	cin => \alu_unit|LessThan0~57_cout\,
	cout => \alu_unit|LessThan0~59_cout\);

-- Location: LCCOMB_X17_Y13_N30
\alu_unit|LessThan0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|LessThan0~60_combout\ = (\instuctionMemory|memory~2_combout\ & (!\alu_unit|LessThan0~59_cout\ & \reg|registers~1063_combout\)) # (!\instuctionMemory|memory~2_combout\ & ((\reg|registers~1063_combout\) # (!\alu_unit|LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datad => \reg|registers~1063_combout\,
	cin => \alu_unit|LessThan0~59_cout\,
	combout => \alu_unit|LessThan0~60_combout\);

-- Location: LCCOMB_X16_Y13_N2
\alu_unit|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~4_combout\ = (\alu_control[2]~input_o\ & (((\alu_unit|LessThan0~60_combout\ & !\alu_control[0]~input_o\)))) # (!\alu_control[2]~input_o\ & (\reg|registers~1062_combout\ & ((\alu_control[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1062_combout\,
	datab => \alu_control[2]~input_o\,
	datac => \alu_unit|LessThan0~60_combout\,
	datad => \alu_control[0]~input_o\,
	combout => \alu_unit|Add0~4_combout\);

-- Location: LCCOMB_X16_Y13_N0
\alu_unit|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~5_combout\ = (\alu_control[2]~input_o\ & (!\alu_control[1]~input_o\ & ((\alu_unit|Add0~4_combout\)))) # (!\alu_control[2]~input_o\ & ((\alu_control[1]~input_o\ & ((\alu_unit|Add0~4_combout\))) # (!\alu_control[1]~input_o\ & 
-- (\alu_unit|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_control[1]~input_o\,
	datac => \alu_unit|Add0~2_combout\,
	datad => \alu_unit|Add0~4_combout\,
	combout => \alu_unit|Add0~5_combout\);

-- Location: LCCOMB_X19_Y15_N18
\alu_unit|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~61_combout\ = (\alu_control[1]~input_o\ & (\alu_control[0]~input_o\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1080_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1080_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_control[0]~input_o\,
	combout => \alu_unit|Add0~61_combout\);

-- Location: LCCOMB_X18_Y13_N14
\alu_unit|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~62_combout\ = (\alu_unit|Add0~12_combout\ & ((\reg|registers~1080_combout\ & (\alu_unit|Add0~59\ & VCC)) # (!\reg|registers~1080_combout\ & (!\alu_unit|Add0~59\)))) # (!\alu_unit|Add0~12_combout\ & ((\reg|registers~1080_combout\ & 
-- (!\alu_unit|Add0~59\)) # (!\reg|registers~1080_combout\ & ((\alu_unit|Add0~59\) # (GND)))))
-- \alu_unit|Add0~63\ = CARRY((\alu_unit|Add0~12_combout\ & (!\reg|registers~1080_combout\ & !\alu_unit|Add0~59\)) # (!\alu_unit|Add0~12_combout\ & ((!\alu_unit|Add0~59\) # (!\reg|registers~1080_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1080_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~59\,
	combout => \alu_unit|Add0~62_combout\,
	cout => \alu_unit|Add0~63\);

-- Location: LCCOMB_X19_Y13_N6
\alu_unit|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~64_combout\ = (!\alu_control[2]~input_o\ & ((\alu_unit|Add0~61_combout\) # ((!\alu_control[1]~input_o\ & \alu_unit|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_unit|Add0~61_combout\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_unit|Add0~62_combout\,
	combout => \alu_unit|Add0~64_combout\);

-- Location: LCCOMB_X18_Y13_N16
\alu_unit|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~67_combout\ = ((\alu_unit|Add0~12_combout\ $ (\reg|registers~1079_combout\ $ (!\alu_unit|Add0~63\)))) # (GND)
-- \alu_unit|Add0~68\ = CARRY((\alu_unit|Add0~12_combout\ & ((\reg|registers~1079_combout\) # (!\alu_unit|Add0~63\))) # (!\alu_unit|Add0~12_combout\ & (\reg|registers~1079_combout\ & !\alu_unit|Add0~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1079_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~63\,
	combout => \alu_unit|Add0~67_combout\,
	cout => \alu_unit|Add0~68\);

-- Location: LCCOMB_X16_Y13_N6
\alu_unit|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~65_combout\ = (\alu_control[0]~input_o\ & (!\alu_control[2]~input_o\ & \alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[0]~input_o\,
	datab => \alu_control[2]~input_o\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~65_combout\);

-- Location: LCCOMB_X19_Y12_N16
\alu_unit|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~66_combout\ = (\alu_unit|Add0~65_combout\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1079_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instuctionMemory|memory~2_combout\,
	datac => \alu_unit|Add0~65_combout\,
	datad => \reg|registers~1079_combout\,
	combout => \alu_unit|Add0~66_combout\);

-- Location: LCCOMB_X19_Y12_N6
\alu_unit|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~69_combout\ = (\alu_unit|Add0~66_combout\) # ((!\alu_control[2]~input_o\ & (!\alu_control[1]~input_o\ & \alu_unit|Add0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_control[1]~input_o\,
	datac => \alu_unit|Add0~67_combout\,
	datad => \alu_unit|Add0~66_combout\,
	combout => \alu_unit|Add0~69_combout\);

-- Location: LCCOMB_X18_Y13_N18
\alu_unit|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~70_combout\ = (\alu_unit|Add0~12_combout\ & ((\reg|registers~1078_combout\ & (\alu_unit|Add0~68\ & VCC)) # (!\reg|registers~1078_combout\ & (!\alu_unit|Add0~68\)))) # (!\alu_unit|Add0~12_combout\ & ((\reg|registers~1078_combout\ & 
-- (!\alu_unit|Add0~68\)) # (!\reg|registers~1078_combout\ & ((\alu_unit|Add0~68\) # (GND)))))
-- \alu_unit|Add0~71\ = CARRY((\alu_unit|Add0~12_combout\ & (!\reg|registers~1078_combout\ & !\alu_unit|Add0~68\)) # (!\alu_unit|Add0~12_combout\ & ((!\alu_unit|Add0~68\) # (!\reg|registers~1078_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1078_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~68\,
	combout => \alu_unit|Add0~70_combout\,
	cout => \alu_unit|Add0~71\);

-- Location: LCCOMB_X16_Y13_N10
\alu_unit|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~72_combout\ = (\alu_unit|Add0~70_combout\ & (!\alu_control[2]~input_o\ & !\alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~70_combout\,
	datab => \alu_control[2]~input_o\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~72_combout\);

-- Location: LCCOMB_X16_Y12_N8
\alu_unit|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~73_combout\ = (\alu_unit|Add0~72_combout\) # ((\alu_unit|Add0~65_combout\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1078_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1078_combout\,
	datac => \alu_unit|Add0~65_combout\,
	datad => \alu_unit|Add0~72_combout\,
	combout => \alu_unit|Add0~73_combout\);

-- Location: LCCOMB_X18_Y13_N20
\alu_unit|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~74_combout\ = ((\alu_unit|Add0~12_combout\ $ (\reg|registers~1077_combout\ $ (!\alu_unit|Add0~71\)))) # (GND)
-- \alu_unit|Add0~75\ = CARRY((\alu_unit|Add0~12_combout\ & ((\reg|registers~1077_combout\) # (!\alu_unit|Add0~71\))) # (!\alu_unit|Add0~12_combout\ & (\reg|registers~1077_combout\ & !\alu_unit|Add0~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1077_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~71\,
	combout => \alu_unit|Add0~74_combout\,
	cout => \alu_unit|Add0~75\);

-- Location: LCCOMB_X16_Y13_N18
\alu_unit|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~76_combout\ = (!\alu_control[2]~input_o\ & (\alu_unit|Add0~74_combout\ & !\alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_unit|Add0~74_combout\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~76_combout\);

-- Location: LCCOMB_X16_Y13_N30
\alu_unit|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~77_combout\ = (\alu_unit|Add0~76_combout\) # ((\alu_unit|Add0~65_combout\ & ((\reg|registers~1077_combout\) # (\instuctionMemory|memory~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1077_combout\,
	datab => \alu_unit|Add0~65_combout\,
	datac => \alu_unit|Add0~76_combout\,
	datad => \instuctionMemory|memory~2_combout\,
	combout => \alu_unit|Add0~77_combout\);

-- Location: LCCOMB_X14_Y12_N16
\alu_unit|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~78_combout\ = (\alu_unit|Add0~65_combout\ & ((\reg|registers~1076_combout\) # (\instuctionMemory|memory~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|registers~1076_combout\,
	datac => \instuctionMemory|memory~2_combout\,
	datad => \alu_unit|Add0~65_combout\,
	combout => \alu_unit|Add0~78_combout\);

-- Location: LCCOMB_X18_Y13_N22
\alu_unit|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~79_combout\ = (\alu_unit|Add0~12_combout\ & ((\reg|registers~1076_combout\ & (\alu_unit|Add0~75\ & VCC)) # (!\reg|registers~1076_combout\ & (!\alu_unit|Add0~75\)))) # (!\alu_unit|Add0~12_combout\ & ((\reg|registers~1076_combout\ & 
-- (!\alu_unit|Add0~75\)) # (!\reg|registers~1076_combout\ & ((\alu_unit|Add0~75\) # (GND)))))
-- \alu_unit|Add0~80\ = CARRY((\alu_unit|Add0~12_combout\ & (!\reg|registers~1076_combout\ & !\alu_unit|Add0~75\)) # (!\alu_unit|Add0~12_combout\ & ((!\alu_unit|Add0~75\) # (!\reg|registers~1076_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1076_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~75\,
	combout => \alu_unit|Add0~79_combout\,
	cout => \alu_unit|Add0~80\);

-- Location: LCCOMB_X19_Y12_N8
\alu_unit|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~81_combout\ = (\alu_unit|Add0~78_combout\) # ((\alu_unit|Add0~79_combout\ & (!\alu_control[2]~input_o\ & !\alu_control[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~78_combout\,
	datab => \alu_unit|Add0~79_combout\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~81_combout\);

-- Location: LCCOMB_X18_Y13_N24
\alu_unit|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~82_combout\ = ((\reg|registers~1075_combout\ $ (\alu_unit|Add0~12_combout\ $ (!\alu_unit|Add0~80\)))) # (GND)
-- \alu_unit|Add0~83\ = CARRY((\reg|registers~1075_combout\ & ((\alu_unit|Add0~12_combout\) # (!\alu_unit|Add0~80\))) # (!\reg|registers~1075_combout\ & (\alu_unit|Add0~12_combout\ & !\alu_unit|Add0~80\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1075_combout\,
	datab => \alu_unit|Add0~12_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~80\,
	combout => \alu_unit|Add0~82_combout\,
	cout => \alu_unit|Add0~83\);

-- Location: LCCOMB_X18_Y12_N30
\alu_unit|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~84_combout\ = (!\alu_control[2]~input_o\ & (\alu_unit|Add0~82_combout\ & !\alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datac => \alu_unit|Add0~82_combout\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~84_combout\);

-- Location: LCCOMB_X19_Y12_N2
\alu_unit|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~85_combout\ = (\alu_unit|Add0~84_combout\) # ((\alu_unit|Add0~65_combout\ & ((\reg|registers~1075_combout\) # (\instuctionMemory|memory~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1075_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datac => \alu_unit|Add0~65_combout\,
	datad => \alu_unit|Add0~84_combout\,
	combout => \alu_unit|Add0~85_combout\);

-- Location: LCCOMB_X18_Y13_N26
\alu_unit|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~87_combout\ = (\reg|registers~1074_combout\ & ((\alu_unit|Add0~12_combout\ & (\alu_unit|Add0~83\ & VCC)) # (!\alu_unit|Add0~12_combout\ & (!\alu_unit|Add0~83\)))) # (!\reg|registers~1074_combout\ & ((\alu_unit|Add0~12_combout\ & 
-- (!\alu_unit|Add0~83\)) # (!\alu_unit|Add0~12_combout\ & ((\alu_unit|Add0~83\) # (GND)))))
-- \alu_unit|Add0~88\ = CARRY((\reg|registers~1074_combout\ & (!\alu_unit|Add0~12_combout\ & !\alu_unit|Add0~83\)) # (!\reg|registers~1074_combout\ & ((!\alu_unit|Add0~83\) # (!\alu_unit|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1074_combout\,
	datab => \alu_unit|Add0~12_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~83\,
	combout => \alu_unit|Add0~87_combout\,
	cout => \alu_unit|Add0~88\);

-- Location: LCCOMB_X19_Y12_N28
\alu_unit|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~86_combout\ = (\alu_unit|Add0~65_combout\ & ((\reg|registers~1074_combout\) # (\instuctionMemory|memory~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg|registers~1074_combout\,
	datac => \alu_unit|Add0~65_combout\,
	datad => \instuctionMemory|memory~2_combout\,
	combout => \alu_unit|Add0~86_combout\);

-- Location: LCCOMB_X19_Y12_N30
\alu_unit|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~89_combout\ = (\alu_unit|Add0~86_combout\) # ((!\alu_control[2]~input_o\ & (!\alu_control[1]~input_o\ & \alu_unit|Add0~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_control[1]~input_o\,
	datac => \alu_unit|Add0~87_combout\,
	datad => \alu_unit|Add0~86_combout\,
	combout => \alu_unit|Add0~89_combout\);

-- Location: LCCOMB_X18_Y13_N28
\alu_unit|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~90_combout\ = ((\reg|registers~1073_combout\ $ (\alu_unit|Add0~12_combout\ $ (!\alu_unit|Add0~88\)))) # (GND)
-- \alu_unit|Add0~91\ = CARRY((\reg|registers~1073_combout\ & ((\alu_unit|Add0~12_combout\) # (!\alu_unit|Add0~88\))) # (!\reg|registers~1073_combout\ & (\alu_unit|Add0~12_combout\ & !\alu_unit|Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1073_combout\,
	datab => \alu_unit|Add0~12_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~88\,
	combout => \alu_unit|Add0~90_combout\,
	cout => \alu_unit|Add0~91\);

-- Location: LCCOMB_X14_Y13_N10
\alu_unit|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~92_combout\ = (!\alu_control[2]~input_o\ & (\alu_unit|Add0~90_combout\ & !\alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datab => \alu_unit|Add0~90_combout\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~92_combout\);

-- Location: LCCOMB_X14_Y13_N0
\alu_unit|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~93_combout\ = (\alu_unit|Add0~92_combout\) # ((\alu_unit|Add0~65_combout\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1073_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~65_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datac => \reg|registers~1073_combout\,
	datad => \alu_unit|Add0~92_combout\,
	combout => \alu_unit|Add0~93_combout\);

-- Location: LCCOMB_X18_Y13_N30
\alu_unit|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~94_combout\ = (\reg|registers~1072_combout\ & ((\alu_unit|Add0~12_combout\ & (\alu_unit|Add0~91\ & VCC)) # (!\alu_unit|Add0~12_combout\ & (!\alu_unit|Add0~91\)))) # (!\reg|registers~1072_combout\ & ((\alu_unit|Add0~12_combout\ & 
-- (!\alu_unit|Add0~91\)) # (!\alu_unit|Add0~12_combout\ & ((\alu_unit|Add0~91\) # (GND)))))
-- \alu_unit|Add0~95\ = CARRY((\reg|registers~1072_combout\ & (!\alu_unit|Add0~12_combout\ & !\alu_unit|Add0~91\)) # (!\reg|registers~1072_combout\ & ((!\alu_unit|Add0~91\) # (!\alu_unit|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1072_combout\,
	datab => \alu_unit|Add0~12_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~91\,
	combout => \alu_unit|Add0~94_combout\,
	cout => \alu_unit|Add0~95\);

-- Location: LCCOMB_X19_Y12_N12
\alu_unit|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~96_combout\ = (!\alu_control[2]~input_o\ & (\alu_unit|Add0~94_combout\ & !\alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datac => \alu_unit|Add0~94_combout\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~96_combout\);

-- Location: LCCOMB_X19_Y12_N10
\alu_unit|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~97_combout\ = (\alu_unit|Add0~96_combout\) # ((\alu_unit|Add0~65_combout\ & ((\reg|registers~1072_combout\) # (\instuctionMemory|memory~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~96_combout\,
	datab => \alu_unit|Add0~65_combout\,
	datac => \reg|registers~1072_combout\,
	datad => \instuctionMemory|memory~2_combout\,
	combout => \alu_unit|Add0~97_combout\);

-- Location: LCCOMB_X18_Y12_N0
\alu_unit|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~98_combout\ = ((\alu_unit|Add0~12_combout\ $ (\reg|registers~1071_combout\ $ (!\alu_unit|Add0~95\)))) # (GND)
-- \alu_unit|Add0~99\ = CARRY((\alu_unit|Add0~12_combout\ & ((\reg|registers~1071_combout\) # (!\alu_unit|Add0~95\))) # (!\alu_unit|Add0~12_combout\ & (\reg|registers~1071_combout\ & !\alu_unit|Add0~95\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1071_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~95\,
	combout => \alu_unit|Add0~98_combout\,
	cout => \alu_unit|Add0~99\);

-- Location: LCCOMB_X19_Y12_N24
\alu_unit|Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~100_combout\ = (!\alu_control[2]~input_o\ & (\alu_unit|Add0~98_combout\ & !\alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datac => \alu_unit|Add0~98_combout\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~100_combout\);

-- Location: LCCOMB_X19_Y12_N18
\alu_unit|Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~101_combout\ = (\alu_unit|Add0~100_combout\) # ((\alu_unit|Add0~65_combout\ & ((\reg|registers~1071_combout\) # (\instuctionMemory|memory~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1071_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datac => \alu_unit|Add0~65_combout\,
	datad => \alu_unit|Add0~100_combout\,
	combout => \alu_unit|Add0~101_combout\);

-- Location: LCCOMB_X18_Y12_N2
\alu_unit|Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~102_combout\ = (\alu_unit|Add0~12_combout\ & ((\reg|registers~1070_combout\ & (\alu_unit|Add0~99\ & VCC)) # (!\reg|registers~1070_combout\ & (!\alu_unit|Add0~99\)))) # (!\alu_unit|Add0~12_combout\ & ((\reg|registers~1070_combout\ & 
-- (!\alu_unit|Add0~99\)) # (!\reg|registers~1070_combout\ & ((\alu_unit|Add0~99\) # (GND)))))
-- \alu_unit|Add0~103\ = CARRY((\alu_unit|Add0~12_combout\ & (!\reg|registers~1070_combout\ & !\alu_unit|Add0~99\)) # (!\alu_unit|Add0~12_combout\ & ((!\alu_unit|Add0~99\) # (!\reg|registers~1070_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1070_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~99\,
	combout => \alu_unit|Add0~102_combout\,
	cout => \alu_unit|Add0~103\);

-- Location: LCCOMB_X18_Y12_N28
\alu_unit|Add0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~104_combout\ = (!\alu_control[1]~input_o\ & (!\alu_control[2]~input_o\ & \alu_unit|Add0~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[1]~input_o\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_unit|Add0~102_combout\,
	combout => \alu_unit|Add0~104_combout\);

-- Location: LCCOMB_X18_Y12_N18
\alu_unit|Add0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~105_combout\ = (\alu_unit|Add0~104_combout\) # ((\alu_unit|Add0~65_combout\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1070_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \alu_unit|Add0~104_combout\,
	datac => \alu_unit|Add0~65_combout\,
	datad => \reg|registers~1070_combout\,
	combout => \alu_unit|Add0~105_combout\);

-- Location: LCCOMB_X18_Y12_N4
\alu_unit|Add0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~106_combout\ = ((\alu_unit|Add0~12_combout\ $ (\reg|registers~1069_combout\ $ (!\alu_unit|Add0~103\)))) # (GND)
-- \alu_unit|Add0~107\ = CARRY((\alu_unit|Add0~12_combout\ & ((\reg|registers~1069_combout\) # (!\alu_unit|Add0~103\))) # (!\alu_unit|Add0~12_combout\ & (\reg|registers~1069_combout\ & !\alu_unit|Add0~103\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1069_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~103\,
	combout => \alu_unit|Add0~106_combout\,
	cout => \alu_unit|Add0~107\);

-- Location: LCCOMB_X19_Y12_N20
\alu_unit|Add0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~108_combout\ = (!\alu_control[2]~input_o\ & (\alu_unit|Add0~106_combout\ & !\alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_control[2]~input_o\,
	datac => \alu_unit|Add0~106_combout\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~108_combout\);

-- Location: LCCOMB_X19_Y12_N22
\alu_unit|Add0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~109_combout\ = (\alu_unit|Add0~108_combout\) # ((\alu_unit|Add0~65_combout\ & ((\reg|registers~1069_combout\) # (\instuctionMemory|memory~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1069_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datac => \alu_unit|Add0~65_combout\,
	datad => \alu_unit|Add0~108_combout\,
	combout => \alu_unit|Add0~109_combout\);

-- Location: LCCOMB_X18_Y12_N6
\alu_unit|Add0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~110_combout\ = (\alu_unit|Add0~12_combout\ & ((\reg|registers~1068_combout\ & (\alu_unit|Add0~107\ & VCC)) # (!\reg|registers~1068_combout\ & (!\alu_unit|Add0~107\)))) # (!\alu_unit|Add0~12_combout\ & ((\reg|registers~1068_combout\ & 
-- (!\alu_unit|Add0~107\)) # (!\reg|registers~1068_combout\ & ((\alu_unit|Add0~107\) # (GND)))))
-- \alu_unit|Add0~111\ = CARRY((\alu_unit|Add0~12_combout\ & (!\reg|registers~1068_combout\ & !\alu_unit|Add0~107\)) # (!\alu_unit|Add0~12_combout\ & ((!\alu_unit|Add0~107\) # (!\reg|registers~1068_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1068_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~107\,
	combout => \alu_unit|Add0~110_combout\,
	cout => \alu_unit|Add0~111\);

-- Location: LCCOMB_X18_Y12_N24
\alu_unit|Add0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~112_combout\ = (\alu_unit|Add0~110_combout\ & (!\alu_control[2]~input_o\ & !\alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~110_combout\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~112_combout\);

-- Location: LCCOMB_X18_Y12_N22
\alu_unit|Add0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~113_combout\ = (\alu_unit|Add0~112_combout\) # ((\alu_unit|Add0~65_combout\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1068_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1068_combout\,
	datac => \alu_unit|Add0~65_combout\,
	datad => \alu_unit|Add0~112_combout\,
	combout => \alu_unit|Add0~113_combout\);

-- Location: LCCOMB_X18_Y12_N8
\alu_unit|Add0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~115_combout\ = ((\alu_unit|Add0~12_combout\ $ (\reg|registers~1067_combout\ $ (!\alu_unit|Add0~111\)))) # (GND)
-- \alu_unit|Add0~116\ = CARRY((\alu_unit|Add0~12_combout\ & ((\reg|registers~1067_combout\) # (!\alu_unit|Add0~111\))) # (!\alu_unit|Add0~12_combout\ & (\reg|registers~1067_combout\ & !\alu_unit|Add0~111\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1067_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~111\,
	combout => \alu_unit|Add0~115_combout\,
	cout => \alu_unit|Add0~116\);

-- Location: LCCOMB_X19_Y12_N0
\alu_unit|Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~114_combout\ = (\alu_unit|Add0~65_combout\ & ((\reg|registers~65_q\) # (\instuctionMemory|memory~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~65_q\,
	datac => \alu_unit|Add0~65_combout\,
	datad => \instuctionMemory|memory~2_combout\,
	combout => \alu_unit|Add0~114_combout\);

-- Location: LCCOMB_X19_Y12_N26
\alu_unit|Add0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~117_combout\ = (\alu_unit|Add0~114_combout\) # ((\alu_unit|Add0~115_combout\ & (!\alu_control[1]~input_o\ & !\alu_control[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~115_combout\,
	datab => \alu_control[1]~input_o\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_unit|Add0~114_combout\,
	combout => \alu_unit|Add0~117_combout\);

-- Location: LCCOMB_X18_Y12_N10
\alu_unit|Add0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~118_combout\ = (\alu_unit|Add0~12_combout\ & ((\reg|registers~1066_combout\ & (\alu_unit|Add0~116\ & VCC)) # (!\reg|registers~1066_combout\ & (!\alu_unit|Add0~116\)))) # (!\alu_unit|Add0~12_combout\ & ((\reg|registers~1066_combout\ & 
-- (!\alu_unit|Add0~116\)) # (!\reg|registers~1066_combout\ & ((\alu_unit|Add0~116\) # (GND)))))
-- \alu_unit|Add0~119\ = CARRY((\alu_unit|Add0~12_combout\ & (!\reg|registers~1066_combout\ & !\alu_unit|Add0~116\)) # (!\alu_unit|Add0~12_combout\ & ((!\alu_unit|Add0~116\) # (!\reg|registers~1066_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1066_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~116\,
	combout => \alu_unit|Add0~118_combout\,
	cout => \alu_unit|Add0~119\);

-- Location: LCCOMB_X18_Y12_N20
\alu_unit|Add0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~120_combout\ = (\alu_unit|Add0~118_combout\ & (!\alu_control[2]~input_o\ & !\alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~118_combout\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~120_combout\);

-- Location: LCCOMB_X18_Y12_N26
\alu_unit|Add0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~121_combout\ = (\alu_unit|Add0~120_combout\) # ((\alu_unit|Add0~65_combout\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1066_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \reg|registers~1066_combout\,
	datac => \alu_unit|Add0~65_combout\,
	datad => \alu_unit|Add0~120_combout\,
	combout => \alu_unit|Add0~121_combout\);

-- Location: LCCOMB_X18_Y12_N12
\alu_unit|Add0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~122_combout\ = ((\alu_unit|Add0~12_combout\ $ (\reg|registers~1065_combout\ $ (!\alu_unit|Add0~119\)))) # (GND)
-- \alu_unit|Add0~123\ = CARRY((\alu_unit|Add0~12_combout\ & ((\reg|registers~1065_combout\) # (!\alu_unit|Add0~119\))) # (!\alu_unit|Add0~12_combout\ & (\reg|registers~1065_combout\ & !\alu_unit|Add0~119\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1065_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~119\,
	combout => \alu_unit|Add0~122_combout\,
	cout => \alu_unit|Add0~123\);

-- Location: LCCOMB_X19_Y12_N4
\alu_unit|Add0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~124_combout\ = (\alu_unit|Add0~122_combout\ & (!\alu_control[2]~input_o\ & !\alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_unit|Add0~122_combout\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~124_combout\);

-- Location: LCCOMB_X19_Y12_N14
\alu_unit|Add0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~125_combout\ = (\alu_unit|Add0~124_combout\) # ((\alu_unit|Add0~65_combout\ & ((\reg|registers~1065_combout\) # (\instuctionMemory|memory~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg|registers~1065_combout\,
	datab => \alu_unit|Add0~65_combout\,
	datac => \alu_unit|Add0~124_combout\,
	datad => \instuctionMemory|memory~2_combout\,
	combout => \alu_unit|Add0~125_combout\);

-- Location: LCCOMB_X18_Y12_N14
\alu_unit|Add0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~126_combout\ = (\alu_unit|Add0~12_combout\ & ((\reg|registers~1064_combout\ & (\alu_unit|Add0~123\ & VCC)) # (!\reg|registers~1064_combout\ & (!\alu_unit|Add0~123\)))) # (!\alu_unit|Add0~12_combout\ & ((\reg|registers~1064_combout\ & 
-- (!\alu_unit|Add0~123\)) # (!\reg|registers~1064_combout\ & ((\alu_unit|Add0~123\) # (GND)))))
-- \alu_unit|Add0~127\ = CARRY((\alu_unit|Add0~12_combout\ & (!\reg|registers~1064_combout\ & !\alu_unit|Add0~123\)) # (!\alu_unit|Add0~12_combout\ & ((!\alu_unit|Add0~123\) # (!\reg|registers~1064_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datab => \reg|registers~1064_combout\,
	datad => VCC,
	cin => \alu_unit|Add0~123\,
	combout => \alu_unit|Add0~126_combout\,
	cout => \alu_unit|Add0~127\);

-- Location: LCCOMB_X14_Y12_N18
\alu_unit|Add0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~128_combout\ = (!\alu_control[2]~input_o\ & (!\alu_control[1]~input_o\ & \alu_unit|Add0~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_control[2]~input_o\,
	datac => \alu_control[1]~input_o\,
	datad => \alu_unit|Add0~126_combout\,
	combout => \alu_unit|Add0~128_combout\);

-- Location: LCCOMB_X14_Y13_N18
\alu_unit|Add0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~129_combout\ = (\alu_unit|Add0~128_combout\) # ((\alu_unit|Add0~65_combout\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1064_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~65_combout\,
	datab => \instuctionMemory|memory~2_combout\,
	datac => \reg|registers~1064_combout\,
	datad => \alu_unit|Add0~128_combout\,
	combout => \alu_unit|Add0~129_combout\);

-- Location: LCCOMB_X18_Y12_N16
\alu_unit|Add0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~130_combout\ = \alu_unit|Add0~12_combout\ $ (\alu_unit|Add0~127\ $ (!\reg|registers~1063_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~12_combout\,
	datad => \reg|registers~1063_combout\,
	cin => \alu_unit|Add0~127\,
	combout => \alu_unit|Add0~130_combout\);

-- Location: LCCOMB_X16_Y12_N10
\alu_unit|Add0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~132_combout\ = (\alu_unit|Add0~130_combout\ & (!\alu_control[2]~input_o\ & !\alu_control[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_unit|Add0~130_combout\,
	datac => \alu_control[2]~input_o\,
	datad => \alu_control[1]~input_o\,
	combout => \alu_unit|Add0~132_combout\);

-- Location: LCCOMB_X16_Y13_N12
\alu_unit|Add0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_unit|Add0~133_combout\ = (\alu_unit|Add0~132_combout\) # ((\alu_unit|Add0~65_combout\ & ((\instuctionMemory|memory~2_combout\) # (\reg|registers~1063_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instuctionMemory|memory~2_combout\,
	datab => \alu_unit|Add0~132_combout\,
	datac => \alu_unit|Add0~65_combout\,
	datad => \reg|registers~1063_combout\,
	combout => \alu_unit|Add0~133_combout\);

-- Location: IOIBUF_X30_Y0_N8
\PC[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(9),
	o => \PC[9]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\PC[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(10),
	o => \PC[10]~input_o\);

-- Location: IOIBUF_X34_Y7_N15
\PC[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(11),
	o => \PC[11]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\PC[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(12),
	o => \PC[12]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\PC[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(13),
	o => \PC[13]~input_o\);

-- Location: IOIBUF_X34_Y6_N15
\PC[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(14),
	o => \PC[14]~input_o\);

-- Location: IOIBUF_X5_Y24_N8
\PC[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(15),
	o => \PC[15]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\PC[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(16),
	o => \PC[16]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\PC[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(17),
	o => \PC[17]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\PC[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(18),
	o => \PC[18]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\PC[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(19),
	o => \PC[19]~input_o\);

-- Location: IOIBUF_X34_Y20_N1
\PC[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(20),
	o => \PC[20]~input_o\);

-- Location: IOIBUF_X0_Y7_N22
\PC[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(21),
	o => \PC[21]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\PC[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(22),
	o => \PC[22]~input_o\);

-- Location: IOIBUF_X3_Y24_N8
\PC[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(23),
	o => \PC[23]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\PC[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(24),
	o => \PC[24]~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\PC[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(25),
	o => \PC[25]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\PC[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(26),
	o => \PC[26]~input_o\);

-- Location: IOIBUF_X30_Y24_N8
\PC[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(27),
	o => \PC[27]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\PC[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(28),
	o => \PC[28]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\PC[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(29),
	o => \PC[29]~input_o\);

-- Location: IOIBUF_X25_Y24_N1
\PC[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(30),
	o => \PC[30]~input_o\);

-- Location: IOIBUF_X32_Y0_N15
\PC[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PC(31),
	o => \PC[31]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\extend_out[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(0),
	o => \extend_out[0]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\extend_out[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(1),
	o => \extend_out[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\extend_out[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(2),
	o => \extend_out[2]~input_o\);

-- Location: IOIBUF_X21_Y24_N15
\extend_out[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(3),
	o => \extend_out[3]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\extend_out[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(4),
	o => \extend_out[4]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\extend_out[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(5),
	o => \extend_out[5]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\extend_out[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(6),
	o => \extend_out[6]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\extend_out[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(7),
	o => \extend_out[7]~input_o\);

-- Location: IOIBUF_X25_Y0_N22
\extend_out[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(8),
	o => \extend_out[8]~input_o\);

-- Location: IOIBUF_X1_Y24_N8
\extend_out[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(9),
	o => \extend_out[9]~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\extend_out[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(10),
	o => \extend_out[10]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\extend_out[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(11),
	o => \extend_out[11]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\extend_out[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(12),
	o => \extend_out[12]~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\extend_out[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(13),
	o => \extend_out[13]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\extend_out[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(14),
	o => \extend_out[14]~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\extend_out[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(15),
	o => \extend_out[15]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\extend_out[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(16),
	o => \extend_out[16]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\extend_out[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(17),
	o => \extend_out[17]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\extend_out[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(18),
	o => \extend_out[18]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\extend_out[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(19),
	o => \extend_out[19]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\extend_out[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(20),
	o => \extend_out[20]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\extend_out[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(21),
	o => \extend_out[21]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\extend_out[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(22),
	o => \extend_out[22]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\extend_out[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(23),
	o => \extend_out[23]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\extend_out[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(24),
	o => \extend_out[24]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\extend_out[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(25),
	o => \extend_out[25]~input_o\);

-- Location: IOIBUF_X3_Y24_N1
\extend_out[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(26),
	o => \extend_out[26]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\extend_out[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(27),
	o => \extend_out[27]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\extend_out[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(28),
	o => \extend_out[28]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\extend_out[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(29),
	o => \extend_out[29]~input_o\);

-- Location: IOIBUF_X3_Y24_N15
\extend_out[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(30),
	o => \extend_out[30]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\extend_out[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => extend_out(31),
	o => \extend_out[31]~input_o\);

-- Location: IOIBUF_X34_Y19_N8
\alu_result[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(0),
	o => \alu_result[0]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\alu_result[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(1),
	o => \alu_result[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\alu_result[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(2),
	o => \alu_result[2]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\alu_result[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(3),
	o => \alu_result[3]~input_o\);

-- Location: IOIBUF_X34_Y5_N22
\alu_result[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(4),
	o => \alu_result[4]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\alu_result[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(5),
	o => \alu_result[5]~input_o\);

-- Location: IOIBUF_X34_Y3_N15
\alu_result[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(6),
	o => \alu_result[6]~input_o\);

-- Location: IOIBUF_X25_Y24_N8
\alu_result[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(7),
	o => \alu_result[7]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\alu_result[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(8),
	o => \alu_result[8]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\alu_result[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(9),
	o => \alu_result[9]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\alu_result[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(10),
	o => \alu_result[10]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\alu_result[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(11),
	o => \alu_result[11]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\alu_result[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(12),
	o => \alu_result[12]~input_o\);

-- Location: IOIBUF_X25_Y0_N8
\alu_result[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(13),
	o => \alu_result[13]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\alu_result[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(14),
	o => \alu_result[14]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\alu_result[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(15),
	o => \alu_result[15]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\alu_result[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(16),
	o => \alu_result[16]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\alu_result[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(17),
	o => \alu_result[17]~input_o\);

-- Location: IOIBUF_X34_Y8_N22
\alu_result[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(18),
	o => \alu_result[18]~input_o\);

-- Location: IOIBUF_X34_Y8_N8
\alu_result[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(19),
	o => \alu_result[19]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\alu_result[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(20),
	o => \alu_result[20]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\alu_result[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(21),
	o => \alu_result[21]~input_o\);

-- Location: IOIBUF_X34_Y11_N8
\alu_result[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(22),
	o => \alu_result[22]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\alu_result[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(23),
	o => \alu_result[23]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\alu_result[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(24),
	o => \alu_result[24]~input_o\);

-- Location: IOIBUF_X23_Y24_N22
\alu_result[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(25),
	o => \alu_result[25]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\alu_result[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(26),
	o => \alu_result[26]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\alu_result[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(27),
	o => \alu_result[27]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\alu_result[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(28),
	o => \alu_result[28]~input_o\);

-- Location: IOIBUF_X34_Y11_N1
\alu_result[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(29),
	o => \alu_result[29]~input_o\);

-- Location: IOIBUF_X5_Y24_N1
\alu_result[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(30),
	o => \alu_result[30]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\alu_result[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => alu_result(31),
	o => \alu_result[31]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\readData[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(0),
	o => \readData[0]~input_o\);

-- Location: IOIBUF_X11_Y24_N1
\readData[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(1),
	o => \readData[1]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\readData[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(2),
	o => \readData[2]~input_o\);

-- Location: IOIBUF_X18_Y24_N15
\readData[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(3),
	o => \readData[3]~input_o\);

-- Location: IOIBUF_X11_Y24_N8
\readData[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(4),
	o => \readData[4]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\readData[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(5),
	o => \readData[5]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\readData[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(6),
	o => \readData[6]~input_o\);

-- Location: IOIBUF_X34_Y8_N15
\readData[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(7),
	o => \readData[7]~input_o\);

-- Location: IOIBUF_X21_Y24_N1
\readData[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(8),
	o => \readData[8]~input_o\);

-- Location: IOIBUF_X21_Y24_N8
\readData[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(9),
	o => \readData[9]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\readData[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(10),
	o => \readData[10]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\readData[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(11),
	o => \readData[11]~input_o\);

-- Location: IOIBUF_X7_Y24_N15
\readData[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(12),
	o => \readData[12]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\readData[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(13),
	o => \readData[13]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\readData[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(14),
	o => \readData[14]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\readData[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(15),
	o => \readData[15]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\readData[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(16),
	o => \readData[16]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\readData[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(17),
	o => \readData[17]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\readData[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(18),
	o => \readData[18]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\readData[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(19),
	o => \readData[19]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\readData[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(20),
	o => \readData[20]~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\readData[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(21),
	o => \readData[21]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\readData[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(22),
	o => \readData[22]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\readData[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(23),
	o => \readData[23]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\readData[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(24),
	o => \readData[24]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\readData[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(25),
	o => \readData[25]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\readData[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(26),
	o => \readData[26]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\readData[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(27),
	o => \readData[27]~input_o\);

-- Location: IOIBUF_X13_Y24_N1
\readData[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(28),
	o => \readData[28]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\readData[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(29),
	o => \readData[29]~input_o\);

-- Location: IOIBUF_X11_Y24_N22
\readData[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(30),
	o => \readData[30]~input_o\);

-- Location: IOIBUF_X13_Y24_N8
\readData[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => readData(31),
	o => \readData[31]~input_o\);

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

readData(0) <= \readData[0]~output_o\;

readData(1) <= \readData[1]~output_o\;

readData(2) <= \readData[2]~output_o\;

readData(3) <= \readData[3]~output_o\;

readData(4) <= \readData[4]~output_o\;

readData(5) <= \readData[5]~output_o\;

readData(6) <= \readData[6]~output_o\;

readData(7) <= \readData[7]~output_o\;

readData(8) <= \readData[8]~output_o\;

readData(9) <= \readData[9]~output_o\;

readData(10) <= \readData[10]~output_o\;

readData(11) <= \readData[11]~output_o\;

readData(12) <= \readData[12]~output_o\;

readData(13) <= \readData[13]~output_o\;

readData(14) <= \readData[14]~output_o\;

readData(15) <= \readData[15]~output_o\;

readData(16) <= \readData[16]~output_o\;

readData(17) <= \readData[17]~output_o\;

readData(18) <= \readData[18]~output_o\;

readData(19) <= \readData[19]~output_o\;

readData(20) <= \readData[20]~output_o\;

readData(21) <= \readData[21]~output_o\;

readData(22) <= \readData[22]~output_o\;

readData(23) <= \readData[23]~output_o\;

readData(24) <= \readData[24]~output_o\;

readData(25) <= \readData[25]~output_o\;

readData(26) <= \readData[26]~output_o\;

readData(27) <= \readData[27]~output_o\;

readData(28) <= \readData[28]~output_o\;

readData(29) <= \readData[29]~output_o\;

readData(30) <= \readData[30]~output_o\;

readData(31) <= \readData[31]~output_o\;
END structure;


