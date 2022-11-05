library ieee;
use ieee.std_logic_1164.all;

entity Aula15 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 32;
          larguraEnderecos : natural := 32;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
  
	 -- input ports

    CLOCK_50 : in std_logic;

	 -- output ports
	 
	 Instru_opcode : out std_logic_vector(5 downto 0); 
	 ULAA_OUT : out std_logic_vector(larguraDados-1 downto 0);
	 RS_OUT : out std_logic_vector(larguraDados-1 downto 0);
	 RT_OUT : out std_logic_vector(larguraDados-1 downto 0);
	 Rs_End : out std_logic_vector(4 downto 0);
	 Rt_End : out std_logic_vector(4 downto 0);
	 PC_OUTT : out std_logic_vector(larguraEnderecos-1 downto 0)
);
  
end entity;

architecture arquitetura of Aula15 is

  signal CLK : std_logic;
  signal PC_constante : std_logic_vector(larguraDados-1 downto 0);
  signal Prox_PC : std_logic_vector(larguraDados-1 downto 0);
  signal PC_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal ROM_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal MUX_OUT : std_logic_vector(4 downto 0);
  signal Rs_ULA_A : std_logic_vector(larguraDados-1 downto 0);
  signal Rt_RAM : std_logic_vector(larguraDados-1 downto 0);
  signal imediatoEstendido: std_logic_vector(larguraDados-1 downto 0);
  signal imediatoEstendidoShiftado: std_logic_vector(larguraDados-1 downto 0);
  signal ULA_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal MEM_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal ULA_FLAG : std_logic;  
  signal FLAG_EQ_OUT : std_logic;
  signal somador_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal decoder_OUT : std_logic_vector(5 downto 0);

  
  alias ROM_IN : std_logic_vector(larguraDados-1 downto 0) is PC_OUT(larguraDados-1 downto 0);
  alias RsAddr : std_logic_vector(4 downto 0) is ROM_OUT(25 downto 21);
  alias RtAddr : std_logic_vector(4 downto 0) is ROM_OUT(20 downto 16);
  alias imediato: std_logic_vector(15 downto 0) is ROM_OUT(15 downto 0);
--  alias RdAddr : std_logic_vector(4 downto 0) is ROM_OUT(15 downto 11);
  alias MEM_ADD : std_logic_vector(31 downto 0) is ULA_OUT(31 downto 0);
  alias MEM_IN : std_logic_vector(31 downto 0) is Rt_RAM(31 downto 0);
  alias SelMuxFlag : std_logic is FLAG_EQ_OUT;
  
  alias write_REG: std_logic is decoder_OUT(5);
  alias Sel_ULA: std_logic_vector(1 downto 0) is decoder_OUT(4 downto 3);
  alias habFlagEqual: std_logic is decoder_OUT(2);
  alias read_RAM: std_logic is decoder_OUT(1);
  alias write_RAM: std_logic is decoder_OUT(0);
  

begin


	CLK <= CLOCK_50;


	Somador1 :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 4)
        port map( entrada => PC_OUT, saida => PC_constante);
	
	
	PC_REG : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (
				 DIN => Prox_PC,
				 DOUT => PC_OUT,
				 ENABLE => '1',
				 CLK => CLK,
				 RST => '0');
				 
	
		-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
	ROM1 : entity work.memoriaROM generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos, memoryAddrWidth => 6) -- POR QUE 4?
				 port map (
						 clk => CLK,
						 Endereco => ROM_IN,
						 Dado => ROM_OUT);
						 
	decoderInstru1 : entity work.Decoder
		  port map( 
				  OPCODE => ROM_OUT(31 downto 26),
				  OUTPUT => decoder_OUT);	
						  					 
						 
	BANCO_REG: entity work.bancoReg    generic map (larguraDados => larguraDados)
			  port map (   clk         => CLK,
								enderecoA   => RsAddr,
								enderecoB   => RtAddr,
								enderecoC   => RtAddr,
								dadoEscritaC=> MEM_OUT,
								escreveC    => write_REG,
								saidaA      => Rs_ULA_A,
								saidaB      => Rt_RAM
							);	
							

	EstendeSinal :  entity work.estendeSinal  generic map (larguraDadosEntrada => 16, larguraDadosSaida => larguraDados)
		  port map( 
					  entrada => imediato,
					  saida => imediatoEstendido);
					  
	ShiftSinal :  entity work.shiftSinal  generic map (larguraDados => larguraDados)
		  port map( 
					  entrada => imediatoEstendido,
					  saida => imediatoEstendidoShiftado);
					  
					  
		-- port map do flip flop da flag de comparacao
	FLAG:
		entity work.flipflopGenerico
		port map (
			DIN		=> ULA_FLAG, 
			DOUT		=> FLAG_EQ_OUT,
			ENABLE 	=> habFlagEqual,
			CLK 		=> CLK,
			RST 		=> '0'
		);

	Somador2 :  entity work.somadorGenerico  generic map (larguraDados => larguraEnderecos)
        port map(
						entradaA => PC_constante,
						entradaB => imediatoEstendidoShiftado,
						saida => somador_OUT
						);
		  
		
	MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
		  port map( 
					  entradaA_MUX => PC_constante,
					  entradaB_MUX =>  somador_OUT,
					  seletor_MUX => SelMuxFlag,
					  saida_MUX => Prox_PC);

						  					 
							
	ULA1 : entity work.ULASomaSub generic map(larguraDados => larguraDados)
				 port map (
						 entradaA => Rs_ULA_A,
						 entradaB => imediatoEstendido,
						 saida => ULA_OUT,
						 seletor => Sel_ULA,
						 flagEqual => ULA_FLAG);	
						 
	RAM1 : entity work.memoriaRAM generic map (dataWidth => larguraDados, addrWidth => larguraDados, memoryAddrWidth => 6)
		 port map (
				 clk => CLK,
				 Endereco => MEM_ADD,
				 Dado_in => MEM_IN,
				 Dado_out => MEM_OUT,
				 we => write_RAM,
				 re => read_RAM
				 );	
						 
	Instru_opcode <= ROM_OUT(31 downto 26);
--	Funct <= ROM_OUT(5 downto 0);
	ULAA_OUT <= ULA_OUT;
	RS_OUT <= Rs_ULA_A;
	RT_OUT <= Rt_RAM;
	PC_OUTT <= PC_OUT;
	Rs_End <= RsAddr;
	Rt_End <= RtAddr;
--	Rd_End <= RdAddr;
	
end architecture;