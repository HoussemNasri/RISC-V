library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- The Instruction Memory
entity InstrMemory is 
	port (
		PCNext: in unsigned(31 downto 0);
		clk: in std_logic;
		instr: out std_logic_vector(31 downto 0) -- The instruction size is 32 bit
	);
end;

architecture Behavioural of InstrMemory is
	type MemoryType is array (0 to 5000) of std_logic_vector(31 downto 0);
	signal memory: MemoryType := (0 => x"FFC4A303", others => x"00000000");
begin

	process(clk)
	begin
		instr <= memory(to_integer(PCNext));
	end process;
	
end; 