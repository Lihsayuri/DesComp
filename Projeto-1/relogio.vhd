library ieee;
use ieee.std_logic_1164.all;

entity relogio is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
          larguraEnderecos : natural := 8;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (

    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);	 
	 SW: in std_logic_vector(9 downto 0);
	 FPGA_RESET_N: in 	std_logic;
--    PC_OUT: out std_logic_vector(larguraEnderecos downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
--	 REGA_OUT : out std_logic_vector(larguraDados - 1 downto 0);
--	 Palavra : out std_logic_vector(12 downto 0);
--	 EQUAL_FLAG: out std_logic;
--	 HabilitaRAM: out std_logic;
--	 MEM_ADDRESS: out std_logic_vector(8 downto 0);
--	 ADD_OUT: out std_logic_vector(larguraDados - 1 downto 0);
	 HEX0			: out std_logic_vector	(6 downto 0);
	 HEX1			: out std_logic_vector	(6 downto 0);
    HEX2			: out std_logic_vector	(6 downto 0);
    HEX3			: out std_logic_vector	(6 downto 0);
    HEX4			: out std_logic_vector	(6 downto 0);
    HEX5			: out std_logic_vector	(6 downto 0)


);
  
end entity;

architecture arquitetura of relogio is

  signal CLK : std_logic;
  signal KEY_0_tratadoA : std_logic;
  signal KEY_0_tratadoB : std_logic;
  signal KEY_0_tratadoC : std_logic;
  signal KEY_0_tratadoF : std_logic;
  signal KEY_1_tratado : std_logic;
  signal KEY_2_tratado : std_logic;
  signal KEY_3_tratado : std_logic;
  
  signal MEM_Read : std_logic;
  signal MEM_Write: std_logic;
  signal MEM_OUT: std_logic_vector(larguraDados - 1 downto 0);
  signal MEM_ADD: std_logic_vector(8 downto 0);
  signal decoder_Habilita_OUT: std_logic_vector(7 downto 0);
  signal decoder_Posicao_OUT: std_logic_vector(7 downto 0);
  signal instruction_ROM: std_logic_vector(12 downto 0);  
  signal PC_OUT_processador : std_logic_vector(larguraDados downto 0);
  signal Palavra_processador : std_logic_vector(12 downto 0);
  signal Reg_A : std_logic_vector(larguraDados - 1 downto 0);
  signal RESET_511 : std_logic;
  signal RESET_510 : std_logic;  
  signal RESET_509 : std_logic;    
  signal RESET_508 : std_logic;  
  signal DEBOUNCER_OUT_0 : std_logic;
  signal DEBOUNCER_OUT_1 : std_logic;
  signal DEBOUNCER_OUT_2 : std_logic;
  signal DEBOUNCER_OUT_3 : std_logic;

  
  alias Endereco : std_logic_vector (larguraDados downto 0) is PC_OUT_processador(larguraDados downto 0);
  alias DecoderBloco_IN : std_logic_vector (2 downto 0) is instruction_ROM(8 downto 6);
  alias Data_Address_5 : std_logic is MEM_ADD(5);
  alias DecoderPosicao_IN : std_logic_vector (2 downto 0) is MEM_ADD(2 downto 0);

  alias MEM_Habilita: std_logic is decoder_Habilita_OUT(0); 
  
  alias MEM_IN: std_logic_vector(larguraDados - 1 downto 0) is Reg_A;  


