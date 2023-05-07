library IEEE;
use IEEE.std_logic_1164.all;

-- The Program Counter always points to the address of the instruction being executed
entity PC is 
	port(
		clk: in std_logic;
		nextInstr: in std_logic_vector(31 downto 0);
		currentInstr: out std_logic_vector(31 downto 0)
	);
end;

architecture Behavioural of PC is
begin
	process (clk)
	begin 
		if(rising_edge(clk)) then 
			currentInstr <= nextInstr;
		end if;
	end process;
end;