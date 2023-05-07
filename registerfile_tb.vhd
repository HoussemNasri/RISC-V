library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity registerfile_tb is
end registerfile_tb;

architecture tb of registerfile_tb is
	 signal clk: std_logic := '0';
	 signal addressA1: std_logic_vector(4 downto 0);
	 signal addressA2: std_logic_vector(4 downto 0);
	 signal addressA3: std_logic_vector(4 downto 0);
	 signal data: std_logic_vector(31 downto 0);
	 signal RD1: std_logic_vector(31 downto 0);
	 signal RD2: std_logic_vector(31 downto 0);
	 signal isWriteEnable: std_logic := '1';
begin

	 clk <=  '1' after 10 ns when clk = '0' else
        '0' after 10 ns when clk = '1';
    
    UUT : entity work.RegisterFile 
	 port map (clk => clk, A1 => addressA1, A2 => addressA2, A3 => addressA3, Data => data,
	 RD1 => RD1, RD2 => RD2, iswriteEnable => isWriteEnable);
	 
	 TB: process 
	 begin
		addressA1 <= "01001"; -- Read from register x9
		wait for 4ns;
		addressA3 <= "01000"; -- Write to register x8
		data <= x"0000000F";
		wait for 10ns;
		addressA2 <= "01000"; -- Read from register x8
	 end process;
end tb ;