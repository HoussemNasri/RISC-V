library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- A 32bit adder.
entity Adder is
	port(
		A: in signed(31 downto 0);
		B: in signed(31 downto 0);
		S: out signed(31 downto 0)
	);
end Adder;

architecture Behavioural of Adder is
begin
	
	S <= A + B;
	
end Behavioural;