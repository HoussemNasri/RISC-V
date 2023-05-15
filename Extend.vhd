library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- An extend unit that exntends 12-bit signed numbers to 32-bits
entity Extend is 
	port (
		instruction: in std_logic_vector(31 downto 0);
		ImmSrc: in std_logic_vector(1 downto 0);
		extended: out signed(31 downto 0)
	);
end;

architecture Behavioural of Extend is
	signal immediate_upper_12bit: signed(11 downto 0) := (others => '0');
begin

	immediate_upper_12bit <= 
		signed(instruction(31 DOWNTO 20)) when ImmSrc = "00" else 
		signed(instruction(31 downto 25) & instruction(11 downto 7)) when ImmSrc = "01" else
		signed(instruction(31) & instruction(7) & instruction(30 downto 25) & instruction(11 downto 8)) when ImmSrc = "10";
					   
	extended <= 
		resize(immediate_upper_12bit, 31) & '0' when ImmSrc = "10" else 
		resize(immediate_upper_12bit, 32);
end;