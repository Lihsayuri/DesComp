LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; --Soma (esta biblioteca =ieee)

ENTITY ID IS
    GENERIC (
        larguraDados : NATURAL := 32;
        larguraEnderecos : NATURAL := 32
    );
    PORT (
        -- o que entra: ROM_OUT| somador_constante_OUT (só passa)| MUX_DADO_BANCO (WB) para escrever no reg
        -- o que sai: RS_OUT, RT_OUT, imediato_estendido, somador_constante, decoder, operacao_ULA

        -- ENTRADA:
        CLK : IN STD_LOGIC;
        somador_constante_OUT_IF: IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        MUX_DADO_BANCO: IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0); 
        ROM_OUT_ID: IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        MUX_RTRD_OUT : IN STD_LOGIC_VECTOR(4 DOWNTO 0);

        --- SAÍDA:
        somador_constante_OUT_ID : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        RS_OUT_ID : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        RT_OUT_ID : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
		RS_Addr_ID : OUT STD_LOGIC_VECTOR (4 DOWNTO 0);
        RT_Addr_ID : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        RD_Addr_ID : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        imediato_estendido_ID : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        imediatoLUI_ID : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        decoder_OUT_ID : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
        operacao_ULA_ID : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE decode OF ID IS

    -- sinais do Decoder:
    SIGNAL decoder_OUT : STD_LOGIC_VECTOR(13 DOWNTO 0);

    -- sinais do Decoder_OPCODE e Decoder_FUNCT:
    SIGNAL decoderOpcode_OUT : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL decoderFunct_OUT : STD_LOGIC_VECTOR(2 DOWNTO 0);

    -- sinais do MUX_FUNCT_OPCODE:
    SIGNAL ULA_ctrl : STD_LOGIC_VECTOR(2 DOWNTO 0); 

    -- sinais do Banco de registradores:
    SIGNAL Rt_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
    SIGNAL Rs_ULA_A : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);

    -- sinais dos imediatos:
    SIGNAL imediatoEstendido : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
    SIGNAL imediato_tipoI : STD_LOGIC_VECTOR(larguraDados-1 DOWNTO 0);
	SIGNAL imediato_ORI_ANDI : STD_LOGIC_VECTOR(larguraDados-1 DOWNTO 0); 
    SIGNAL imediato_LUI : STD_LOGIC_VECTOR(larguraDados-1 DOWNTO 0);
    
    -- sinais de controle originados com o decoder
    ALIAS TIPOR : STD_LOGIC IS decoder_OUT(6);
    ALIAS write_REG : STD_LOGIC IS decoder_OUT(8);
    ALIAS ORI_ANDI : STD_LOGIC IS decoder_OUT(9);

    -- sinais com partes das instruções
    ALIAS OPCODE_SIGNAL: STD_LOGIC_VECTOR(5 DOWNTO 0) IS ROM_OUT_ID(31 DOWNTO 26);
    ALIAS RsAddr : STD_LOGIC_VECTOR(4 DOWNTO 0) IS ROM_OUT_ID(25 DOWNTO 21);
	ALIAS RtAddr : STD_LOGIC_VECTOR(4 DOWNTO 0) IS ROM_OUT_ID(20 DOWNTO 16);
    ALIAS RdAddr : STD_LOGIC_VECTOR(4 DOWNTO 0) IS ROM_OUT_ID(15 DOWNTO 11);
    ALIAS imediato : STD_LOGIC_VECTOR(15 DOWNTO 0) IS ROM_OUT_ID(15 DOWNTO 0);
    ALIAS FUNCT_SIGNAL: STD_LOGIC_VECTOR(5 DOWNTO 0) IS ROM_OUT_ID(5 DOWNTO 0);

BEGIN

	decoderInstru1 : ENTITY work.Decoder
    PORT MAP(
        OPCODE => OPCODE_SIGNAL,
        FUNCT  => FUNCT_SIGNAL,
        OUTPUT => decoder_OUT
    );

    decoderOPCODE : ENTITY work.DecoderOpcode
        PORT MAP(
            OPCODE => OPCODE_SIGNAL,
            OUTPUT_OP => decoderOpcode_OUT
    );


    decoderFUNCT : ENTITY work.DecoderFunct
        PORT MAP(
            FUNCT => FUNCT_SIGNAL,
            OUTPUT_FUN => decoderFunct_OUT
    );


    MUX_FUNCT_OPCODE : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 3)
    PORT MAP(
        entradaA_MUX => decoderOpcode_OUT,
        entradaB_MUX => decoderFunct_OUT,
        seletor_MUX => TIPOR,
        saida_MUX => ULA_ctrl
    );


    BANCO_REG : ENTITY work.bancoReg GENERIC MAP (larguraDados => larguraDados)
        PORT MAP(
            clk => CLK,
            enderecoA => RsAddr,
            enderecoB => RtAddr,
            enderecoC => MUX_RTRD_OUT,
            dadoEscritaC => MUX_DADO_BANCO,
            escreveC => write_REG,
            saidaA => Rs_ULA_A,
            saidaB => Rt_OUT
        );
        
        
    imediato_tipoI <= (larguraDados - 1 DOWNTO 16 => imediato(15)) & imediato;
    imediato_ORI_ANDI <= "0000000000000000"  & imediato;
	imediato_LUI <= imediato & x"0000";

    MUX_ORI_ANDI_IMEDIATO : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
    PORT MAP(
        entradaA_MUX => imediato_tipoI,
        entradaB_MUX => imediato_ORI_ANDI,
        seletor_MUX => ORI_ANDI,
        saida_MUX => imediatoEstendido
    );
        
    somador_constante_OUT_ID <= somador_constante_OUT_IF;
    RS_OUT_ID <= Rs_ULA_A ; 
    RT_OUT_ID <= Rt_OUT;
    RT_Addr_ID <= RtAddr;
    RD_Addr_ID <= RdAddr;
	 RS_Addr_ID <= RsAddr;
    imediato_estendido_ID <= imediatoEstendido;
    imediatoLUI_ID <= imediato_LUI;
    decoder_OUT_ID <= decoder_OUT;
    operacao_ULA_ID <= ULA_ctrl;

END ARCHITECTURE;