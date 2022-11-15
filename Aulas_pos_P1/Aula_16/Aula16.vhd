LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Aula16 IS
	-- Total de bits das entradas e saidas
	GENERIC (
		larguraDados : NATURAL := 32;
		larguraEnderecos : NATURAL := 32;
		simulacao : BOOLEAN := FALSE -- para gravar na placa, altere de TRUE para FALSE
	);
	PORT (

		-- input ports

		CLOCK_50 : IN STD_LOGIC;

		-- output ports

		Instru_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
		Funct : out std_logic_vector(5 downto 0);
		ULAA_OUT_AddrRAM : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		MEM_INN : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		MEM_OUTT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		RS_OUT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
		RT_OUTT : OUT STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0); -- dado a ser escrito
		Rs_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		Rt_End : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		PC_OUTT : OUT STD_LOGIC_VECTOR(larguraEnderecos - 1 DOWNTO 0);
		flagEqual : OUT STD_LOGIC;
		habFlagBEQ : OUT STD_LOGIC;
		muxJmp : OUT STD_LOGIC
	);

END ENTITY;

ARCHITECTURE arquitetura OF Aula16 IS

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
	SIGNAL decoder_OUT : STD_LOGIC_VECTOR(10 DOWNTO 0);
	SIGNAL MUX_RTRD_OUT : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL MUX_PROX_PC : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL CONCAT_JMP : STD_LOGIC_VECTOR(larguraDados - 1 DOWNTO 0);
	SIGNAL OP : STD_LOGIC_VECTOR(1 DOWNTO 0); 

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

	-- SelMuxJmp SelMuxRtRd  write_REG(1) habMUX(rt/imediato) OP(2) SelMuxMEMULA habFlagEqual read_RAM write_RAM
	ALIAS TIPOR : STD_LOGIC IS decoder_OUT(10);
	ALIAS SelMuxJump : STD_LOGIC IS decoder_OUT(9);
	ALIAS SelMuxRtRd : STD_LOGIC IS decoder_OUT(8);
	ALIAS write_REG : STD_LOGIC IS decoder_OUT(7);
	ALIAS SelImediatoReg : STD_LOGIC IS decoder_OUT(6);
	ALIAS Sel_ULA : STD_LOGIC_VECTOR(1 DOWNTO 0) IS decoder_OUT(5 DOWNTO 4);
	ALIAS SelMuxUlaMem : STD_LOGIC IS decoder_OUT(3);
	ALIAS habFlagEqual : STD_LOGIC IS decoder_OUT(2);
	ALIAS read_RAM : STD_LOGIC IS decoder_OUT(1);
	ALIAS write_RAM : STD_LOGIC IS decoder_OUT(0);

BEGIN
	CLK <= CLOCK_50;
	
	Somador1 : ENTITY work.somaConstante GENERIC MAP (larguraDados => larguraEnderecos, constante => 4)
		PORT MAP(entrada => PC_OUT, saida => PC_constante);
		
	PC_REG : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => larguraEnderecos)
		PORT MAP(
			DIN => MUX_PROX_PC,
			DOUT => PC_OUT,
			ENABLE => '1',
			CLK => CLK,
			RST => '0'
		);

	CONCAT_JMP <=  PC_constante(31 DOWNTO 28) & imediatoJmp & "00";

	MUX_NEXT_PC : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
		PORT MAP(
			entradaA_MUX => MuxBeqOut,
			entradaB_MUX => CONCAT_JMP, --shifter out
			seletor_MUX => decoder_OUT(9), --sel(9)
			saida_MUX => MUX_PROX_PC
		);

	-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
	ROM1 : ENTITY work.memoriaROM GENERIC MAP (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6)
		PORT MAP(
			clk => CLK,
			Endereco => ROM_IN,
			Dado => ROM_OUT
		);

	
	controleULA : ENTITY work.ControleULA
		PORT MAP(
			OPCODE => OPCODE_SIGNAL,
			FUNCT => FUNCT_SIGNAL,
			TIPO_R => TIPOR,
			OUTPUT => OP
		);

	decoderInstru1 : ENTITY work.Decoder
		PORT MAP(
			OPCODE => OPCODE_SIGNAL,
			FUNCT  => FUNCT_SIGNAL,
			OPERACAO => OP,
			OUTPUT => decoder_OUT
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

	MUX_RD_RT : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 5)
		PORT MAP(
			entradaA_MUX => RtAddr,
			entradaB_MUX => RdAddr,
			seletor_MUX => SelMuxRtRd,
			saida_MUX => MUX_RTRD_OUT
		);

	MUXBEQ : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
		PORT MAP(
			entradaA_MUX => PC_constante,
			entradaB_MUX => somador_OUT,
			seletor_MUX => (habFlagEqual AND ULA_FLAG),
			saida_MUX => MuxBeqOut
		);

	MUX2 : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => larguraDados)
		PORT MAP(
			entradaA_MUX => Rt_OUT,
			entradaB_MUX => imediatoEstendido,
			seletor_MUX => SelImediatoReg,
			saida_MUX => MUX_ULA_B
		);

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
			saida => ULA_OUT,
			seletor => Sel_ULA,
			flagEqual => ULA_FLAG
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

	Instru_opcode <= ROM_OUT(31 DOWNTO 26);
	ULAA_OUT_AddrRAM <= ULA_OUT;
	MEM_INN <= Rt_RAM;
	MEM_OUTT <= MEM_OUT;
	RS_OUT <= Rs_ULA_A;
	RT_OUTT <= RT_OUT;
	PC_OUTT <= PC_OUT;
	Rs_End <= RsAddr;
	Rt_End <= RtAddr;
	flagEqual <= ULA_FLAG;
	Funct <= ROM_OUT(5 downto 0);
	habFlagBEQ <= habFlagEqual;
	muxJmp <= decoder_OUT(9);

END ARCHITECTURE;