library IEEE;
use IEEE.std_logic_1164.all;
use iEEE.numeric_std.all;

-- The Entry point
entity riscv is 
	port (
		PC       : in unsigned(31 downto 0);
		PCNext   : out std_logic_vector(31 DOWNTO 0);
		slowClock: in std_logic;
		fastClock: in std_logic
	);
end;

architecture Behavioural of riscv is
	 signal ALUControl: std_logic_vector(2 downto 0); -- Addition operation
	 signal ImmSrc : std_logic_vector(1 downto 0);
	 signal MemWrite: std_logic;
	 signal RegWrite: std_logic;
	 signal ALUSrc: std_logic;
	 signal ResultSrc: std_logic;
	 signal PCSrc    : std_logic;
	 signal instruction: std_logic_vector(31 DOWNTO 0);
	 signal isZero: std_logic;
begin

	dp: entity work.Datapath
		port map (
			clk => slowClock,
			fastClock => fastClock,
			ALUControl => ALUControl,
			ImmSrc => ImmSrc, 
			instruction => instruction,
			MemWrite => MemWrite,
			RegWrite => RegWrite,
			ALUSrc => ALUSrc,
			ResultSrc =>  ResultSrc,
			PCSrc => PCSrc,
			isZero => isZero,
			PC => PC,
			PCNext => PCNext
		);
		
	cu: entity work.ControlUnit
		port map (
			opcode => instruction(6 downto 0),
			funct3 => instruction(14 downto 12),
			funct7_5 => instruction(30),
			isZero => isZero,
			ImmSrc => ImmSrc,
			ALUSrc => ALUSrc,
			RegWrite => RegWrite,
			MemWrite => MemWrite, 
			ResultSrc => ResultSrc,
			ALUControl => ALUControl,
			PCSrc => PCSrc
		);

end;