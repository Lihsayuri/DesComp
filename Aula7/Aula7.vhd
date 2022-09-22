library ieee;
use ieee.std_logic_1164.all;

entity Aula7 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
          larguraEnderecos : natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
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
	 MEM_ADDRESS: out std_logic_vector(5 downto 0);
	 ADD_OUT: out std_logic_vector(larguraDados - 1 downto 0)

);
  
end entity;

architecture arquitetura of Aula7 is

  signal CLK : std_logic;
  signal RA_OUT: std_logic_vector(larguraDados-1 downto 0);
  signal MEM_Read : std_logic;
  signal MEM_Write: std_logic;
  signal decoder_Habilita_OUT: std_logic_vector(7 downto 0);
  signal instruction_ROM: std_logic_vector(12 downto 0);  
  signal MEM_OUT: std_logic_vector(larguraDados - 1 downto 0);
  signal PC_OUT_processador : std_logic_vector(larguraDados downto 0);
  signal Palavra_processador : std_logic_vector(11 downto 0);

  
  alias Endereco : std_logic_vector (larguraDados downto 0) is PC_OUT_processador(larguraDados downto 0);

  alias Decoder_IN : std_logic_vector (2 downto 0) is instruction_ROM(8 downto 6);
  
  alias MEM_ADD: std_logic_vector(5 downto 0) is instruction_ROM(5 downto 0);
  alias MEM_Habilita: std_logic is decoder_Habilita_OUT(0); 
  alias MEM_IN: std_logic_vector(larguraDados - 1 downto 0) is RA_OUT;  


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
					 MEM_OUT => MEM_OUT,
					 PC_OUT => PC_OUT_processador,
					 REG_OUT => RA_OUT,
					 Palavra => Palavra_processador,
					 EQUAL_FLAG => EQUAL_FLAG,
					 MEM_Read => MEM_Read,
					 MEM_Write => MEM_Write
				); 
	
	decoderHabilita :  entity work.decoder3x8
        port map(entrada => Decoder_IN,
                 saida => decoder_Habilita_OUT);
					  
	
	RAM1 : entity work.memoriaRAM generic map (dataWidth => larguraDados, addrWidth => 6)
			 port map (
					 addr => MEM_ADD(5 downto 0),
					 we => MEM_Write,
					 re => MEM_Read,
					 habilita => MEM_Habilita,
					 dado_in => RA_OUT,
					 dado_out => MEM_OUT,
					 clk => CLK);	
					 
	PC_OUT <= PC_OUT_processador; 	 
	REGA_OUT <= RA_OUT;
	Palavra <= Palavra_processador;
	HabilitaRAM <= MEM_Habilita;
	ADD_OUT <= MEM_OUT;
	MEM_ADDRESS <= MEM_ADD; 
	LEDR(7 downto 0) <= MEM_OUT;

end architecture;