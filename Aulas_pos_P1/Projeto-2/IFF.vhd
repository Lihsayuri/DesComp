LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; --Soma (esta biblioteca =ieee)

ENTITY IFF IS
    GENERIC (
        larguraDados : NATURAL := 32;
        larguraEnderecos : NATURAL := 32
    );
    PORT (
        -- o que entra:  decoder. O que sai: ROM_OUT, somador_4_out, PC_OUT (para HEXs)  
        CLK : IN STD_LOGIC;
        MUX_PROX_PC : IN STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
        PC_OUT_IF : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0); 
        somador_constante_OUT_IF : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        ROM_OUT_IF: OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0)
        
    );
END ENTITY;

ARCHITECTURE fetch OF IFF IS
    -- sinais do PC_REG:
    SIGNAL PC_OUT : STD_LOGIC_VECTOR((larguraEnderecos - 1) DOWNTO 0);

    -- sinais do somador:
    SIGNAL PC_constante : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);

    -- sinais e aliases da Rom:
    SIGNAL ROM_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);

BEGIN

    -- Port map do registrador do PC
    PC_REG : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => larguraEnderecos)
        PORT MAP(
            DIN => MUX_PROX_PC,
            DOUT => PC_OUT, 
            ENABLE => '1',
            CLK => CLK,
            RST => '0'
        );

    -- Port map do Somador do PC
    Somador1 : ENTITY work.somaConstante GENERIC MAP (larguraDados => larguraEnderecos, constante => 4)
        PORT MAP(entrada => PC_OUT, saida => PC_constante);


    ROM1 : ENTITY work.memoriaROM GENERIC MAP (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)
        PORT MAP(
            clk => CLK,
            Endereco => PC_OUT,
            Dado => ROM_OUT
        );

    somador_constante_OUT_IF <= PC_constante;
    ROM_OUT_IF <= ROM_OUT; 
    PC_OUT_IF <= PC_OUT;

END ARCHITECTURE;