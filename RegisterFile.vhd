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
  function init_registers
	return std_logic_vector is variable regs : std_logic_vector(1023 DOWNTO 0) := (others => '0');
  begin 
	regs(319 downto 288) := x"00000000";
	regs(159 downto 128) := x"00000010";
	return regs;
  end;

  signal registers : std_logic_vector(1023 DOWNTO 0) := init_registers;
begin
	
	-- Handle writes syncronously
	process(clk)
	begin 
		if (rising_edge(clk)) then 
			if (isWriteEnable = '1') then
				registers(to_integer(unsigned(A3)) * 32 + 31 downto to_integer(unsigned(A3)) * 32) <= Data;
			end if;
		end if;
	end process;
	
	-- Handle reads asyncrounously
	process(A1, A2)
	begin
		RD1 <= registers(to_integer(unsigned(A1)) * 32 + 31 downto to_integer(unsigned(A1)) * 32);
		RD2 <= registers(to_integer(unsigned(A2)) * 32 + 31 downto to_integer(unsigned(A2)) * 32);
	end process;
	
end;

