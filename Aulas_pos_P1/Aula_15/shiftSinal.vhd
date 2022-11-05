library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  


entity shiftSinal is
    generic
    (
		  larguraDados : natural := 32
    );
    port
    (
        entrada: in  STD_LOGIC_VECTOR(larguraDados-1 downto 0);
        saida:   out STD_LOGIC_VECTOR(larguraDados-1 downto 0)
    );
end entity;

architecture comportamento of shiftSinal is
    begin
        saida <= entrada(29 downto 0) & "00";
		  
		  
end architecture;