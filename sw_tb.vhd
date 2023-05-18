library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sw_tb is
end sw_tb;

architecture tb of sw_tb is
	 signal clk: std_logic := '1';
	 -- Control Signals
	 signal ALUControl: std_logic_vector(2 downto 0) := "000"; -- Addition operation
	 signal ImmSrc : std_logic_vector(1 downto 0) := "01";
	 signal MemWrite: std_logic := '1';
	 signal RegWrite: std_logic := '0';
	 signal ALUSrc: std_logic := '1';
	 signal ResultSrc: std_logic := '0';
	 signal PCSrc    : std_logic := '1';
begin
	
	 UUT : entity work.Datapath 
	 port map (clk => clk, ALUControl => ALUControl, ImmSrc => ImmSrc, MemWrite => MemWrite,
	 RegWrite => RegWrite, ALUSrc => ALUSrc, ResultSrc => ResultSrc, fastClock => '0', PCSrc => PCSrc);
	 
	 clk <=  '1' after 10 ns when clk = '0' else
        '0' after 10 ns when clk = '1';
  
end tb ;