LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

-- The Datapath Unit
ENTITY Datapath IS
	PORT (
		extend_out: INOUT signed(31 DOWNTO 0);
		clk : IN std_logic;
		alu_control: IN std_logic_vector(2 downto 0); 
		readData: INOUT std_logic_vector(31 downto 0);
		ImmSrc: IN std_logic_vector(1 downto 0);
		MemWrite: IN std_logic; -- Control signal to enable/disable data memory writing
		RegWrite: IN std_logic; -- Control signal to enable/disable register file writing
		ALUSrc: IN std_logic;
		ResultSrC: IN std_logic;
		fastClock: IN std_logic
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
			ImmSrc: std_logic_vector(1 downto 0);
			extended: out signed(31 downto 0)
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
	SIGNAL PC        : unsigned(31 DOWNTO 0) := x"00000000";
	-- SIGNAL extend_out : signed(31 DOWNTO 0);
 
BEGIN

	process(clk) 
	begin
		if(rising_edge(clk)) then
			PC <= PC + 1;
		end if;
	end process;

	instuctionMemory : InstrMemory
	PORT MAP(PCNext => PC, instr => currentInstruction);
 					 
	extendUnit : Extend
	PORT MAP(instruction => currentInstruction, extended => extend_out, ImmSrc => ImmSrc);
 
	reg : RegisterFile
	PORT MAP(A1 => currentInstruction(19 DOWNTO 15), A2 => currentInstruction(24 DOWNTO 20), A3 => currentInstruction(11 downto 7), Data => result, 
   isWriteEnable => RegWrite, clk => clk, RD1 => register_RD1, RD2 => register_RD2);
		
	alu_unit: ALU 
	port map (A => signed(register_RD1), B => signed(aluSrcB), S => aluResult, ALUControl => alu_control);
	
	data_memory: DataMemory
	PORT MAP(address => std_logic_vector(aluResult), writeClock => clk, readClock => fastClock, readData => readData, writeData => register_RD2,
	isWriteEnable => MemWrite);
	
	M1: Mux_2_to_1 
	port map(A => register_RD2, B => std_logic_vector(extend_out), selector => ALUSrc, S => aluSrcB);
	
	M2: Mux_2_to_1
	port map(A => std_logic_vector(aluResult), B => readData, selector => resultSrC, S => result);
	
END;