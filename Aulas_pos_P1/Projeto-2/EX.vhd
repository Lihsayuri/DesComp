LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; --Soma (esta biblioteca =ieee)

ENTITY EX IS
    GENERIC (
        larguraDados : NATURAL := 32;
        larguraEnderecos : NATURAL := 32
    );
    PORT (
        -- o que entra: decoder, somador_constante_OUT, Rs_OUT, Rt_OUT, imediato_estendido, OpULA.
        -- o que sai: ULA_OUT, ULA_FLAG, RT_OUT, somador_BEQ_OUT, PC_constante (WB)
        -- depois acrescentar o RS_ULA_A como saida 
        -- ENTRADAS:
        CLK : IN STD_LOGIC;
        decoder_OUT : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
        somador_constante_OUT_ID: IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        RS_OUT_EX : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        RT_OUT_EX : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        RtAddr_EX: IN STD_LOGIC_VECTOR(4 DOWNTO 0); -- vai ser usado no WB
        RdAddr_EX: IN STD_LOGIC_VECTOR(4 DOWNTO 0); -- vai ser usado no WB
        imediato_estendido_EX : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        ULA_Op : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        imediatoLUI_ID : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        -- SAIDAS:
        somador_BEQ_OUT : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        ULA_result : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        ULA_FLAG_ZERO : OUT STD_LOGIC;
        RT_OUT_EXX : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        PC_constante_EX: OUT STD_LOGIC_VECTOR((larguraEnderecos - 1) DOWNTO 0); -- vai ser usado no WB
        imediatoLUI_EX : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        decoder_OUT_EX : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
        MUX_RTRD_OUT_EX : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)

        -- Rs_ULA_A : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0) -- vai ser usado no Fetch, mas nao precisa pois já tem no ID
        
    );
END ENTITY;

ARCHITECTURE execute OF EX IS

    -- sinais do shift:
    SIGNAL imediatoEstendidoShiftado : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);

    -- sinais do somador do BEQ:
    ALIAS PC_constante : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0) IS somador_constante_OUT_ID;
    SIGNAL somador_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);

    -- sinais do MUX_RT_IMEDIATO: 
    ALIAS Rt_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0) IS RT_OUT_EX;
    ALIAS SelImediatoReg : STD_LOGIC IS decoder_OUT(7);
    ALIAS SelMuxRtRd : STD_LOGIC_VECTOR(1 DOWNTO 0) IS decoder_OUT(11 DOWNTO 10);

    SIGNAL MUX_ULA_B : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);

    -- sinais da ULA:
    SIGNAL ULA_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
    SIGNAL ULA_FLAG : STD_LOGIC;

    -- sinais do MUX_RD_RT:
    SIGNAL MUX_RTRD_OUT : STD_LOGIC_VECTOR(4 DOWNTO 0);


BEGIN

    ShiftSinal : ENTITY work.shiftSinal GENERIC MAP (larguraDados => larguraDados, deslocar => 2)
    PORT MAP(
        entrada => imediato_estendido_EX,
        saida => imediatoEstendidoShiftado
    );

    Somador2 : ENTITY work.somadorGenerico GENERIC MAP (larguraDados => larguraEnderecos)
    PORT MAP(
        entradaA => PC_constante,
        entradaB => imediatoEstendidoShiftado,
        saida => somador_OUT
    );

    -- é o resultado da ULA ou o dado da memória:
    MUX_RD_RT : ENTITY work.muxGenerico4x1 GENERIC MAP (larguraDados => 5)
    PORT MAP(
        E0 => RtAddr_EX,
        E1 => RdAddr_EX,
        E2 =>  "11111",
        E3	=> "00000",
        SEL_MUX => SelMuxRtRd,
        MUX_OUT => MUX_RTRD_OUT 			
    );
    

    -- O port map completo do Mux que decide a entrada B da ULA:						
    MUX_RT_IMEDIATO : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
    PORT MAP(
        entradaA_MUX => Rt_OUT,
        entradaB_MUX => imediato_estendido_EX,
        seletor_MUX => SelImediatoReg,
        saida_MUX => MUX_ULA_B
    );


    ULA1 : ENTITY work.ULASomaSub GENERIC MAP(larguraDados => larguraDados)
    PORT MAP(
        entradaA => RS_OUT_EX,
        entradaB => MUX_ULA_B,
        seletor => ULA_Op(1 downto 0),
        inverteB => ULA_Op(2),
        saida => ULA_OUT,
        flagZero => ULA_FLAG
    );

    somador_BEQ_OUT <= somador_OUT;
    ULA_FLAG_ZERO <= ULA_FLAG;
    ULA_result <= ULA_OUT;
    RT_OUT_EXX <= Rt_OUT;
    PC_constante_EX <= PC_constante;
    imediatoLUI_EX <= imediatoLUI_ID;
    decoder_OUT_EX <= decoder_OUT;
    MUX_RTRD_OUT_EX <= MUX_RTRD_OUT;

END ARCHITECTURE;