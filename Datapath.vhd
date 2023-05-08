LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- The Datapath Unit
ENTITY Datapath IS
	PORT (
		PC: IN unsigned(31 downto 0);
		extend_out: INOUT signed(31 DOWNTO 0);
		clk : IN std_logic;
		alu_control: IN std_logic_vector(2 downto 0); 
		alu_result: OUT signed(31 downto 0);
		readData: INOUT std_logic_vector(31 downto 0);
		ImmSrc: IN std_logic;
		MemWrite: IN std_logic; -- Control signal to enable/disable data memory writing
		RegWrite: IN std_logic; -- Control signal to enable/disable register file writing
		RD1: OUT std_logic_vector(31 downto 0)
	);
END;

ARCHITECTURE Behavioural OF Datapath IS

	COMPONENT RegisterFile
		PORT (
			A1 : IN std_logic_vector(4 DOWNTO 0); -- The address of a register to read from
			A2 : IN std_logic_vector(4 DOWNTO 0); -- The address of a register to read from
			A3 : IN std_logic_vector(4 DOWNTO 0); -- The address of the register to write to
			Data : IN std_logic_vector(31 DOWNTO 0); -- The data to write
			isWriteEnable : IN std_logic;
			clk : IN std_logic;
			RD1 : OUT std_logic_vector(31 DOWNTO 0); -- Outputs the associated value at address A1
			RD2 : OUT std_logic_vector(31 DOWNTO 0) -- Outputs the associated value at address A2
		);
	END COMPONENT;
 
	COMPONENT InstrMemory
		PORT (
			PCNext : IN unsigned(31 DOWNTO 0);
			instr : OUT std_logic_vector(31 DOWNTO 0) -- The instruction size is 32 bit
		);
	END COMPONENT;
 
	COMPONENT Extend
		PORT (
			A : IN signed(11 DOWNTO 0);
			S : OUT signed(31 DOWNTO 0)
		);
	END COMPONENT;
	
	COMPONENT ALU
		PORT(
			A: in signed(31 downto 0);
			B: in signed(31 downto 0);
			ALUControl: in std_logic_vector(2 downto 0);
			S: out signed(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT DataMemory
		port(
			address: in std_logic_vector(31 downto 0);
			isWriteEnable: in std_logic;
			clk: in std_logic;
			writeData: in std_logic_vector(31 downto 0);
			readData: out std_logic_vector(31 downto 0)
		);
	END COMPONENT;
 
	SIGNAL currentInstruction : std_logic_vector(31 DOWNTO 0);
	SIGNAL register_A1 : std_logic_vector(4 DOWNTO 0);
	SIGNAL register_A2 : std_logic_vector(4 DOWNTO 0);
	SIGNAL register_A3 : std_logic_vector(4 DOWNTO 0);
	SIGNAL register_Data : std_logic_vector(31 DOWNTO 0);
	SIGNAL register_RD1 : std_logic_vector(31 DOWNTO 0);
	SIGNAL register_RD2 : std_logic_vector(31 DOWNTO 0);
	SIGNAL data_data : std_logic_vector(31 downto 0);
	SIGNAL aluResult : signed(31 DOWNTO 0);
	SIGNAL extend_in : signed(11 DOWNTO 0);
	-- SIGNAL extend_out : signed(31 DOWNTO 0);
 
BEGIN

	RD1 <= register_RD1;
	alu_result <= aluResult;

	instuctionMemory : InstrMemory
	PORT MAP(PCNext => PC, instr => currentInstruction);
 
	extend_in <= signed(currentInstruction(31 DOWNTO 20)) when ImmSrc = '0' else 
					 signed(currentInstruction(31 downto 25) & currentInstruction(11 downto 7)) when ImmSrc = '1';					 
	extendUnit : Extend
	PORT MAP(A => extend_in, S => extend_out);
 
	reg : RegisterFile
	PORT MAP(A1 => register_A1, A2 => register_A2, A3 => currentInstruction(11 downto 7), Data => readData, 
   isWriteEnable => RegWrite, clk => clk, RD1 => register_RD1, RD2 => register_RD2);
		
	alu_unit: ALU 
	port map (A => signed(register_RD1), B => extend_out, S => aluResult, ALUControl => alu_control);
	
	data_memory: DataMemory
	PORT MAP(address => std_logic_vector(aluResult), clk => clk,  readData => readData, writeData => register_RD2,
	isWriteEnable => MemWrite);
 
	register_A1 <= currentInstruction(19 DOWNTO 15);
	register_A2 <= currentInstruction(24 DOWNTO 20);
	
END;