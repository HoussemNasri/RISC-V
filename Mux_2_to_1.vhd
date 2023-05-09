library IEEE;
use iEEE.std_logic_1164.all;


entity Mux_2_to_1 is 
	port(
		A: in std_logic_vector(31 downto 0);
		B: in std_logic_vector(31 downto 0);
		selector: in std_logic;
		S: out std_logic_vector(31 downto 0)
	);

end entity;

architecture Behavioural of Mux_2_to_1 is 
begin

	S <= A when selector = '0' else 
		  B when selector = '1';

end architecture;