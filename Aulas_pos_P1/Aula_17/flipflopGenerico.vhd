LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY flipflopGenerico IS
    PORT (
        DIN : IN STD_LOGIC;
        DOUT : OUT STD_LOGIC;
        ENABLE : IN STD_LOGIC;
        CLK, RST : IN STD_LOGIC
    );
END ENTITY;

ARCHITECTURE comportamento OF flipflopGenerico IS
BEGIN

    PROCESS (RST, CLK)
    BEGIN
        IF (RST = '1') THEN
            DOUT <= '0';
        ELSE
            IF (rising_edge(CLK)) THEN
                IF (ENABLE = '1') THEN
                    DOUT <= DIN;
                END IF;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE;