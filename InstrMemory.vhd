library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use STD.textio.all;
use ieee.std_logic_textio.all;

-- The Instruction Memory
entity InstrMemory is 
	port (
		PCNext: in unsigned(31 downto 0);
		instr: out std_logic_vector(31 downto 0) -- The instruction size is 32 bit
	);
end;

architecture Behavioural of InstrMemory is
	type MemoryType is array (0 to 500) of std_logic_vector(31 downto 0);
	
	impure function init_instrs_hex return MemoryType is 
		file program_file: text;
		variable F_LINE, my_line: line;
		variable F_INSTR: std_logic_vector(31 downto 0);
		variable line_number: integer := 0;
		variable result: MemoryType;
	begin 
		file_open(program_file, "program.txt", read_mode);
		while (line_number) < 100 and (not endfile(program_file)) loop 
			readline(program_file, F_LINE);
			Hread(F_LINE, F_INSTR);
			result(line_number) := F_INSTR;
			-- hwrite(my_line, F_INSTR);
         -- writeline(output, my_line); -- Writes instruction to console
			line_number := line_number + 1;
		end loop;
		file_close(program_file);
		return result;
	end function;
	
	signal memory: MemoryType := init_instrs_hex;
begin
	
	instr <= memory(to_integer(PCNext));
	
end; 