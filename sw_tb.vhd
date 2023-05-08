library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sw_tb is
end sw_tb;

architecture tb of sw_tb is
	 signal PC: unsigned(31 downto 0) := x"00000001";
	 signal clk: std_logic := '0';
	 signal extend_out: signed(31 DOWNTO 0);	 
	 signal alu_result: signed(31 downto 0);
	 signal readData : std_logic_vector(31 downto 0);
	 -- Control Signals
	 signal alu_control: std_logic_vector(2 downto 0) := "000"; -- Addition operation
	 signal ImmSrc : std_logic := '1';
	 signal MemWrite: std_logic := '1';
	 signal RegWrite: std_logic := '0';
	 signal RD1: std_logic_vector(31 downto 0);
begin

	process(clk) 
	begin
		if(rising_edge(clk)) then
			PC <= PC + 1;
		end if;
	end process;
	
	 UUT : entity work.Datapath 
	 port map (PC => PC, clk => clk, extend_out => extend_out, alu_result => alu_result,
	 ALU_control => alu_control, readData => readData, ImmSrc => ImmSrc, MemWrite => MemWrite,
	 RegWrite => RegWrite, RD1 => RD1);
	 
	 clk <=  '1' after 10 ns when clk = '0' else
        '0' after 10 ns when clk = '1';
  
end tb ;