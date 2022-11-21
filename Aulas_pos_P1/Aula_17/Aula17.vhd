LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Aula17 IS
	-- Total de bits das entradas e saidas
	GENERIC (
		larguraDados : NATURAL := 32;
		larguraEnderecos : NATURAL := 32;
		simulacao : BOOLEAN := FALSE -- para gravar na placa, altere de TRUE para FALSE
	);
	PORT (

		-- input ports

		CLOCK_50 : IN STD_LOGIC;
		FPGA_RESET_N  : in std_logic;
		KEY: in std_logic_vector(3 downto 0);	 
		SW: in std_logic_vector(9 downto 0);		

		-- output ports
		LEDR          : out std_logic_vector(9 downto 0);
		HEX0          : out std_logic_vector(6 downto 0);
		HEX1          : out std_logic_vector(6 downto 0);
		HEX2          : out std_logic_vector(6 downto 0);
		HEX3          : out std_logic_vector(6 downto 0);
		HEX4          : out std_logic_vector(6 downto 0);
		HEX5          : out std_logic_vector(6 downto 0)

		-- Instru_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		-- Funct : out std_logic_vector(5 downto 0);
		-- ULAA_OUT_AddrRAM : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		-- MEM_INN : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		-- MEM_OUTT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		-- RS_OUT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		-- RT_OUTT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0); -- dado a ser escrito
		-- Rs_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		-- Rt_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		-- PC_OUTT : OUT STD_LOGIC_VECTOR(larguraEnderecos - 1 DOWNTO 0);
		-- flagEqual : OUT STD_LOGIC;
		-- habFlagBEQ : OUT STD_LOGIC;
		-- muxJmp : OUT STD_LOGIC
	);

END ENTITY;

ARCHITECTURE arquitetura OF Aula17 IS

	SIGNAL CLK : STD_LOGIC;
	SIGNAL PC_constante : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL Prox_PC : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL MuxBeqOut : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL PC_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL ROM_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL MUX_OUT : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL Rs_ULA_A : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL Rt_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL MUX_ULA_B : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL MUX_DADO_BANCO : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL imediatoEstendido : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL imediatoEstendidoShiftado : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL ULA_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL MEM_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL ULA_FLAG : STD_LOGIC;
	SIGNAL FLAG_EQ_OUT : STD_LOGIC;
	SIGNAL somador_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL decoder_OUT : STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL MUX_RTRD_OUT : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL MUX_PROX_PC : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL CONCAT_JMP : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL decoderFunct_OUT : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL decoderOpcode_OUT : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL Ula_ctrl : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL saida_LED_HEX : STD_LOGIC_VECTOR(larguraDados-1 DOWNTO 0);

	ALIAS Rt_RAM : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0) IS Rt_OUT;
	ALIAS ROM_IN : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0) IS PC_OUT(larguraDados - 1 DOWNTO 0);
	ALIAS RsAddr : STD_LOGIC_VECTOR(4 DOWNTO 0) IS ROM_OUT(25 DOWNTO 21);
	ALIAS RtAddr : STD_LOGIC_VECTOR(4 DOWNTO 0) IS ROM_OUT(20 DOWNTO 16);
	ALIAS RdAddr : STD_LOGIC_VECTOR(4 DOWNTO 0) IS ROM_OUT(15 DOWNTO 11);

	ALIAS imediato : STD_LOGIC_VECTOR(15 DOWNTO 0) IS ROM_OUT(15 DOWNTO 0);
	ALIAS imediatoJmp : STD_LOGIC_VECTOR(25 DOWNTO 0) IS ROM_OUT(25 DOWNTO 0);
	ALIAS MEM_ADD : STD_LOGIC_VECTOR(31 DOWNTO 0) IS ULA_OUT(31 DOWNTO 0);
	ALIAS FUNCT_SIGNAL: STD_LOGIC_VECTOR(5 DOWNTO 0) IS ROM_OUT(5 DOWNTO 0);
	ALIAS OPCODE_SIGNAL: STD_LOGIC_VECTOR(5 DOWNTO 0) IS ROM_OUT(31 DOWNTO 26);
	ALIAS SelMuxFlag : STD_LOGIC IS FLAG_EQ_OUT;

	-- SelMuxJmp SelMuxRtRd  write_REG(1) habMUX(rt/imediato) SelMuxMEMULA habFlagEqual read_RAM write_RAM
	ALIAS TIPOR : STD_LOGIC IS decoder_OUT(8);
	ALIAS SelMuxJump : STD_LOGIC IS decoder_OUT(7);
	ALIAS SelMuxRtRd : STD_LOGIC IS decoder_OUT(6);
	ALIAS write_REG : STD_LOGIC IS decoder_OUT(5);
	ALIAS SelImediatoReg : STD_LOGIC IS decoder_OUT(4);
	ALIAS SelMuxUlaMem : STD_LOGIC IS decoder_OUT(3);
	ALIAS habFlagEqual : STD_LOGIC IS decoder_OUT(2);
	ALIAS read_RAM : STD_LOGIC IS decoder_OUT(1);
	ALIAS write_RAM : STD_LOGIC IS decoder_OUT(0);

