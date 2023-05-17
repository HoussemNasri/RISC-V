library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- The ALU Decoder
entity ALUDecoder is 
	port(
		opcode_5  : in std_logic;
		funct3_2_0: in std_logic_vector(2 downto 0);
		funct7_5  : in std_logic;
		ALUOp     : in std_logic_vector(1 downto 0);
		ALUControl: out std_logic_vector(2 downto 0));
end;

architecture Behavioural of ALUDecoder is
	signal temp: std_logic_vector(1 downto 0);
begin
	process(opcode_5, funct3_2_0, funct7_5, ALUOp) is 
	begin 
	
		case ALUOp is 
			when "00" => 
				ALUControl <= "000";
			when "01" => 
				ALUControl <= "001";
			when "10" => 
				case funct3_2_0 is 
					when "000" => 
						temp <= opcode_5 & funct7_5;
						case temp is 
							when "11" => 
								ALUControl <= "001";
							when others => 
								ALUControl <= "000";
						end case;
					when "010" =>
						ALUControl <= "101";
					when "110" =>
						ALUControl <= "011";
					when "111" =>	
						ALUControl <= "010";
				end case;
		
		end case;
	
	end process;
	
end;