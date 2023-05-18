library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lw_tb is
end lw_tb;

architecture tb of lw_tb is
	 signal clk: std_logic := '1';
	 signal fastClock: std_logic := '0';
	 signal alu_control: std_logic_vector(2 downto 0) := "000"; -- Addition operation
	 signal ImmSrc : std_logic_vector(1 downto 0) := "00";
	 signal MemWrite: std_logic := '0';
	 signal RegWrite: std_logic := '1';
	 signal ALUSrc: std_logic := '1';
	 signal ResultSrc: std_logic := '1';
	 signal PCSrc    : std_logic := '0';
begin

	 UUT : entity work.Datapath 
	 port map (clk => clk, ALU_control => alu_control, ImmSrc => ImmSrc, MemWrite => MemWrite,
	 RegWrite => RegWrite, ALUSrc => ALUSrc, ResultSrc => ResultSrc, fastClock => fastClock, PCSrc => PCSrc);
	 
	 clk <=  '1' after 10 ns when clk = '0' else
        '0' after 10 ns when clk = '1' else 
		  '0' after 200 ns;
		  
	 fastClock <=  '1' after 8 ns when clk = '0' else
        '0' after 8 ns when clk = '1' else 
		  '0' after 200 ns;
  
end tb ;