library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- The Data Memory
entity DataMemory is 
	port(
		address: in std_logic_vector(31 downto 0);
		data: out std_logic_vector(31 downto 0)
	);
end;

architecture Behavioural of DataMemory is
	type MemoryType is array (0 to 16383) of std_logic_vector(31 downto 0);
	signal memory: MemoryType := (8192 => x"0000000A", others => x"00000000");
begin
	
	data <= memory(to_integer(unsigned(address)));
	
end;