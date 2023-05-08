library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- The Data Memory
entity DataMemory is 
	port(
		address: in std_logic_vector(31 downto 0); -- The address to read from or write to (depending on the write enable signal)
		isWriteEnable: in std_logic; -- Control signal to enable/disable memory writing
		clk: in std_logic; -- Clock
		writeData: in std_logic_vector(31 downto 0); -- Bus to write data to memory
		readData: out std_logic_vector(31 downto 0) -- Bus to read data from memory
	);
end;

architecture Behavioural of DataMemory is
	type MemoryType is array (0 to 9000) of std_logic_vector(31 downto 0);
	signal memory: MemoryType := (8192 => x"0000000A", others => x"00000000");
begin

	process(clk)
	begin 
		if (rising_edge(clk)) then
			if (isWriteEnable = '1') then 
				memory(to_integer(unsigned(address))) <= writeData;
			end if;
			readData <= memory(to_integer(unsigned(address)));
		end if;
	end process;
end;