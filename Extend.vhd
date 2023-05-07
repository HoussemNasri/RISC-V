library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- An extend unit that exntends 12-bit signed numbers to 32-bits
entity Extend is 
	port (
		A: in signed(11 downto 0);
		S: out signed(31 downto 0)
	);
end;

architecture Behavioural of Extend is
begin

	S <= resize(A, 32);

end;