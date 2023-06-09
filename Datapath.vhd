LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- The Datapath Unit
ENTITY Datapath IS
	PORT (
		clk : IN std_logic;
		ALUControl: IN std_logic_vector(2 downto 0); 
		ImmSrc: IN std_logic_vector(1 downto 0);
		MemWrite: IN std_logic; -- Control signal to enable/disable data memory writing
		RegWrite: IN std_logic; -- Control signal to enable/disable register file writing
		ALUSrc: IN std_logic;
		ResultSrC: IN std_logic;
		PCSrc    : IN std_logic;
		fastClock: IN std_logic;
		instruction: OUT std_logic_vector(31 DOWNTO 0);
		isZero: OUT std_logic;
		PCNext: OUT std_logic_vector(31 DOWNTO 0);
		PC    : IN unsigned(31 DOWNTO 0)
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
			instruction: in std_logic_vector(31 downto 0);
			ImmSrc: in std_logic_vector(1 downto 0);
			extended: out signed(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ALU
		PORT(
			A: in signed(31 downto 0);
			B: in signed(31 downto 0);
			ALUControl: in std_logic_vector(2 downto 0);
			S: inout signed(31 downto 0);
			zeroFlag: out std_logic
		);
	END COMPONENT;
	
	COMPONENT DataMemory
		port(
			address: in std_logic_vector(31 downto 0);
			isWriteEnable: in std_logic;
			writeClock: in std_logic;
			readClock: in std_logic;
			writeData: in std_logic_vector(31 downto 0);
			readData: out std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Mux_2_to_1 
		port(
			A: in std_logic_vector(31 downto 0);
			B: in std_logic_vector(31 downto 0);
			selector: in std_logic;
			S: out std_logic_vector(31 downto 0)
		);
	END COMPONENT;
 
	SIGNAL currentInstruction : std_logic_vector(31 DOWNTO 0);
	SIGNAL register_A3 : std_logic_vector(4 DOWNTO 0);
	SIGNAL register_Data : std_logic_vector(31 DOWNTO 0);
	SIGNAL register_RD1 : std_logic_vector(31 DOWNTO 0);
	SIGNAL register_RD2 : std_logic_vector(31 DOWNTO 0);
	SIGNAL data_data : std_logic_vector(31 downto 0);
	SIGNAL aluResult : signed(31 DOWNTO 0);
	SIGNAL aluSrcB   : std_logic_vector(31 DOWNTO 0);
	SIGNAL result    : std_logic_vector(31 DOWNTO 0);
	SIGNAL temp1     : std_logic_vector(31 downto 0);
	SIGNAL temp2     : std_logic_vector(31 downto 0);
	SIGNAL extend_out : signed(31 DOWNTO 0);
	SIGNAL readData: std_logic_vector(31 downto 0);
 
BEGIN
	
	instruction <= currentInstruction;

	instuctionMemory : InstrMemory
	PORT MAP(PCNext => PC, instr => currentInstruction);
 					 
	extendUnit : Extend
	PORT MAP(instruction => currentInstruction, extended => extend_out, ImmSrc => ImmSrc);
 
	reg : RegisterFile
	PORT MAP(A1 => currentInstruction(19 DOWNTO 15), A2 => currentInstruction(24 DOWNTO 20), A3 => currentInstruction(11 downto 7), Data => result, 
   isWriteEnable => RegWrite, clk => clk, RD1 => register_RD1, RD2 => register_RD2);
		
	alu_unit: ALU 
	port map (A => signed(register_RD1), B => signed(aluSrcB), S => aluResult, ALUControl => ALUControl, zeroFlag => isZero);
	
	data_memory: DataMemory
	PORT MAP(address => std_logic_vector(aluResult), writeClock => clk, readClock => fastClock, readData => readData, writeData => register_RD2,
	isWriteEnable => MemWrite);
	
	M1: Mux_2_to_1 
	port map(A => register_RD2, B => std_logic_vector(extend_out), selector => ALUSrc, S => aluSrcB);
	
	M2: Mux_2_to_1
	port map(A => std_logic_vector(aluResult), B => readData, selector => resultSrC, S => result);
	
	-- Modelsim refused to simulate the design when I passed this directly to the Mux
	temp1 <= std_logic_vector(PC + 4);
	temp2 <= std_logic_vector(signed(PC) + extend_out);
	
	M3: Mux_2_to_1
	port map(A => temp1, B => temp2, selector => PCSrc,  S => PCNext);
	
END;