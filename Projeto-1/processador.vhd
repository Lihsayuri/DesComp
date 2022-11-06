LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY processador IS
	-- Total de bits das entradas e saidas
	GENERIC (
		larguraDados : NATURAL := 8;
		larguraEnderecos : NATURAL := 9;
		simulacao : BOOLEAN := FALSE -- para gravar na placa, altere de TRUE para FALSE
	);
	PORT (
		CLK : IN STD_LOGIC;
		instruction : IN STD_LOGIC_VECTOR(14 DOWNTO 0); -- acrescentei mais 2 bits para endereçar os registradores novos
		DATA_IN : IN STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		----------------------------------------------------------
		ROM_Address : OUT STD_LOGIC_VECTOR(larguraEnderecos - 1 DOWNTO 0);
		DATA_OUT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		DATA_ADDRESS : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
		Palavra : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
		enderecoRG : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
		stack_overflow : OUT STD_LOGIC;
		stack_pointer : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
		--	 EQUAL_FLAG: out std_logic;
		MEM_Read : OUT STD_LOGIC;
		MEM_Write : OUT STD_LOGIC
	);
END ENTITY;
ARCHITECTURE arquitetura OF processador IS

	-- Sinais gerais e sinais do PC: 
	SIGNAL proxPC : STD_LOGIC_VECTOR (larguraDados DOWNTO 0);
	SIGNAL saidaSomador : STD_LOGIC_VECTOR (larguraDados DOWNTO 0);
	SIGNAL Endereco : STD_LOGIC_VECTOR (larguraDados DOWNTO 0);

	-- Sinais do decodificador de instruções para debug
	SIGNAL ULA_FLAG_EQUAL : STD_LOGIC;
	SIGNAL ULA_FLAG_LESS_THAN : STD_LOGIC;
	SIGNAL FLAG_EQ : STD_LOGIC;
	SIGNAL FLAG_LT : STD_LOGIC;
	SIGNAL SelMux2 : STD_LOGIC_VECTOR (1 DOWNTO 0);

	-- Sinais de saída do MUX, ALU, Memória, Registrador e Decoder 
	SIGNAL MUX_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL REGA_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL ULA_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL decoder_OUT : STD_LOGIC_VECTOR(13 DOWNTO 0); -- sinais de controle e ler/escrever
	SIGNAL saidaRET : STD_LOGIC_VECTOR(larguraDados DOWNTO 0);

	-- Aliases para facilitar a leitura do código: MUX 
	ALIAS MUX_A : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0) IS DATA_IN; -- MUX0
	ALIAS MUX_B : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0) IS instruction(larguraDados - 1 DOWNTO 0); -- MUX1
	ALIAS MUX_PC_0 : STD_LOGIC_VECTOR(larguraDados DOWNTO 0) IS saidaSomador;
	ALIAS MUX_PC_1 : STD_LOGIC_VECTOR(larguraDados DOWNTO 0) IS instruction(8 DOWNTO 0);
	ALIAS MUX_PC_2 : STD_LOGIC_VECTOR(larguraDados DOWNTO 0) IS saidaRET;
	ALIAS MUX_PC_3 : STD_LOGIC_VECTOR(larguraDados DOWNTO 0) IS instruction(8 DOWNTO 0);
	-- Aliases para os sinais de controle: DECODER_OUT
	ALIAS habFlagLt : STD_LOGIC IS decoder_OUT(2);
	ALIAS habFlagEq : STD_LOGIC IS decoder_OUT(3);

	ALIAS Operacao_ULA : STD_LOGIC_VECTOR(1 DOWNTO 0) IS decoder_OUT(5 DOWNTO 4);
	ALIAS Habilita_A : STD_LOGIC IS decoder_OUT(6);
	ALIAS SelMux : STD_LOGIC IS decoder_OUT(7);
	ALIAS jlt : STD_LOGIC IS decoder_OUT(8);
	ALIAS jeq : STD_LOGIC IS decoder_OUT(9);
	ALIAS jsr : STD_LOGIC IS decoder_OUT(10);
	ALIAS ret : STD_LOGIC IS decoder_OUT(11);
	ALIAS jmp : STD_LOGIC IS decoder_OUT(12);
	ALIAS habEscritaRet : STD_LOGIC IS decoder_OUT(13);
	ALIAS push_or_pop : STD_LOGIC_VECTOR(1 DOWNTO 0) IS decoder_OUT(12 DOWNTO 11);

	ALIAS enderecoReg : STD_LOGIC_VECTOR(1 DOWNTO 0) IS instruction(10 DOWNTO 9);
	ALIAS OP_CODE : STD_LOGIC_VECTOR(3 DOWNTO 0) IS instruction(14 DOWNTO 11);
	-- Aliases para facilitar a leitura do código: REGA
	ALIAS REGA_IN : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0) IS ULA_OUT;

	-- Aliases para facilitar a leitura do código: ULA
	ALIAS ULA_A_IN : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0) IS REGA_OUT;
	ALIAS ULA_B_IN : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0) IS MUX_OUT;

	-- Aliases para facilitar a leitura do código: Memória

