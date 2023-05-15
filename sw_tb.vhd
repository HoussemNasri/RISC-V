library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sw_tb is
end sw_tb;

architecture tb of sw_tb is
	 signal clk: std_logic := '1';
	 signal extend_out: signed(31 DOWNTO 0);	 
	 signal readData : std_logic_vector(31 downto 0);
	 -- Control Signals
	 signal alu_control: std_logic_vector(2 downto 0) := "000"; -- Addition operation
	 signal ImmSrc : std_logic := '1';
	 signal MemWrite: std_logic := '1';
	 signal RegWrite: std_logic := '0';
	 signal ALUSrc: std_logic := '1';
	 signal ResultSrc: std_logic := '0';
begin
	
	 UUT : entity work.Datapath 
	 port map (clk => clk, extend_out => extend_out,
	 ALU_control => alu_control, readData => readData, ImmSrc => ImmSrc, MemWrite => MemWrite,
	 RegWrite => RegWrite, ALUSrc => ALUSrc, ResultSrc => ResultSrc, fastClock => '0');
	 
	 clk <=  '1' after 10 ns when clk = '0' else
        '0' after 10 ns when clk = '1';
  
end tb ;