BEGIN
	gravar:  if simulacao generate
				CLK <= CLOCK_50;
			else generate
				detectorSub0: work.edgeDetector(bordaSubida)
				port map(   clk      => CLOCK_50,
							entrada  => (not KEY(0)),
							saida    => CLK
							);
	end generate;
	
	-- Port map do Somador do PC
	Somador1 : ENTITY work.somaConstante GENERIC MAP (larguraDados => larguraEnderecos, constante => 4)
		PORT MAP(entrada => PC_OUT, saida => PC_constante);
	
	-- Port map do registrador do PC
	PC_REG : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => larguraEnderecos)
		PORT MAP(
			DIN => MUX_PROX_PC,
			DOUT => PC_OUT,
			ENABLE => '1',
			CLK => CLK,
			RST => '0'
		);

	CONCAT_JMP <=  PC_constante(31 DOWNTO 28) & imediatoJmp & "00";

	-- O port map completo do Mux que decide o Jump ou fluxo de dados normal para o PC:
	MUX_NEXT_PC : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
		PORT MAP(
			entradaA_MUX => MuxBeqOut,
			entradaB_MUX => CONCAT_JMP, 
			seletor_MUX => SelMuxJump, 
			saida_MUX => MUX_PROX_PC
		);

	ROM1 : ENTITY work.memoriaROM GENERIC MAP (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)
		PORT MAP(
			clk => CLK,
			Endereco => ROM_IN,
			Dado => ROM_OUT
		);


	decoderInstru1 : ENTITY work.Decoder
		PORT MAP(
			OPCODE => OPCODE_SIGNAL,
			FUNCT  => FUNCT_SIGNAL,
			OPERACAO => ULA_ctrl(1 downto 0),
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

	EstendeSinal : ENTITY work.estendeSinal GENERIC MAP (larguraDadosEntrada => 16, larguraDadosSaida => larguraDados)
		PORT MAP(
			entrada => imediato,
			saida => imediatoEstendido
		);

	ShiftSinal : ENTITY work.shiftSinal GENERIC MAP (larguraDados => larguraDados, deslocar => 2)
		PORT MAP(
			entrada => imediatoEstendido,
			saida => imediatoEstendidoShiftado
		);

	Somador2 : ENTITY work.somadorGenerico GENERIC MAP (larguraDados => larguraEnderecos)
		PORT MAP(
			entradaA => PC_constante,
			entradaB => imediatoEstendidoShiftado,
			saida => somador_OUT
		);

	-- O port map completo do Muxque decide se o que entra em RD é RT ou RD	
	MUX_RD_RT : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 5)
		PORT MAP(
			entradaA_MUX => RtAddr,
			entradaB_MUX => RdAddr,
			seletor_MUX => SelMuxRtRd,
			saida_MUX => MUX_RTRD_OUT
		);

	-- O port map completo do Mux que decide se o vai pro PC é a contagem norma ou jump por BEQ
	MUXBEQ : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
		PORT MAP(
			entradaA_MUX => PC_constante,
			entradaB_MUX => somador_OUT,
			seletor_MUX => (habFlagEqual AND ULA_FLAG),
			saida_MUX => MuxBeqOut
		);

	-- O port map completo do Mux que decide a entrada B da ULA:						
	MUX_ULAB : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
		PORT MAP(
			entradaA_MUX => Rt_OUT,
			entradaB_MUX => imediatoEstendido,
			seletor_MUX => SelImediatoReg,
			saida_MUX => MUX_ULA_B
		);

	-- O port map completo do Mux que decide se o dado que vai para o banco de registradores
	-- é o resultado da ULA ou o dado da memória:
	MUX_ULA_MEM : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
		PORT MAP(
			entradaA_MUX => ULA_OUT,
			entradaB_MUX => MEM_OUT,
			seletor_MUX => SelMuxUlaMem,
			saida_MUX => MUX_DADO_BANCO
		);

	ULA1 : ENTITY work.ULASomaSub GENERIC MAP(larguraDados => larguraDados)
		PORT MAP(
			entradaA => Rs_ULA_A,
			entradaB => MUX_ULA_B,
			seletor => ULA_ctrl(1 downto 0),
			inverteB => ULA_ctrl(2),
			saida => ULA_OUT,
			flagZero => ULA_FLAG
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


	MUX_ULA_PC: ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
	PORT MAP(
		entradaA_MUX => PC_OUT,
		entradaB_MUX => ULA_OUT,
		seletor_MUX => SW(0),
		saida_MUX => saida_LED_HEX 
	);

	HEX_0 : ENTITY work.logica_7Seg GENERIC MAP (IN_WIDTH => 4, OUT_WIDTH => 7)
	PORT MAP(
		dataIN => saida_LED_HEX(3 downto 0),
		CLK => CLK,
		display_OUT => HEX0
	);

	HEX_1 : ENTITY work.logica_7Seg GENERIC MAP (IN_WIDTH => 4, OUT_WIDTH => 7)
	PORT MAP(
		dataIN => saida_LED_HEX(7 downto 4),
		CLK => CLK,
		display_OUT => HEX1
	);

	HEX_2 : ENTITY work.logica_7Seg GENERIC MAP (IN_WIDTH => 4, OUT_WIDTH => 7)
	PORT MAP(
		dataIN => saida_LED_HEX(11 downto 8),
		CLK => CLK,
		display_OUT => HEX2
	);

	HEX_3 : ENTITY work.logica_7Seg GENERIC MAP (IN_WIDTH => 4, OUT_WIDTH => 7)
	PORT MAP(
		dataIN => saida_LED_HEX(15 downto 12),
		CLK => CLK,
		display_OUT => HEX3
	);

	HEX_4 : ENTITY work.logica_7Seg GENERIC MAP (IN_WIDTH => 4, OUT_WIDTH => 7)
	PORT MAP(
		dataIN => saida_LED_HEX(19 downto 16),
		CLK => CLK,
		display_OUT => HEX4
	);

	HEX_5 : ENTITY work.logica_7Seg GENERIC MAP (IN_WIDTH => 4, OUT_WIDTH => 7)
	PORT MAP(
		dataIN => saida_LED_HEX(23 downto 20),
		CLK => CLK,
		display_OUT => HEX5
	);

	LEDR(7 downto 0) <= saida_LED_HEX(31 downto 24);
		

	monitor: work.debugMonitor
	port map(PC => PC_OUT,                         -- Saida o PC: entrada de endereco da ROM
		  Instrucao => ROM_OUT,   -- Saida de dados da ROM
		  LeituraRS => Rs_ULA_A,        -- Saida do Banco de Registradores: leitura de RS
		  LeituraRT => RT_OUT,        -- Saida do Banco de Registradores: leitura de RT
		  EscritaRD => MUX_DADO_BANCO,      -- Entrada do Banco de Registradores (C)
		  EntradaB_ULA => MUX_ULA_B,             -- Entrada B da ULA: saida do MUX RT/ImediatoEstendido
		  imediatoEstendido => imediatoEstendido,  -- ImediatoEstendido: entrada do MUX RT/ImediatoEstendido
		  saidaULA => ULA_OUT,        -- Saida da ULA: entrada do MUX ULA/MEM
		  dadoLido_RAM => MEM_OUT,     -- Saida da RAM: entrada do MUX ULA/MEM
		  proxPC => MUX_PROX_PC,    -- Entrada do PC ou saida do MUX ProxPC MUX_PROX_PC
		  MUXProxPCEntradaA => MuxBeqOut,   -- Entrada do MUX ProxPC: vinda MUX PC+4/BEQ
		  MUXProxPCEntradaB => CONCAT_JMP,   -- Entrada do MUX ProxPC: vinda da montagem do endereco de Jump
		  ULActrl => '0' & Ula_ctrl,                      -- Entrada do ULActrl na ULA: pode ser necessario concatenar 1 bit '0': '0' & ULActrl
		  zeroFLAG => ULA_FLAG,                        -- Saida do Flag da ULA e entrada da porta AND
		  escreveC => write_REG,       -- Entrada do Banco de Registradores: sinal de habilita escrita no terceiro endereco (RD ou RT)
		  MUXPCBEQJUMP => SelMuxJump,          -- Selecao do MUX do proxPC: vem da unidade de controle
		  MUXRTRD => SelMuxRtRd,                     -- Selecao do MUX RT/RD: vem da unidade de controle
		  MUXRTIMED => SelImediatoReg,                 -- Selecao do MUX RT/Imediato: vem da unidade de controle
		  MUXULAMEM => SelMuxUlaMem,                 -- Selecao do MUX ULA/MEM: vem da unidade de controle
		  iBEQ => habFlagEqual,                              -- Indicador de instrucao BEQ: vem da unidade de controle
		  WR => write_RAM,                    -- Habilita escrita na RAM: vem da unidade de controle
		  RD => read_RAM,                    -- Habilita leitura da RAM: vem da unidade de controle
		  --Output
		  clkTCL => open);                       -- Sem uso: conectar com open


	-- Instru_opcode <= ROM_OUT(31 DOWNTO 26);
	-- ULAA_OUT_AddrRAM <= ULA_OUT;
	-- MEM_INN <= Rt_RAM;
	-- MEM_OUTT <= MEM_OUT;
	-- RS_OUT <= Rs_ULA_A;
	-- RT_OUTT <= RT_OUT;
	-- PC_OUTT <= PC_OUT;
	-- Rs_End <= RsAddr;
	-- Rt_End <= RtAddr;
	-- flagEqual <= ULA_FLAG;
	-- Funct <= ROM_OUT(5 downto 0);
	-- habFlagBEQ <= habFlagEqual;
	-- muxJmp <= SelMuxJump;

END ARCHITECTURE;