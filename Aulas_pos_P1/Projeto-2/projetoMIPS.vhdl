LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY projetoMIPS IS
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
		-- ULAA_OUT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		-- MEM_INN : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		-- MEM_OUTT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		-- RS_OUT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		-- RT_OUTT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0); -- dado a ser escrito
		-- RD_OUTT_MUX : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0); -- dado a ser escrito
		-- Rs_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		-- Rt_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		-- Rd_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		-- PC_OUTT : OUT STD_LOGIC_VECTOR(larguraEnderecos - 1 DOWNTO 0);
		-- imediato_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		-- operacao : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		-- flagEqual : OUT STD_LOGIC;
		-- flagNotEqual : OUT STD_LOGIC;
		-- habFlagBEQ : OUT STD_LOGIC;
		-- habEscritaReg : OUT STD_LOGIC;
		-- ULA_MEM_Select : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
		-- muxJmp : OUT STD_LOGIC
	);

END ENTITY;

ARCHITECTURE arquitetura OF projetoMIPS IS

	SIGNAL CLK : STD_LOGIC;

	-- sinais de saida do bloco do Fetch:
	SIGNAL PC_OUT : STD_LOGIC_VECTOR((larguraEnderecos - 1) DOWNTO 0);
	SIGNAL somador_constante_OUT :STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL ROM_OUT : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);

	-- sinais de saida do bloco do Decode:
	SIGNAL somador2_constante_OUT_ID : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL RS_OUT : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL RT_OUT : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL imediato_estendido : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL decoder_OUT : STD_LOGIC_VECTOR(13 DOWNTO 0);
	SIGNAL ULA_ctrl : STD_LOGIC_VECTOR(2 DOWNTO 0); 

	-- sinais de saida do bloco do Execute:
	SIGNAL somador_BEQ_OUT : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL ULA_OUT : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL ULA_FLAG : STD_LOGIC;
	SIGNAL RT_OUT_2 : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL PC_constante : STD_LOGIC_VECTOR((larguraEnderecos - 1) DOWNTO 0);

	-- sinais de saída do bloco Memory Access:
	SIGNAL MuxBeqOut : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL MEM_OUT : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);

	-- sinais de saida do bloco Write Back:
	SIGNAL MUX_DADO_BANCO : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);

    ALIAS imediato : STD_LOGIC_VECTOR(15 DOWNTO 0) IS ROM_OUT(15 DOWNTO 0);
	SIGNAL saida_LED_HEX : STD_LOGIC_VECTOR(larguraDados-1 DOWNTO 0);


