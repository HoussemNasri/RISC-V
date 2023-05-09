library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lw_tb is
end lw_tb;

architecture tb of lw_tb is
	 signal PC: unsigned(31 downto 0) := x"00000000";
	 signal clk: std_logic := '0';
	 signal fastClock: std_logic := '0';
	 signal extend_out: signed(31 DOWNTO 0);	 
	 signal alu_control: std_logic_vector(2 downto 0) := "000"; -- Addition operation
	 signal readData : std_logic_vector(31 downto 0);
	 signal ImmSrc : std_logic := '0';
	 signal MemWrite: std_logic := '0';
	 signal RegWrite: std_logic := '1';
	 signal ALUSrc: std_logic := '1';
	 signal ResultSrc: std_logic := '1';
begin

	process(clk) 
	begin 
		if(rising_edge(clk)) then
			PC <= PC + 1;
		end if;
	end process;
	
	 UUT : entity work.Datapath 
	 port map (PC => PC, clk => clk, extend_out => extend_out,
	 ALU_control => alu_control, readData => readData, ImmSrc => ImmSrc, MemWrite => MemWrite,
	 RegWrite => RegWrite, ALUSrc => ALUSrc, ResultSrc => ResultSrc, fastClock => fastClock);
	 
	 clk <=  '1' after 10 ns when clk = '0' else
        '0' after 10 ns when clk = '1' else 
		  '0' after 200 ns;
		  
	 fastClock <=  '1' after 8 ns when clk = '0' else
        '0' after 8 ns when clk = '1' else 
		  '0' after 200 ns;
  
end tb ;