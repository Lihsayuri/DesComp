LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY shiftSinal IS
    GENERIC (
        larguraDados : NATURAL := 32;
        deslocar : NATURAL := 2
    );
    PORT (
        entrada : IN STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
        saida : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF shiftSinal IS
BEGIN
    saida <= entrada(larguraDados - 1 - deslocar DOWNTO 0) & "00";
END ARCHITECTURE;