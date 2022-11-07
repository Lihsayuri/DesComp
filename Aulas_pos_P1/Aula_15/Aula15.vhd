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
	 ULAA_OUT_AddrRAM : out std_logic_vector(larguraDados-1 downto 0);
	 MEM_INN : out std_logic_vector(larguraDados-1 downto 0);
	 MEM_OUTT : out std_logic_vector(larguraDados-1 downto 0);
	 RS_OUT : out std_logic_vector(larguraDados-1 downto 0);
	 RT_OUTT : out std_logic_vector(larguraDados-1 downto 0); -- dado a ser escrito
	 Rs_End : out std_logic_vector(4 downto 0);
	 Rt_End : out std_logic_vector(4 downto 0);
	 PC_OUTT : out std_logic_vector(larguraEnderecos-1 downto 0);
	 flagEqual : out std_logic
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
  signal Rt_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal MUX_ULA_B : std_logic_vector(larguraDados-1 downto 0);


  signal imediatoEstendido: std_logic_vector(larguraDados-1 downto 0);
  signal imediatoEstendidoShiftado: std_logic_vector(larguraDados-1 downto 0);
  signal ULA_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal MEM_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal ULA_FLAG : std_logic;  
  signal FLAG_EQ_OUT : std_logic;
  signal somador_OUT : std_logic_vector(larguraDados-1 downto 0);
  signal decoder_OUT : std_logic_vector(6 downto 0);

  
  alias Rt_RAM : std_logic_vector(larguraDados-1 downto 0) is Rt_OUT;
  alias ROM_IN : std_logic_vector(larguraDados-1 downto 0) is PC_OUT(larguraDados-1 downto 0);
  alias RsAddr : std_logic_vector(4 downto 0) is ROM_OUT(25 downto 21);
  alias RtAddr : std_logic_vector(4 downto 0) is ROM_OUT(20 downto 16);
  alias imediato: std_logic_vector(15 downto 0) is ROM_OUT(15 downto 0);
  alias MEM_ADD : std_logic_vector(31 downto 0) is ULA_OUT(31 downto 0);
  alias SelMuxFlag : std_logic is FLAG_EQ_OUT;
  
  alias write_REG: std_logic is decoder_OUT(6);
  alias SelImediatoReg : std_logic is decoder_OUT(5);
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
								saidaB      => Rt_OUT
							);	
							

	EstendeSinal :  entity work.estendeSinal  generic map (larguraDadosEntrada => 16, larguraDadosSaida => larguraDados)
		  port map( 
					  entrada => imediato,
					  saida => imediatoEstendido);
					  
	ShiftSinal :  entity work.shiftSinal  generic map (larguraDados => larguraDados)
		  port map( 
					  entrada => imediatoEstendido,
					  saida => imediatoEstendidoShiftado);
					  

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
					  seletor_MUX => (habFlagEqual and ULA_FLAG) ,
					  saida_MUX => Prox_PC);

						  					 
	MUX2 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
	  port map( 
				  entradaA_MUX => Rt_OUT,
				  entradaB_MUX =>  imediatoEstendido,
				  seletor_MUX => SelImediatoReg,
				  saida_MUX => MUX_ULA_B);
										 
											 
							
	ULA1 : entity work.ULASomaSub generic map(larguraDados => larguraDados)
				 port map (
						 entradaA => Rs_ULA_A,
						 entradaB => MUX_ULA_B,
						 saida => ULA_OUT,
						 seletor => Sel_ULA,
						 flagEqual => ULA_FLAG);	
						 
	RAM1 : entity work.memoriaRAM generic map (dataWidth => larguraDados, addrWidth => larguraDados, memoryAddrWidth => 6)
		 port map (
				 clk => CLK,
				 Endereco => MEM_ADD,
				 Dado_in => Rt_RAM,
				 Dado_out => MEM_OUT,
				 we => write_RAM,
				 re => read_RAM
				 );	
						 
	Instru_opcode <= ROM_OUT(31 downto 26);
	ULAA_OUT_AddrRAM <= ULA_OUT;
	MEM_INN <= Rt_RAM;
	MEM_OUTT <= MEM_OUT;
	RS_OUT <= Rs_ULA_A;
	RT_OUTT <= RT_OUT;
	PC_OUTT <= PC_OUT;
	Rs_End <= RsAddr;
	Rt_End <= RtAddr;
	flagEqual <= ULA_FLAG;
	
end architecture;