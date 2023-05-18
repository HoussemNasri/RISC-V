library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity beq_tb is
end beq_tb;

architecture tb of beq_tb is
	 signal clk: std_logic := '1';
	 signal fastClock: std_logic := '0';
	 signal ALUControl: std_logic_vector(2 downto 0) := "001"; -- Addition operation
	 signal ImmSrc : std_logic_vector(1 downto 0) := "10";
	 signal MemWrite: std_logic := '0';
	 signal RegWrite: std_logic := '0';
	 signal ALUSrc: std_logic := '0';
	 signal ResultSrc: std_logic := '1';
	 signal PCSrc    : std_logic := '1';
	 signal isZero   : std_logic := '0';
begin

	 UUT : entity work.Datapath 
	 port map (clk => clk, ALUControl => ALUControl, ImmSrc => ImmSrc, MemWrite => MemWrite,
	 RegWrite => RegWrite, ALUSrc => ALUSrc, ResultSrc => ResultSrc, fastClock => '0', PCSrc => PCSrc, isZero => isZero);
	 
	 clk <=  '1' after 10 ns when clk = '0' else
        '0' after 10 ns when clk = '1' else 
		  '0' after 200 ns;
		  
	 fastClock <=  '1' after 8 ns when clk = '0' else
        '0' after 8 ns when clk = '1' else 
		  '0' after 200 ns;
  
end tb ;