LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY stackLogic IS
    GENERIC (
        larguraDados : NATURAL := 9
    );
    PORT (
        clk : IN STD_LOGIC;
        addr_in : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        hab : IN STD_LOGIC;
        sel_push_pop : IN STD_LOGIC;
        addr_out : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        sp : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        stack_overflow : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE comportamento OF stackLogic IS

    SIGNAL mux_sumsub : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL sp_sumsub : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL sumsub_sp : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL sp_stack : STD_LOGIC_VECTOR(2 DOWNTO 0);

    ALIAS stack_addr : STD_LOGIC_VECTOR(2 DOWNTO 0) IS sp_sumsub;
    ALIAS sp_out : STD_LOGIC_VECTOR(2 DOWNTO 0) IS sp_sumsub;
BEGIN
    sp <= sp_out;
    stack_overflow <= '1' WHEN (hab = '1' AND sel_push_pop = '1' AND addr_out = "111") ELSE
        '1' WHEN (hab = '1' AND sel_push_pop = '0' AND addr_out = "000") ELSE
        '0';

    -- MUX para selecionar a entrada do somador/subtrator
    MUX : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 3)
        PORT MAP(
            entradaA_MUX => "111",
            entradaB_MUX => "001",
            seletor_MUX => sel_push_pop,
            saida_MUX => mux_sumsub
        );

    ADDER : ENTITY work.somadorStack GENERIC MAP (larguraDados => 3)
        PORT MAP(
            entradaA => sp_sumsub,
            entradaB => mux_sumsub,
            saida => sumsub_sp
        );

    STACK_POINTER : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 3)
        PORT MAP(
            DIN => sumsub_sp,
            DOUT => sp_sumsub,
            ENABLE => hab,
            CLK => clk,
            RST => '0'
        );

    STACK : ENTITY work.stack
        PORT MAP(
            clk => clk,
            Dado_in => addr_in,
            Endereco => sp_stack,
            Dado_out => addr_out
        );

END ARCHITECTURE;