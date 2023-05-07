library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

-- The Register File
entity RegisterFile is
	port(
		A1: in std_logic_vector(4 downto 0); -- The address of a register to read from
		A2: in std_logic_vector(4 downto 0); -- The address of a register to read from
		A3: in std_logic_vector(4 downto 0); -- The address of the register to write to
		Data: in std_logic_vector(31 downto 0); -- The data to write
		isWriteEnable: in std_logic;
		clk: in std_logic;
		RD1: out std_logic_vector(31 downto 0); -- Outputs the associated value at address A1
		RD2: out std_logic_vector(31 downto 0) -- Outputs the associated value at address A2
	);
end;

architecture Behavioural of RegisterFile is
  type MemoryType is array (0 to 2**5 - 1) of std_logic_vector(31 downto 0);
  signal registers : MemoryType := (9 => x"00002004", others => x"00000000");  -- Initialize all registers to 0
begin
	-- Handle writes syncronously
	process(clk)
	begin 
		if (rising_edge(clk)) then 
			if (isWriteEnable = '1') then
				registers(to_integer(unsigned(A3))) <= Data;
			end if;
		end if;
	end process;
	
	-- Handle reads asyncrounously
	process(all) 
	begin
		RD1 <= registers(to_integer(unsigned(A1)));
		RD2 <= registers(to_integer(unsigned(A2)));
	end process;
	
end;