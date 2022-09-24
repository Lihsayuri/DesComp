library ieee;
use ieee.std_logic_1164.all;

entity Aula8 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
          larguraEnderecos : natural := 8;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (

    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 REGA_OUT : out std_logic_vector(larguraDados - 1 downto 0);
	 Palavra : out std_logic_vector(11 downto 0);
	 EQUAL_FLAG: out std_logic;
	 HabilitaRAM: out std_logic;
	 MEM_ADDRESS: out std_logic_vector(8 downto 0);
	 ADD_OUT: out std_logic_vector(larguraDados - 1 downto 0);
	 
	 HEX_0			: out std_logic_vector	(6 downto 0);
	 HEX_1			: out std_logic_vector	(6 downto 0);
    HEX_2			: out std_logic_vector	(6 downto 0);
    HEX_3			: out std_logic_vector	(6 downto 0);
    HEX_4			: out std_logic_vector	(6 downto 0);
    HEX_5			: out std_logic_vector	(6 downto 0)


);
  
end entity;

architecture arquitetura of Aula8 is

  signal CLK : std_logic;
  signal MEM_Read : std_logic;
  signal MEM_Write: std_logic;
  signal MEM_OUT: std_logic_vector(larguraDados - 1 downto 0);
  signal MEM_ADD: std_logic_vector(8 downto 0);
  signal decoder_Habilita_OUT: std_logic_vector(7 downto 0);
  signal decoder_Posicao_OUT: std_logic_vector(7 downto 0);
  signal instruction_ROM: std_logic_vector(12 downto 0);  
  signal PC_OUT_processador : std_logic_vector(larguraDados downto 0);
  signal Palavra_processador : std_logic_vector(11 downto 0);
  signal Reg_A : std_logic_vector(larguraDados - 1 downto 0);
  
  
  alias Endereco : std_logic_vector (larguraDados downto 0) is PC_OUT_processador(larguraDados downto 0);
  alias DecoderBloco_IN : std_logic_vector (2 downto 0) is instruction_ROM(8 downto 6);
  alias Data_Address_5 : std_logic is MEM_ADD(5);
  alias DecoderPosicao_IN : std_logic_vector (2 downto 0) is MEM_ADD(2 downto 0);

  alias MEM_Habilita: std_logic is decoder_Habilita_OUT(0); 
  
  alias MEM_IN: std_logic_vector(larguraDados - 1 downto 0) is Reg_A;  


begin


	-- Instanciando os componentes:

	-- Para simular, fica mais simples tirar o edgeDetector
	gravar:  if simulacao generate
	CLK <= KEY(0);
	else generate
	detectorSub0: work.edgeDetector(bordaSubida)
			  port map (
						clk => CLOCK_50,
						entrada => (not KEY(0)),
						saida => CLK);
	end generate;

	-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
	ROM1 : entity work.memoriaROM generic map (dataWidth => 13, addrWidth =>4) -- POR QUE 4?
				 port map (
						 Endereco => Endereco,
						 Dado => instruction_ROM);


	processador : entity work.processador 
				 port map (
					 CLK => CLK,   -- in
					 instruction => instruction_ROM,
					 DATA_IN => MEM_OUT,
					 ROM_Address => PC_OUT_processador,
					 DATA_OUT => Reg_A,
					 DATA_ADDRESS => MEM_ADD,
					 Palavra => Palavra_processador,
					 EQUAL_FLAG => EQUAL_FLAG,
					 MEM_Read => MEM_Read,
					 MEM_Write => MEM_Write
				); 
	
	decoderBloco :  entity work.decoder3x8
				port map(
					 entrada => DecoderBloco_IN,
                saida => decoder_Habilita_OUT);
					  
	decoderPosicao :  entity work.decoder3x8
				port map(
					 entrada => DecoderPosicao_IN,
					 saida => decoder_Posicao_OUT);
	
	logica_LED: entity work.logica_LED
				port map(
					 CLK => CLK,
					 endereco_LED => decoder_Posicao_OUT(2 downto 0),
					 saida_bloco4 => decoder_Habilita_OUT(4),
					 escrita => MEM_Write,
					 DATA_ADDRESS_5 => Data_Address_5,		
					 DATA_OUT => Reg_A,
					 conjunto_LED => LEDR(7 downto 0),
					 LED_endereco1 => LEDR(8),
					 LED_endereco2 => LEDR(9)
				);
	
	logica_Seven_Seg: entity work.logica_7Seg
			  port map(
					CLK => CLK, 
					DATA_OUT => Reg_A(3 downto 0),
					DATA_ADDRESS_5 => Data_Address_5,
					DecoderPosicao => decoder_Posicao_OUT,
					saida_bloco4 => decoder_Habilita_OUT(4),
					escrita => MEM_Write,
					HEX0 => HEX_0,
					HEX1 => HEX_1,
					HEX2 => HEX_2,
					HEX3 => HEX_3,
					HEX4 => HEX_4,
					HEX5 => HEX_5
	);
	
			  
	
	RAM1 : entity work.memoriaRAM generic map (dataWidth => larguraDados, addrWidth => 6)
			 port map (
					 addr => MEM_ADD(5 downto 0),
					 we => MEM_Write,
					 re => MEM_Read,
					 habilita => MEM_Habilita,
					 dado_in => MEM_IN,
					 dado_out => MEM_OUT,
					 clk => CLK);	
					 
					 
	PC_OUT <= PC_OUT_processador; 	 
	Palavra <= Palavra_processador;
	HabilitaRAM <= MEM_Habilita;
	ADD_OUT <= MEM_OUT;
	MEM_ADDRESS <= MEM_ADD; 
	REGA_OUT <= Reg_A;

end architecture;