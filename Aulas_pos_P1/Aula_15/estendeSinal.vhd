library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  


entity estendeSinal is
    generic
    (
		  larguraDadosEntrada : natural := 16;
        larguraDadosSaida : natural := 32
    );
    port
    (
        entrada: in  STD_LOGIC_VECTOR(15 downto 0);
        saida:   out STD_LOGIC_VECTOR(larguraDadosSaida-1 downto 0)
    );
end entity;

architecture comportamento of estendeSinal is
    begin
        saida <= (larguraDadosSaida-1 downto larguraDadosEntrada => entrada(15)) & entrada;
		  
		  
end architecture;