begin


	-- Instanciando os componentes:
	-- DEPOIS VAMOS USAR A KEY 3 COMO CLK
	-- Para simular, fica mais simples tirar o edgeDetector
	gravar:  if simulacao generate	
		KEY_0_tratadoA <= KEY(0);
		KEY_1_tratado <= KEY(1);
		KEY_2_tratado <= KEY(2);
		KEY_3_tratado <= KEY(3);
		CLK <= CLOCK_50; 
	else generate
		CLK <= CLOCK_50; 
		detectorSub0: work.edgeDetector(bordaSubida)
				  port map (
							clk => CLK,
							entrada => (not KEY(0)),
							saida => KEY_0_tratadoA);
		detectorSub1: work.edgeDetector(bordaSubida)
			  port map (
						clk => CLK,
						entrada => (not KEY(1)),
						saida => KEY_1_tratado);
						
		detectorSub2: work.edgeDetector(bordaSubida)
			  port map (
						clk => CLK,
						entrada => (not KEY(2)),
						saida => KEY_2_tratado);
					
	detectorSub3: work.edgeDetector(bordaSubida)
		  port map (
					clk => CLK,
					entrada => (not KEY(3)),
					saida => KEY_3_tratado);
	end generate;
						 
						 
	-------------------- TODOS OS DADOS DE ENTRADA: ------------------------------------------------------					 
						 
	SW_0_7: entity work.buffer_3_state_8portas generic map(dataWidth => 8)
				port map(
						entrada => SW(7 downto 0),
						habilita => (MEM_Read AND NOT(Data_Address_5) AND decoder_Posicao_OUT(0) AND  decoder_Habilita_OUT(5)),
						saida => MEM_OUT
				);
				
	SW_8: entity work.buffer_3_state_8portas generic map(dataWidth => 1)
				port map(
						entrada(0) => SW(8),
						habilita => (MEM_Read AND NOT(Data_Address_5) AND decoder_Posicao_OUT(1) AND  decoder_Habilita_OUT(5)),
						saida(0) => MEM_OUT(0)
				);
				
	SW_9: entity work.buffer_3_state_8portas generic map(dataWidth => 1)
			port map(
					entrada(0) => SW(9),
					habilita => (MEM_Read AND NOT(Data_Address_5) AND decoder_Posicao_OUT(2) AND  decoder_Habilita_OUT(5)),
					saida(0) => MEM_OUT(0)
			);
			
	RESET_511 <= MEM_ADD(8) AND MEM_ADD(7) AND MEM_ADD(6) AND
					 MEM_ADD(5) AND MEM_ADD(4) AND MEM_ADD(3) AND
					 MEM_ADD(2) AND MEM_ADD(1) AND MEM_ADD(0) AND MEM_Write; 

	RESET_510 <= MEM_ADD(8) AND MEM_ADD(7) AND MEM_ADD(6) AND
					 MEM_ADD(5) AND MEM_ADD(4) AND MEM_ADD(3) AND
					 MEM_ADD(2) AND MEM_ADD(1) AND NOT(MEM_ADD(0)) AND MEM_Write; 
					 
	RESET_509 <= MEM_ADD(8) AND MEM_ADD(7) AND MEM_ADD(6) AND
					 MEM_ADD(5) AND MEM_ADD(4) AND MEM_ADD(3) AND
					 MEM_ADD(2) AND NOT(MEM_ADD(1)) AND MEM_ADD(0) AND MEM_Write; 
					 
	RESET_508 <= MEM_ADD(8) AND MEM_ADD(7) AND MEM_ADD(6) AND
					 MEM_ADD(5) AND MEM_ADD(4) AND MEM_ADD(3) AND
					 MEM_ADD(2) AND NOT(MEM_ADD(1)) AND NOT(MEM_ADD(0)) AND MEM_Write; 
					 
	FF_DEBOUNCER_0: entity work.flipflopGenerico
		port map(
			DIN 		=> '1',
			DOUT 		=> DEBOUNCER_OUT_0,
			ENABLE 	=> '1',
			CLK		=> KEY_0_tratadoF,
			RST		=> RESET_511
	);
	
	
	FF_DEBOUNCER_1: entity work.flipflopGenerico
		port map(
			DIN 		=> '1',
			DOUT 		=> DEBOUNCER_OUT_1,
			ENABLE 	=> '1',
			CLK		=> KEY_1_tratado,
			RST		=> RESET_510
	);	
	
	
	FF_DEBOUNCER_2: entity work.flipflopGenerico
		port map(
			DIN 		=> '1',
			DOUT 		=> DEBOUNCER_OUT_2,
			ENABLE 	=> '1',
			CLK		=> KEY_2_tratado,
			RST		=> RESET_509
	);	
	
	FF_DEBOUNCER_3: entity work.flipflopGenerico
		port map(
			DIN 		=> '1',
			DOUT 		=> DEBOUNCER_OUT_3,
			ENABLE 	=> '1',
			CLK		=> KEY_3_tratado,
			RST		=> RESET_508
	);	
	
					 
	
	KEY_0: entity work.buffer_3_state_8portas generic map(dataWidth => 1)
			port map(
					entrada(0) =>  DEBOUNCER_OUT_0,
					habilita => (MEM_Read AND Data_Address_5 AND decoder_Posicao_OUT(0) AND  decoder_Habilita_OUT(5)),
					saida(0) => MEM_OUT(0)
			);
			

	KEY_1: entity work.buffer_3_state_8portas generic map(dataWidth => 1)
			port map(
					entrada(0) => DEBOUNCER_OUT_1,
					habilita => (MEM_Read AND Data_Address_5 AND decoder_Posicao_OUT(1) AND  decoder_Habilita_OUT(5)),
					saida(0) => MEM_OUT(0)
			);


	KEY_2: entity work.buffer_3_state_8portas generic map(dataWidth => 1)
			port map(
					entrada(0) => DEBOUNCER_OUT_2,
					habilita => (MEM_Read AND Data_Address_5 AND decoder_Posicao_OUT(2) AND  decoder_Habilita_OUT(5)),
					saida(0) => MEM_OUT(0)
			);



	KEY_3: entity work.buffer_3_state_8portas generic map(dataWidth => 1)
			port map(
					entrada(0) => DEBOUNCER_OUT_3,
					habilita => (MEM_Read AND Data_Address_5 AND decoder_Posicao_OUT(3) AND  decoder_Habilita_OUT(5)),
					saida(0) => MEM_OUT(0)
			);	
	
	FPGA_RESET: entity work.buffer_3_state_8portas generic map(dataWidth => 1)
			port map(
					entrada(0) => FPGA_RESET_N,
					habilita	=> (MEM_Read AND Data_Address_5 AND decoder_Posicao_OUT(4) AND  decoder_Habilita_OUT(5)),
					saida(0) => MEM_OUT(0)
	);	
				
				
				
	-- Divisor generico que faz 1 segundo real ser igual a 1 segundo no relogio:						
	TIM3 : entity work.divisorGenerico generic map (divisor => 25000000)   -- divide por 50000000.
				port map(	clk 				=> CLK,
								saida_clk 		=> KEY_0_tratadoB
							);
							
	-- Divisor generico que faz 1 segundo real ser igual a 2000 segundos no relogio:		
	TIM4 : entity work.divisorGenerico generic map (divisor => 12500)   -- divide por 25000.
				port map(	clk 				=> CLK,
								saida_clk 		=> KEY_0_tratadoC
							);
							
	-- MUX 2x1 para os aumentar ou diminuir a passagem de tempo:
	MUX1 :	entity work.muxGenerico2x1  generic map (larguraDados => 1)
				port map( 	entradaA_MUX(0) 	=> KEY_0_tratadoB,
								entradaB_MUX(0) 	=> KEY_0_tratadoC,
								seletor_MUX 	=> not KEY(0),
								saida_MUX(0) 		=> KEY_0_tratadoF
							);
	

	---------------------------------- COMPONENTES DE MEMORIA, CPU E SAIDA ------------------------------
	
	
		-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
	ROM1 : entity work.memoriaROM generic map (dataWidth => 13, addrWidth =>9) -- POR QUE 4?
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
--					 EQUAL_FLAG => EQUAL_FLAG,
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
					HEX0 => HEX0,
					HEX1 => HEX1,
					HEX2 => HEX2,
					HEX3 => HEX3,
					HEX4 => HEX4,
					HEX5 => HEX5
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
					 
					 
--	PC_OUT <= PC_OUT_processador; 	 
--	Palavra <= Palavra_processador;
--	HabilitaRAM <= MEM_Habilita;
--	ADD_OUT <= MEM_OUT;
--	MEM_ADDRESS <= MEM_ADD; 
--	REGA_OUT <= Reg_A;

end architecture;