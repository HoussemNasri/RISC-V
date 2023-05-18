library IEEE;
use IEEE.std_logic_1164.all;

-- The Control Unit
entity ControlUnit is 
	port (
		opcode: in std_logic_vector(6 downto 0);
		funct3: in std_logic_vector(2 downto 0);
		funct7_5  : in std_logic;
		isZero: in std_logic; -- ALU Result was zero
		RegWrite: out std_logic;
		ImmSrc: out std_logic_vector(1 downto 0);
		ALUSrc: out std_logic;
		MemWrite: out std_logic;
		ResultSrc: out std_logic;
		ALUControl: out std_logic_vector(2 downto 0);
		PCSrc: out std_logic
	);
end;

architecture Behavioural of ControlUnit is
	component MainDecoder is 
		port(
			opcode: in std_logic_vector(6 downto 0);
			RegWrite: out std_logic;
			ImmSrc: out std_logic_vector(1 downto 0);
			ALUSrc: out std_logic;
			MemWrite: out std_logic;
			ResultSrc: out std_logic;
			Branch: out std_logic;
			ALUOp: out std_logic_vector(1 downto 0));
	end component;
	
	component ALUDecoder 
		port(
			opcode_5  : in std_logic;
			funct3    : in std_logic_vector(2 downto 0);
			funct7_5  : in std_logic;
			ALUOp     : in std_logic_vector(1 downto 0);
			ALUControl: out std_logic_vector(2 downto 0)
		);
	end component;
	
	signal Branch: std_logic;
	signal ALUOp : std_logic_vector(1 downto 0);
begin

	decoder: MainDecoder
		port map (opcode => opcode, RegWrite => RegWrite, ImmSrc => ImmSrc,
		ALUSrc => ALUSrc, MemWrite => MemWrite, ResultSrc => ResultSrc, Branch => Branch, ALUOp => ALUOp);
		
	xAluDecoder: ALUDecoder
		port map (opcode_5 => opcode(5), funct3 => funct3, funct7_5 => funct7_5, ALUOp => ALUOp,
		ALUControl => ALUControl);
		
	PCSrc <= isZero and Branch;

end;