-- JR|SelMuxBEQJmp|muxRTRD|ORI_ANDI|habEscritaReg|muxRTImediato|TipoR|muxULAMEM|BEQ|Leitura|Escrita

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

	BLOCO_IF: ENTITY work.IFF GENERIC MAP (larguraDados => larguraDados)
	PORT MAP(
		-- entradas do bloco:
		CLK => CLK,	
		decoder_OUT => decoder_OUT, -- importante para pontos de controle
		MuxBeqOut => MuxBeqOut, -- provém da MEM
		Rs_ULA_A => RS_OUT, -- provém do EX (banco de registradores)
		-- saidas do bloco:
		PC_OUT_IF => PC_OUT, -- necessário para monitoramento do PC pelo display 
		somador_constante_OUT_IF => somador_constante_OUT, -- vai ser passado até a etapa EX
		ROM_OUT_IF => ROM_OUT -- saída da ROM que vai ser utilizada na etapa ID
	);

	BLOCO_ID: ENTITY work.ID GENERIC MAP (larguraDados => larguraDados)
	PORT MAP(
		-- entradas do bloco:
		CLK => CLK,
        somador_constante_OUT_IF => somador_constante_OUT, -- provém do IF
        MUX_DADO_BANCO => MUX_DADO_BANCO, -- provém do WB
        ROM_OUT_ID => ROM_OUT, -- probém do IF
		-- saidas do bloco:
        somador_constante_OUT_ID => somador2_constante_OUT_ID, -- esse fio apenas passou pela etapa
        RS_OUT_ID => RS_OUT, -- necessário para a etapa EX
        RT_OUT_ID  => RT_OUT, -- necessário para a etapa EX
        imediato_estendido_ID => imediato_estendido,  -- necessário para a etapa EX
        decoder_OUT_ID  => decoder_OUT, -- necessário para todas as etapas: sinais de controle
		operacao_ULA_ID => ULA_ctrl -- necessário para a etapa EX (ULA)
	);
	
	BLOCO_EX: ENTITY work.EX GENERIC MAP (larguraDados => larguraDados)
	PORT MAP(
		-- entradas do bloco:
		CLK => CLK,
		decoder_OUT => decoder_OUT, -- provém do ID
        somador_constante_OUT_ID=> somador2_constante_OUT_ID, -- provém do ID
        RS_OUT_EX => RS_OUT, -- provém do ID
        RT_OUT_EX => RT_OUT, -- provém do ID
        imediato_estendido_EX => imediato_estendido, -- provém do ID
		ULA_Op => ULA_ctrl, -- provém do ID
		-- saidas do bloco:
        somador_BEQ_OUT => somador_BEQ_OUT,
        ULA_result => ULA_OUT,
        ULA_FLAG_ZERO => ULA_FLAG,
        RT_OUT_EXX => RT_OUT_2,
		PC_constante_EX => PC_constante
	);
		

	BLOCO_MEM: ENTITY work.MEM GENERIC MAP (larguraDados => larguraDados)
	PORT MAP(
		-- entradas do bloco:
		CLK => CLK, 
        decoder_OUT => decoder_OUT, -- provém do ID
        somador_BEQ_OUT_MEM => somador_BEQ_OUT, -- provém do EX
        ULA_result_MEM => ULA_OUT, -- provém do EX
        ULA_FLAG_ZERO_MEM => ULA_FLAG, -- provém do EX
        RT_OUT_MEM => RT_OUT_2, -- provém do EX
		PC_constante => PC_constante, -- provém do EX
		-- saidas do bloco:
        MEM_OUT_MEM => MEM_OUT,  
		MuxBeqOutMEM => MuxBeqOut
        -- ADDRESS => ADDRESS,
	);

	BLOCO_WB: ENTITY work.WB GENERIC MAP (larguraDados => larguraDados)
	PORT MAP(
		-- entradas do bloco:
		CLK => CLK,
		decoder_OUT => decoder_OUT, -- provém do ID
		MEM_OUT_WB => MEM_OUT, -- provém do MEM
		ADDRESS_WB => ULA_OUT, -- provém do EX
		PC_constante_WB => PC_constante, -- provém do EX
		imediato_WB => imediato,
		-- saida do bloco:
		MUX_DADO_BANCO_WB => MUX_DADO_BANCO
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
		

--	monitor: work.debugMonitor
--	port map(PC => PC_OUT,                         -- Saida o PC: entrada de endereco da ROM
--		  Instrucao => ROM_OUT,   -- Saida de dados da ROM
--		  LeituraRS => Rs_ULA_A,        -- Saida do Banco de Registradores: leitura de RS
--		  LeituraRT => Rt_OUT,        -- Saida do Banco de Registradores: leitura de RT
--		  EscritaRD => MUX_DADO_BANCO,      -- Entrada do Banco de Registradores (C)
--		  EntradaB_ULA => MUX_ULA_B,             -- Entrada B da ULA: saida do MUX RT/ImediatoEstendido
--		  imediatoEstendido => imediatoEstendido,  -- ImediatoEstendido: entrada do MUX RT/ImediatoEstendido
--		  saidaULA => ULA_OUT,        -- Saida da ULA: entrada do MUX ULA/MEM
--		  dadoLido_RAM => MEM_OUT,     -- Saida da RAM: entrada do MUX ULA/MEM
--		  proxPC => MUX_PROX_PC,    -- Entrada do PC ou saida do MUX ProxPC MUX_PROX_PC
--		  MUXProxPCEntradaA => MuxBeqOut,   -- Entrada do MUX ProxPC: vinda MUX PC+4/BEQ
--		  MUXProxPCEntradaB => CONCAT_JMP,   -- Entrada do MUX ProxPC: vinda da montagem do endereco de Jump
--		  ULActrl => '0' & Ula_ctrl,                      -- Entrada do ULActrl na ULA: pode ser necessario concatenar 1 bit '0': '0' & ULActrl
--		  zeroFLAG => ULA_FLAG,                        -- Saida do Flag da ULA e entrada da porta AND
--		  escreveC => write_REG,       -- Entrada do Banco de Registradores: sinal de habilita escrita no terceiro endereco (RD ou RT)
--		  MUXPCBEQJUMP => SelMuxJump,          -- Selecao do MUX do proxPC: vem da unidade de controle
--		  MUXRTRD => SelMuxRtRd,                     -- Selecao do MUX RT/RD: vem da unidade de controle
--		  MUXRTIMED => SelImediatoReg,                 -- Selecao do MUX RT/Imediato: vem da unidade de controle
--		  MUXULAMEM => SelMuxUlaMem,                 -- Selecao do MUX ULA/MEM: vem da unidade de controle
--		  iBEQ => BEQ,                              -- Indicador de instrucao BEQ: vem da unidade de controle
--		  WR => write_RAM,                    -- Habilita escrita na RAM: vem da unidade de controle
--		  RD => read_RAM,                    -- Habilita leitura da RAM: vem da unidade de controle
--		  --Output
--		  clkTCL => open);                       -- Sem uso: conectar com open


	-- Instru_opcode <= ROM_OUT(31 DOWNTO 26);
	-- ULAA_OUT <= ULA_OUT;
	-- operacao <= Ula_ctrl;
	-- MEM_INN <= Rt_RAM;
	-- MEM_OUTT <= MEM_OUT;
	-- RS_OUT <= Rs_ULA_A;
	-- RT_OUTT <= Rt_OUT;
	-- PC_OUTT <= PC_OUT;
	-- Rs_End <= RsAddr;
	-- Rt_End <= RtAddr;
	-- Rd_End <= RdAddr;
	-- flagEqual <= ULA_FLAG;
	-- Funct <= ROM_OUT(5 downto 0);
	-- habFlagBEQ <= BEQ;
	-- muxJmp <= SelMuxJump;
	-- imediato_OUT <= imediatoEstendido;
	-- habEscritaReg <= write_REG;
	-- ULA_MEM_Select <= SelMuxUlaMem;
	-- RD_OUTT_MUX <= MUX_DADO_BANCO;
	-- flagNotEqual <= NOT(ULA_FLAG);

END ARCHITECTURE;