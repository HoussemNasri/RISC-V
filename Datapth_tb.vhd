library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath_tb is
end datapath_tb;

architecture tb of datapath_tb is
	 signal PC: unsigned(31 downto 0) := x"00000000";
	 signal clk: std_logic := '0';
	 signal extend_out: signed(31 DOWNTO 0);	 
	 signal alu_result: signed(31 downto 0);
	 signal alu_control: std_logic_vector(2 downto 0);
	 signal read_data : std_logic_vector(31 downto 0);
begin

	process(clk) 
	begin 
		if(rising_edge(clk)) then
			PC <= PC + 1;
		end if;
	end process;
	
	 UUT : entity work.Datapath 
	 port map (PC => PC, clk => clk, extend_out => extend_out, alu_result => alu_result,
	 ALU_control => alu_control, read_data => read_data);
	 
	 alu_control <= "000"; -- Add operation
	 
	 clk <=  '1' after 10 ns when clk = '0' else
        '0' after 10 ns when clk = '1';
  
end tb ;