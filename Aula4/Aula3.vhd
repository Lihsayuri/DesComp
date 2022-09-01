library ieee;
use ieee.std_logic_1164.all;

entity Aula3 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
          larguraEnderecos : natural := 8;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
    PC_OUT: out std_logic_vector(larguraEnderecos - 1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 REG_OUT: out std_logic_vector(larguraDados -1 downto 0)
	 
  );
end entity;


architecture arquitetura of Aula3 is

-- Faltam alguns sinais:
  signal proxPC : std_logic_vector (larguraDados-1 downto 0);
  signal Endereco : std_logic_vector (larguraDados-1 downto 0);

  signal CLK : std_logic;
  
  signal comandosEncoder : std_logic_vector (12 downto 0); 
  -- opcode(12 downto 9) endereco(8 downto 0) valor(7 downto 0)


  
  signal MUX_ULA_B : std_logic_vector (larguraDados-1 downto 0); -- MUX_OUT
  signal saidaDados_MUX_0 : std_logic_vector (larguraDados-1 downto 0); -- MUX_A
  signal endereco_MUX_1: std_logic_vector (larguraDados-1 downto 0); -- MUX_B
  signal SelMUX : std_logic;


  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0); -- REGA_IN/ ALU_OUT
  signal Habilita_A : std_logic; --REG_ENABLE
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0); -- REGA_OUT
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  
  
  signal Sinais_Controle : std_logic_vector (3 downto 0);
  signal ler : std_logic;
  signal escrever : std_logic;

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
	
	-- O port map completo do Program Counter.
	PC : entity work.registradorGenerico generic map (larguraDados => larguraEnderecos)
				 port map (
							DIN => proxPC,
							DOUT => Endereco,
							ENABLE => '1',
							CLK => CLK,
							RST => '0');

	incrementaPC :  entity work.somaConstante generic map (larguraDados => larguraDados, constante => 1)
			  port map( 
						entrada => Endereco,
						saida => proxPC);

	-- O port map completo do MUX.
	MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
			  port map( 
						  entradaA_MUX => saidaDados_MUX_0,
						  entradaB_MUX =>  endereco_MUX_1 (7 downto 0),
						  seletor_MUX => SelMUX,
						  saida_MUX => MUX_ULA_B);
						  
	-- O port map completo da ULA:
	ULA1 : entity work.ULASomaSub generic map(larguraDados => larguraDados)
				 port map (
						 entradaA => REG1_ULA_A,
						 entradaB => MUX_ULA_B,
						 saida => Saida_ULA,
						 seletor => Operacao_ULA);	 

	-- O port map completo do Acumulador.
	REGA : entity work.registradorGenerico generic map (larguraDados => larguraDados)
				 port map (
						 DIN => Saida_ULA,
						 DOUT => REG1_ULA_A,
						 ENABLE => Habilita_A,
						 CLK => CLK,
						 RST => '0');

			  
				 
	-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
	ROM1 : entity work.memoriaROM generic map (dataWidth => 13, addrWidth =>4) -- POR QUE 4?
				 port map (
						 Endereco => Endereco,
						 Dado => comandosEncoder);

	decoderInstru1 : entity work.decoderInstru
			  port map( 
					  opcode => comandosEncoder (12 downto 9),
					  ler => ler,
					  escrever => escrever, 
					  saida => Sinais_Controle);		
						  
	RAM1 : entity work.memoriaRAM generic map (dataWidth => larguraDados, addrWidth => larguraEnderecos)
				 port map (
						 addr => comandosEncoder(larguraDados-1 downto 0),
						 we => escrever,
						 re => ler,
						 habilita => comandosEncoder(8),
						 dado_in => REG1_ULA_A,
						 dado_out => saidaDados_MUX_0,
						 clk => CLK);					 

	endereco_MUX_1 <= comandosEncoder(larguraDados - 1 downto 0);	
	selMUX <= Sinais_Controle(3);
	Habilita_A <= Sinais_Controle(2);
	Operacao_ULA <= Sinais_Controle(1 downto 0);


	LEDR(7 downto 0) <= REG1_ULA_A (7 downto 0);
	PC_OUT <= Endereco;

end architecture;