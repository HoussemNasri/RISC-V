library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

-- The ALU
entity ALU is 
	port(
		A: in signed(31 downto 0);
		B: in signed(31 downto 0);
		ALUControl: in std_logic_vector(2 downto 0);
		S: buffer signed(31 downto 0);
		zeroFlag: out std_logic
	);
end;

architecture ALU_ARCH of ALU is
constant OP_ADD : std_logic_vector(2 downto 0) := "000";
constant OP_SUB : std_logic_vector(2 downto 0) := "001";
constant OP_AND : std_logic_vector(2 downto 0) := "010";
constant OP_OR  : std_logic_vector(2 downto 0) := "011";
constant OP_SLT : std_logic_vector(2 downto 0) := "100";

signal SLTResult: std_logic;

begin
	SLTResult <= '1' when A < B else '0'; 
	
	with ALUControl select S <= 
			A + B     when OP_ADD,
			A - B     when OP_SUB,
			A and B   when OP_AND,
			A or B    when OP_OR,
			(0 => SLTResult, others => '0') when OP_SLT,
			x"00000000" when others;

	zeroFlag <= '1' when S = x"00000000" else '0';
end;