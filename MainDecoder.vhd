library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity MainDecoder is 
	port(
		opcode: in std_logic_vector(6 downto 0);
		RegWrite: out std_logic;
		ImmSrc: out std_logic_vector(1 downto 0);
		ALUSrc: out std_logic;
		MemWrite: out std_logic;
		ResultSrc: out std_logic;
		Branch: out std_logic;
		ALUOp: out std_logic_vector(1 downto 0));
end;

architecture Behavioural of MainDecoder is
begin
	process(opcode) is 
	begin 
	
		case opcode is 
			when "0000011" => -- lw
				RegWrite <= '1';
				ImmSrc <= "00";
				ALUSrc <= '1';
				MemWrite <= '0';
				ResultSrc <= '1';
				Branch <= '0';
				ALUOp <= "00";
			when "0100011" => -- sw
				RegWrite <= '0';
				ImmSrc <= "01";
				ALUSrc <= '1';
				MemWrite <= '1';
				Branch <= '0';
				ALUOp <= "00";
			when "0110011" => -- R-type instruitons
				RegWrite <= '1';
				ALUSrc <= '0';
				MemWrite <= '0';
				ResultSrc <= '0';
				Branch <= '0';
				ALUOp <= "10";
			when "1100011"	=> -- beq
				RegWrite <= '0';
				ImmSrc <= "10";
				ALUSrc <= '0';
				MemWrite <= '0';
				Branch <= '1';
				ALUOp <= "01";
			when others =>
				Branch <= '0';
				RegWrite <= '0';
				MemWrite <= '0';
		end case;	
	end process;
	
end;