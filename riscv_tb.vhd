library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity riscv_tb is
end;

architecture tb of riscv_tb is
		signal slowClock: std_logic := '1';
		signal fastClock:	std_logic := '1';
begin

	 UUT : entity work.riscv 
		port map (slowClock => slowClock, fastClock => fastClock);
	 
	 slowClock <=  '1' after 10 ns when slowClock = '0' else
        '0' after 10 ns when slowClock = '1' else 
		  '0' after 200 ns;
		  
	 fastClock <=  '1' after 8 ns when fastClock = '0' else
        '0' after 8 ns when fastClock = '1' else 
		  '0' after 200 ns;
  
end;