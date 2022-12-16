library ieee;
use ieee.std_logic_1164.all;

entity logica_desvio is
	port (
		JMP: in std_logic;
		JEQ : in std_logic;
		FLAG_EQ : in std_logic;
		SelMuxPC: out std_logic
	);
end entity;

architecture arch_name of logica_desvio is
	signal inputs: std_logic_vector(2 downto 0);
	
begin
	inputs(2) <= JMP;
	inputs(1) <= JEQ;
	inputs(0) <= FLAG_EQ;
	
	SelMuxPC <= '0' when (JMP = '0' and JEQ = '0' and (FLAG_EQ = '1' or FLAG_EQ = '0')) else
					'1' when (JMP = '1' and JEQ = '0' and (FLAG_EQ = '1' or FLAG_EQ = '0')) else
					'0' when (JMP = '0' and JEQ = '1' and FLAG_EQ = '0') else
					'1' when (JMP = '0' and JEQ = '1' and FLAG_EQ = '1');
end architecture;
					