library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity logica_7Seg is
  generic   (
    IN_WIDTH  	: natural :=  4;
    OUT_WIDTH  : natural :=  7
  );

  port   (
    dataIN  : in  std_logic_vector(IN_WIDTH-1 downto 0);
    CLK     : in  std_logic;
    display_OUT : out  std_logic_vector(OUT_WIDTH-1 downto 0)
    
  );
end entity;


architecture arch_name of logica_7Seg is

begin

-- O port map completo do Conversor 7 Display:							
HEX :  entity work.conversorHex7Seg
			port map(	dadoHex 			=> dataIN,--Seven_signals,
							apaga 			=> '0',
							negativo 		=> '0',
							overFlow 		=> '0',
							saida7seg 		=> display_OUT
						);

end architecture;