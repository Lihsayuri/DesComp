LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; --Soma (esta biblioteca =ieee)

ENTITY MEM IS
    GENERIC (
        larguraDados : NATURAL := 32;
        larguraEnderecos : NATURAL := 32
    );
    PORT (
        -- o que entra: decoder, ULA_result, ULA_FLAG, RT_OUT, somador_BEQ_OUT
        -- o que sai: MEM_OUT, ULA_result (nao precisa pois já tem do EX), MuxBeqOutMEM(IF)
        CLK : IN STD_LOGIC;
        decoder_OUT : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
        somador_BEQ_OUT_MEM : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        ULA_result_MEM : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        ULA_FLAG_ZERO_MEM : IN STD_LOGIC;
        RT_OUT_MEM : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        PC_constante : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        MEM_OUT_MEM : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        MuxBeqOutMEM : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0) 
    );
END ENTITY;

ARCHITECTURE memory_access OF MEM IS

    -- sinais do MUX_BEQ_ULA_BNE
    SIGNAL muxULA_BEQ_BNE_OUT : STD_LOGIC;

    -- sinais do MUXBEQ:
    SIGNAL MuxBeqOut : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);

    -- sinais da RAM:
    ALIAS MEM_ADD : STD_LOGIC_VECTOR(31 DOWNTO 0) IS ULA_result_MEM;
    SIGNAL MEM_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
    ALIAS Rt_RAM : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0) IS RT_OUT_MEM;

    -- sinais de controle que vem do decoder
    ALIAS BEQ : STD_LOGIC IS decoder_OUT(3);
    ALIAS BNE: STD_LOGIC IS decoder_OUT(2);
    ALIAS read_RAM : STD_LOGIC IS decoder_OUT(1);
	ALIAS write_RAM : STD_LOGIC IS decoder_OUT(0);

BEGIN

    MUXULA_BEQBNE : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 1)
    PORT MAP(
        entradaA_MUX(0) => NOT(ULA_FLAG_ZERO_MEM),
        entradaB_MUX(0) => ULA_FLAG_ZERO_MEM,
        seletor_MUX => BEQ,
        saida_MUX(0) => muxULA_BEQ_BNE_OUT
    );


    -- O port map completo do Mux que decide se o vai pro PC é a contagem norma ou jump por BEQ
    MUXBEQ : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
    PORT MAP(
        entradaA_MUX => PC_constante,
        entradaB_MUX => somador_BEQ_OUT_MEM,
        seletor_MUX => muxULA_BEQ_BNE_OUT AND (BEQ OR BNE),
        saida_MUX => MuxBeqOut
    );

		
	RAM1 : ENTITY work.memoriaRAM GENERIC MAP (dataWidth => larguraDados, addrWidth => larguraDados, memoryAddrWidth => 6)
	PORT MAP(
		clk => CLK,
		Endereco => MEM_ADD,
		Dado_in => Rt_RAM,
		Dado_out => MEM_OUT,
		we => write_RAM,
		re => read_RAM
	);

    MEM_OUT_MEM <= MEM_OUT;
    MuxBeqOutMEM <= MuxBeqOut;

END ARCHITECTURE;