LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY stack IS
    GENERIC (
        dataWidth : NATURAL := 9;
        addrWidth : NATURAL := 3
    );
    PORT (
        clk : IN STD_LOGIC;
        Dado_in : IN STD_LOGIC_VECTOR (dataWidth - 1 DOWNTO 0);
        Endereco : IN STD_LOGIC_VECTOR (addrWidth - 1 DOWNTO 0);
        Dado_out : OUT STD_LOGIC_VECTOR (dataWidth - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF stack IS

    TYPE stack_t IS ARRAY(0 TO 8) OF STD_LOGIC_VECTOR(dataWidth - 1 DOWNTO 0);
    SIGNAL mem : stack_t;
BEGIN
    PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            mem(to_integer(unsigned(Endereco))) <= dado_in;
        END IF;
    END PROCESS;
    Dado_out <= mem(to_integer(unsigned(Endereco)) - 1);
END ARCHITECTURE;