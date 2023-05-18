library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- The Instruction Memory
entity InstrMemory is 
	port (
		PCNext: in unsigned(31 downto 0);
		instr: out std_logic_vector(31 downto 0) -- The instruction size is 32 bit
	);
end;

architecture Behavioural of InstrMemory is
	type MemoryType is array (0 to 500) of std_logic_vector(31 downto 0);
	signal memory: MemoryType := (
		0 => x"0004A303", -- lw x6, 0(x9)
		4 => x"0064A423", -- sw x6, 8(x9)
		24 => x"FE420AE3",
	others => x"00000000"); -- Update instructions to cope with the new flat data memory
begin

	instr <= memory(to_integer(PCNext));
	
end; 