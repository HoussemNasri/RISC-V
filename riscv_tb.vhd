library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity riscv_tb is
	generic(
		program_size: integer := 0;
	);
end;

architecture tb of riscv_tb is
		signal slowClock: std_logic := '1';
		signal fastClock:	std_logic := '1';
		signal PC: unsigned(31 downto 0) := x"00000000";
		signal PCNext: std_logic_vector(31 DOWNTO 0);
begin

	 process(slowClock) 
	 begin
		if(rising_edge(slowClock)) then
			if(PC = x"0000000C") then -- Execute instruction 0x00000000, 0x00000004 and 0x00000008 then stop!
				assert false report "end of simulation" severity failure;
			end if;
			PC <= unsigned(PCNext);
		end if;
	 end process;

	 UUT : entity work.riscv 
		port map (PC => PC, PCNext => PCNext, slowClock => slowClock, fastClock => fastClock);
	 
	 slowClock <=  '1' after 10 ns when slowClock = '0' else
        '0' after 10 ns when slowClock = '1';
		  
	 fastClock <=  '1' after 8 ns when fastClock = '0' else
        '0' after 8 ns when fastClock = '1';
  
end;