BEGIN

	-- O port map completo do Program Counter.
	PC : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => larguraEnderecos)
		PORT MAP(
			DIN => proxPC,
			DOUT => Endereco,
			ENABLE => '1',
			CLK => CLK,
			RST => '0'
		);

	incrementaPC : ENTITY work.somaConstante GENERIC MAP (larguraDados => larguraEnderecos, constante => 1)
		PORT MAP(
			entrada => Endereco,
			saida => saidaSomador
		);

	-- REG_RET : entity work.registradorGenerico generic map (larguraDados => larguraDados+1)
	-- 			 port map (
	-- 					 DIN => saidaSomador,
	-- 					 DOUT => saidaRET,
	-- 					 ENABLE => habEscritaRet,
	-- 					 CLK => CLK,
	-- 					 RST => '0');

	StackRET : ENTITY work.stackLogic
		PORT MAP(
			clk => CLK,
			addr_in => saidaSomador,
			hab => push_or_pop(1),
			sel_push_pop => push_or_pop(0),
			addr_out => saidaRET,
			sp => stack_pointer,
			stack_overflow => stack_overflow
		);

	MUX2 : ENTITY work.muxGenerico4x1 GENERIC MAP (larguraDados => larguraDados + 1)
		PORT MAP(
			E0 => MUX_PC_0,
			E1 => MUX_PC_1,
			E2 => MUX_PC_2,
			E3 => b"0_0000_0000",
			SEL_MUX => SelMux2,
			MUX_OUT => proxPC
		);

	-- O port map completo do MUX.
	MUX1 : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
		PORT MAP(
			entradaA_MUX => MUX_A,
			entradaB_MUX => MUX_B,
			seletor_MUX => SelMux,
			saida_MUX => MUX_OUT
		);

	-- O port map completo da ULA:
	ULA1 : ENTITY work.ULASomaSub GENERIC MAP(larguraDados => larguraDados)
		PORT MAP(
			entradaA => ULA_A_IN,
			entradaB => ULA_B_IN,
			saida => ULA_OUT,
			seletor => Operacao_ULA,
			flagEqual => ULA_FLAG_EQUAL,
			flagLessThan => ULA_FLAG_LESS_THAN
		);

	BANCO_REGISTRADORES : ENTITY work.bancoRegistradoresArqRegMem GENERIC MAP (larguraDados => larguraDados, larguraEndBancoRegs => 2)
		PORT MAP(
			clk => CLK,
			endereco => enderecoReg,
			dadoEscrita => REGA_IN,
			habilitaEscrita => Habilita_A,
			saida => REGA_OUT
		);

	-- port map do flip flop da flag de comparacao
	FLAG_IGUAL : ENTITY work.flipflopGenerico
		PORT MAP(
			DIN => ULA_FLAG_EQUAL,
			DOUT => FLAG_EQ,
			ENABLE => habFlagEq,
			CLK => CLK,
			RST => '0'
		);
	FLAG_MENOR_QUE : ENTITY work.flipflopGenerico
		PORT MAP(
			DIN => ULA_FLAG_LESS_THAN,
			DOUT => FLAG_LT,
			ENABLE => habFlagLt, -- vai ter que criar um habFlagLt
			CLK => CLK,
			RST => '0'
		);

	LOG_DESVIO : ENTITY work.logica_desvio
		PORT MAP(
			JMP => jmp,
			RET => ret,
			JSR => jsr,
			JEQ => jeq,
			FLAG_EQ => FLAG_EQ,
			JLT => jlt,
			FLAG_LT => FLAG_LT,
			SelMuxPC => SelMux2
		);
	decoderInstru1 : ENTITY work.decoderInstru
		PORT MAP(
			opcode => OP_CODE,
			saida => decoder_OUT
		);

	ROM_Address <= Endereco;
	DATA_OUT <= REGA_OUT;
	--	EQUAL_FLAG <= FLAG_EQ;	
	Palavra <= decoder_OUT;
	MEM_Write <= decoder_OUT(0);
	MEM_Read <= decoder_OUT(1);
	DATA_ADDRESS <= instruction(8 DOWNTO 0);
	enderecoRG <= enderecoReg;
	
	END ARCHITECTURE;