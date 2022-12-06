LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY projetoMIPS IS
	-- Total de bits das entradas e saidas
	GENERIC (
		larguraDados : NATURAL := 32;
		larguraEnderecos : NATURAL := 32;
		simulacao : BOOLEAN := TRUE -- para gravar na placa, altere de TRUE para FALSE
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
		HEX5          : out std_logic_vector(6 downto 0);


		ULAA_OUT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		decoder_OUTT : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
		MEM_OUTT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		RS_OUTT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		RT_OUTT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0); -- dado a ser escrito
		Rt_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		Rd_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		Rs_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		PC_OUTT : OUT STD_LOGIC_VECTOR(larguraEnderecos - 1 DOWNTO 0);
		imediato_OUT : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		operacao : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		flagEqual : OUT STD_LOGIC;
		mux_BEQ_BNE : OUT STD_LOGIC;
		escrita_WB : OUT STD_LOGIC_VECTOR(larguraEnderecos - 1 DOWNTO 0);
		destino_end : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		habEscritaReg : OUT STD_LOGIC;
		SOMADOR_CONSTANTE_MEM : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0)

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
	SIGNAL RtAddr : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL RsAddr : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL RdAddr : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL imediato_estendido : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL decoder_OUT : STD_LOGIC_VECTOR(13 DOWNTO 0);
	SIGNAL ULA_ctrl : STD_LOGIC_VECTOR(2 DOWNTO 0); 

	-- sinais de saida do bloco do Execute:
	SIGNAL somador_BEQ_OUT : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL ULA_OUT : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL ULA_FLAG : STD_LOGIC;
	SIGNAL RT_OUT_2 : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL PC_constante : STD_LOGIC_VECTOR((larguraEnderecos - 1) DOWNTO 0);
	SIGNAL imediatoLUI_EX: STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL decoder_OUT_EX : STD_LOGIC_VECTOR(13 DOWNTO 0);
	SIGNAL MUX_RTRD_OUT_EX : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL somador_constante_OUT_EX : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);

	-- sinais de saída do bloco Memory Access:
	SIGNAL MuxBeqOut : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL MEM_OUT : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL imediato_LUI_MEM: STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL decoder_OUT_MEM : STD_LOGIC_VECTOR(13 DOWNTO 0);
	SIGNAL muxULA_BEQ_BNE_OUT : STD_LOGIC;
	SIGNAL MUX_RTRD_OUT_MEM : STD_LOGIC_VECTOR(4 DOWNTO 0);

	-- sinais de saida do bloco Write Back:
	SIGNAL MUX_DADO_BANCO : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
	SIGNAL MUX_RTRD_OUT_WB : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL imediato_LUI_WB:  STD_LOGIC_VECTOR(31 DOWNTO 0);

    ALIAS imediato : STD_LOGIC_VECTOR(15 DOWNTO 0) IS ROM_OUT(15 DOWNTO 0);
	SIGNAL imediatoLUI:  STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL saida_LED_HEX : STD_LOGIC_VECTOR(larguraDados-1 DOWNTO 0);

	-- sinais e aliases do MUX_NEXT_PC_BEQ_JMP:
	SIGNAL CONCAT_JMP : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	ALIAS SelMuxJump : STD_LOGIC IS decoder_OUT(12);
	SIGNAL MUX_BEQ_JMP_OUT : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);

	-- sinais e aliases do MUX_JR:
	ALIAS JR : STD_LOGIC IS decoder_OUT(13);
	SIGNAL MUX_PROX_PC : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);

	-- sinais do registrador IF_ID:
	SIGNAL IF_ID_OUT : STD_LOGIC_VECTOR(95 DOWNTO 0);

	-- sinais do registrador ID_EX:
	SIGNAL ID_EX_OUT : STD_LOGIC_VECTOR(191 DOWNTO 0);

	-- sinais do registrador EX_MEM:
	SIGNAL EX_MEM_OUT : STD_LOGIC_VECTOR(211 DOWNTO 0);

	-- sinais do registrador MEM_WB:
	SIGNAL MEM_WB_OUT : STD_LOGIC_VECTOR(147 DOWNTO 0);

	-- sinal da instrução:
	ALIAS Instru : STD_LOGIC_VECTOR(31 DOWNTO 0) IS IF_ID_OUT(31 DOWNTO 0);

	-- sinais necessários para formar instuções
	ALIAS imediatoJmp : STD_LOGIC_VECTOR(25 DOWNTO 0) IS Instru(25 DOWNTO 0);
	ALIAS BEQ : STD_LOGIC IS decoder_OUT(3);
	ALIAS BNE: STD_LOGIC IS decoder_OUT(2);
	

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


	CONCAT_JMP <=  PC_constante(31 DOWNTO 28) & imediatoJmp & "00";

	MUXBEQ : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
    PORT MAP(
        entradaA_MUX => somador_constante_OUT,
        entradaB_MUX => somador_BEQ_OUT,   --EX_MEM_OUT(128 downto 97), -- somador_BEQ_OUT_MEM
        seletor_MUX => MEM_WB_OUT(78) AND (BEQ OR BNE),
        saida_MUX => MuxBeqOut
    );

    -- O port map completo do Mux que decide se vai ter Jump ou fluxo de dados normal|BEQ:
    MUX_NEXT_PC_BEQ_JMP : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
        PORT MAP(
            entradaA_MUX => MuxBeqOut, --entra na etapa, sendo proveniente da MEM
            entradaB_MUX => CONCAT_JMP, -- junta os 4 bits mais significativos que vem do PC, imediato do JMP e 00 
            seletor_MUX => SelMuxJump,  -- vem do decoder
            saida_MUX => MUX_BEQ_JMP_OUT
        );


    -- O port map completo do Mux que decide o JAL ou fluxo de dados normal| BEQ| Jmp para o PC:
    MUX_JR : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
        PORT MAP(
            entradaA_MUX => MUX_BEQ_JMP_OUT, 
            entradaB_MUX => RS_OUT, -- entra na etapa, sendo proveniente de EX
            seletor_MUX => JR,  -- vem do decoder 
            saida_MUX => MUX_PROX_PC
        );

	BLOCO_IF: ENTITY work.IFF GENERIC MAP (larguraDados => larguraDados)
	PORT MAP(
		-- entradas do bloco:
		CLK => CLK,	
		MUX_PROX_PC => MUX_PROX_PC,
		-- saidas do bloco:
		PC_OUT_IF => PC_OUT, -- necessário para monitoramento do PC pelo display 
		somador_constante_OUT_IF => somador_constante_OUT, -- vai ser passado até a etapa EX
		ROM_OUT_IF => ROM_OUT -- saída da ROM que vai ser utilizada na etapa ID
	);
	
	IF_ID: ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 96)
	PORT MAP(
		DIN =>  PC_OUT & somador_constante_OUT & ROM_OUT,
		DOUT => IF_ID_OUT, 
		ENABLE => '1',
		CLK => CLK,
		RST => '0'
	);

	BLOCO_ID: ENTITY work.ID GENERIC MAP (larguraDados => larguraDados)
	PORT MAP(
		-- entradas do bloco:
		CLK => CLK,
        somador_constante_OUT_IF => IF_ID_OUT(63 downto 32), -- provém do IF, somador_constante_OUT
        MUX_DADO_BANCO => MUX_DADO_BANCO, -- provém do WB
        ROM_OUT_ID => IF_ID_OUT(31 downto 0), -- probém do IF, ROM_OUT
		MUX_RTRD_OUT => MUX_RTRD_OUT_WB, -- provém do WB
		-- saidas do bloco:
        somador_constante_OUT_ID => somador2_constante_OUT_ID, -- esse fio apenas passou pela etapa
        RS_OUT_ID => RS_OUT, -- necessário para a etapa EX
        RT_OUT_ID  => RT_OUT, -- necessário para a etapa EX
		RS_Addr_ID => RsAddr,
		RT_Addr_ID => RtAddr,
		RD_Addr_ID => RdAddr,
        imediato_estendido_ID => imediato_estendido,  -- necessário para a etapa EX
		imediatoLUI_ID => imediatoLUI, -- necessário para a etapa EX
        decoder_OUT_ID  => decoder_OUT, -- necessário para todas as etapas: sinais de controle
		operacao_ULA_ID => ULA_ctrl -- necessário para a etapa EX (ULA)
	);

	ID_EX: ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 192)
	PORT MAP(
		DIN =>  RsAddr & decoder_OUT & somador2_constante_OUT_ID & imediato_estendido &  imediatoLUI & RS_OUT  & RT_OUT & RtAddr & RdAddr & ULA_ctrl, -- RtAddr RdAddr
		DOUT => ID_EX_OUT, 
		ENABLE => '1',
		CLK => CLK,
		RST => '0'
	);
	
	BLOCO_EX: ENTITY work.EX GENERIC MAP (larguraDados => larguraDados)
	PORT MAP(
		-- entradas do bloco:
		CLK => CLK,
		decoder_OUT => ID_EX_OUT(186 downto 173), -- provém do ID, decoder_OUT
        somador_constante_OUT_ID=> ID_EX_OUT(172 downto 141), -- provém do ID, somador2_constante_OUT_ID
        RS_OUT_EX => ID_EX_OUT(76 downto 45), -- provém do ID, RS_OUT
        RT_OUT_EX => ID_EX_OUT(44 downto 13), -- provém do ID, RT_OUT
		RtAddr_EX => ID_EX_OUT(12 downto 8), -- provém do ID, RtAddr
		RdAddr_EX => ID_EX_OUT(7 downto 3), -- provém do ID, RdAddr
        imediato_estendido_EX => ID_EX_OUT(140 downto 109), -- provém do ID, imediato_estendido
		ULA_Op => ID_EX_OUT(2 downto 0), -- provém do ID, ULA_ctrl
		imediatoLUI_ID => ID_EX_OUT(108 downto 77), -- provém do ID, imediatoLUI
		-- saidas do bloco:
		somador_constante_OUT_EX => somador_constante_OUT_EX,
        somador_BEQ_OUT => somador_BEQ_OUT,
        ULA_result => ULA_OUT,
        ULA_FLAG_ZERO => ULA_FLAG,
        RT_OUT_EXX => RT_OUT_2,
		PC_constante_EX => PC_constante,
		imediatoLUI_EX => imediatoLUI_EX,
        decoder_OUT_EX => decoder_OUT_EX,
		MUX_RTRD_OUT_EX => MUX_RTRD_OUT_EX --- vai ter que acrescentar esse cara, coloca no final rique mais facil
	);

	EX_MEM: ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 212)
	PORT MAP(
		DIN => somador_constante_OUT_EX & MUX_RTRD_OUT_EX & decoder_OUT_EX & somador_BEQ_OUT & ULA_OUT & ULA_FLAG  & RT_OUT_2 & PC_constante & imediatoLUI_EX, -- RtAddr RdAddr
		DOUT => EX_MEM_OUT,
		ENABLE => '1',
		CLK => CLK,
		RST => '0'
	);
		

	BLOCO_MEM: ENTITY work.MEM GENERIC MAP (larguraDados => larguraDados)
	PORT MAP(
		-- entradas do bloco:
		CLK => CLK, 
		somador_constante_EX => EX_MEM_OUT(211 downto 180),
		MUX_RTRD_OUT_EX => EX_MEM_OUT(179 downto 175), -- MODIFICAR AQUI TBM
        decoder_OUT_EX => EX_MEM_OUT(174 downto 161), -- provém do ID
        somador_BEQ_OUT_MEM => EX_MEM_OUT(160 downto 129) , -- provém do EX, somador_BEQ_OUT [CONFIRA BITS]
        ULA_result_MEM => EX_MEM_OUT(128 downto 97), -- provém do EX, ULA_OUT
        ULA_FLAG_ZERO_MEM => EX_MEM_OUT(96), -- provém do EX, ULA_FLAG
        RT_OUT_MEM => EX_MEM_OUT(95 downto 64), -- provém do EX, RT_OUT_2
		PC_constante => EX_MEM_OUT(63 downto 32), -- provém do EX, PC_constante
		imediato_LUI_EX => EX_MEM_OUT(31 downto 0), -- provém do EX, imediatoLUI_EX
		-- saidas do bloco:
		somador_constante_MEM => somador_constante_MEM,
        MEM_OUT_MEM => MEM_OUT,  
		muxULA_BEQ_BNE_OUT => muxULA_BEQ_BNE_OUT,
		imediato_LUI_MEM => imediato_LUI_MEM,
		decoder_OUT_MEM => decoder_OUT_MEM,
		MUX_RTRD_OUT_MEM => MUX_RTRD_OUT_MEM
	);

	MEM_WB: ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 148)
	PORT MAP(
		DIN => somador_constante_MEM & imediato_LUI_MEM & MUX_RTRD_OUT_MEM & muxULA_BEQ_BNE_OUT & decoder_OUT_MEM & MEM_OUT & ULA_OUT, -- RtAddr RdAddr
		DOUT => MEM_WB_OUT, 
		ENABLE => '1',
		CLK => CLK,
		RST => '0'
	);

	BLOCO_WB: ENTITY work.WB GENERIC MAP (larguraDados => larguraDados)
	PORT MAP(
		-- entradas do bloco:
		CLK => CLK,
		MUX_RTRD_OUT_MEM => MEM_WB_OUT(83 downto 79), -- provém do MEM, MUX_RTRD_OUT_MEM
		decoder_OUT => MEM_WB_OUT(77 downto 64) , --  provém do ID, decoder_OUT
		MEM_OUT_WB => MEM_WB_OUT(63 downto 32), -- provém do MEM, MEM_OUT
		ADDRESS_WB => MEM_WB_OUT(31 downto 0), -- provém do EX, ULA_OUT
		PC_constante_WB => MEM_WB_OUT(147 downto 116), -- provém do IF
		imediato_LUI_WB => MEM_WB_OUT(115 downto 84), -- provém do MEM, imediato_LUI_MEM
		-- saida do bloco:
		MUX_RTRD_OUT_WB => MUX_RTRD_OUT_WB,
		MUX_DADO_BANCO_WB => MUX_DADO_BANCO
	);


	MUX_INFO: ENTITY work.muxGenerico4x1 GENERIC MAP (larguraDados => larguraDados)
	PORT MAP(
		E0 => PC_OUT, -- PC_OUT
		E1 => ID_EX_OUT(172 downto 141), -- somador_constante
		E2 =>  ULA_OUT, -- ULA_OUT
		E3	=> MUX_DADO_BANCO, -- dado que salva
		SEL_MUX => SW(1) & SW(0),
		MUX_OUT => saida_LED_HEX 
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

	LEDR(8) <= ID_EX_OUT(181);
	
	LEDR(9) <= ULA_FLAG;
		

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


	ULAA_OUT <= ULA_OUT;
	decoder_OUTT <= ID_EX_OUT(186 downto 173);
	operacao <= Ula_ctrl;
	MEM_OUTT <= MEM_OUT;
	RS_OUTT <= ID_EX_OUT(76 downto 45);
	RT_OUTT <= ID_EX_OUT(44 downto 13);
	PC_OUTT <= PC_OUT;
	Rt_End <= ID_EX_OUT(12 downto 8);
	Rd_End <= ID_EX_OUT(7 downto 3);
	Rs_End <= ID_EX_OUT(191 downto 187);
	flagEqual <= ULA_FLAG;
	mux_BEQ_BNE <= muxULA_BEQ_BNE_OUT;
	escrita_WB <= MUX_DADO_BANCO;
	destino_end <= MUX_RTRD_OUT_WB;
	imediato_OUT <= ID_EX_OUT(140 downto 109);
	habEscritaReg <= ID_EX_OUT(181);

END ARCHITECTURE;






-- やっと終わった、またね。