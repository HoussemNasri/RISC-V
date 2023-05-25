library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- The Data Memory
entity DataMemory is 
	port(
		address: in std_logic_vector(31 downto 0); -- The address to read from or write to (depending on the write enable signal)
		isWriteEnable: in std_logic; -- Control signal to enable/disable memory writing
		writeClock: in std_logic; -- Write Clock
		readClock : in std_logic; -- Read Clock
		writeData: in std_logic_vector(31 downto 0); -- Bus to write data to memory
		readData: out std_logic_vector(31 downto 0) -- Bus to read data from memory
	);
end;

architecture Behavioural of DataMemory is
	function init_data
	return std_logic_vector is 
		variable data : std_logic_vector(200 DOWNTO 0) := (others => '0');
		variable x    : natural := 0;
   begin 
		data(31 downto 0) := x"0000000A";
		while (x < 6) loop 
			data((32 * (x + 1)) - 1 downto x * 32) := std_logic_vector(to_unsigned(x, 32));
			x := x + 1;
		end loop;
	return data;
   end;
	
	signal words : std_logic_vector(200 DOWNTO 0) := init_data;
begin

	process(writeClock, address)
	begin
		if (rising_edge(writeClock)) then
			if (isWriteEnable = '1') then 
				-- memory(to_integer(unsigned(address))) <= writeData;
				words(to_integer(unsigned(address)) * 8 + 31 downto to_integer(unsigned(address)) * 8) <= writeData;
			end if;
		end if;
	end process;
	
	process(readClock)
	begin 
		if (rising_edge(readClock)) then
			-- readData <= memory(to_integer(unsigned(address)));
			readData <= words(to_integer(unsigned(address)) * 8 + 31 downto to_integer(unsigned(address)) * 8);
		end if;
	end process;
end;