library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 15;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (8 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI : std_logic_vector(3 downto 0) := "0100";
  constant STA : std_logic_vector(3 downto 0) := "0101";
  constant JMP : std_logic_vector(3 downto 0) := "0110";
  constant JEQ : std_logic_vector(3 downto 0) := "0111";
  constant CEQ : std_logic_vector(3 downto 0) := "1000";
  constant JSR : std_logic_vector(3 downto 0) := "1001";
  constant RET : std_logic_vector(3 downto 0) := "1010";
  constant ANDI : std_logic_vector(3 downto 0) := "1011";
  
  constant R0:    std_logic_vector (1 DOWNTO 0)	:= "00";
  constant R1:    std_logic_vector (1 DOWNTO 0)	:= "01";
  constant R2:    std_logic_vector (1 DOWNTO 0)	:= "10";
  constant R3:    std_logic_vector (1 DOWNTO 0)	:= "11";

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
					-- Inicializa os endereços:
					
			-- Configuração do SETUP
			
				tmp(0) := LDI  &  R0  &  '0'  &  x"00";	-- LDI $0, R0      	# Inicializando algumas variáveis importantes : R0 = 0
				tmp(1) := LDI  &  R1  &  '0'  &  x"01";	-- LDI $1, R1      	# R1 = 1
				tmp(2) := LDI  &  R2  &  '0'  &  x"06";	-- LDI $6, R2      	# R2 = 6
				tmp(3) := LDI  &  R3  &  '0'  &  x"0a";	-- LDI $10, R3     	# R3 = 10
				tmp(4) := STA  &  R0  &  '1'  &  x"00";	-- STA @256, R0    	# Armazena o valor do R0 no LEDR0 ~ LEDR7
				tmp(5) := STA  &  R0  &  '1'  &  x"01";	-- STA @257, R0    	# Armazena o valor do R0 no LEDR8
				tmp(6) := STA  &  R0  &  '1'  &  x"02";	-- STA @258, R0    	# Armazena o valor do R0 no LEDR9
				tmp(7) := STA  &  R0  &  '1'  &  x"20";	-- STA @288, R0    	# Armazena o valor do R0 no HEX0
				tmp(8) := STA  &  R0  &  '1'  &  x"21";	-- STA @289, R0    	# Armazena o valor do R0 no HEX1
				tmp(9) := STA  &  R0  &  '1'  &  x"22";	-- STA @290, R0    	# Armazena o valor do R0 no HEX2
				tmp(10) := STA  &  R0  &  '1'  &  x"23";	-- STA @291, R0    	# Armazena o valor do R0 no HEX3
				tmp(11) := STA  &  R0  &  '1'  &  x"24";	-- STA @292, R0    	# Armazena o valor do R0 no HEX4
				tmp(12) := STA  &  R0  &  '1'  &  x"25";	-- STA @293, R0    	# Armazena o valor do R0 no HEX5
				tmp(13) := STA  &  R0  &  '0'  &  x"00";	-- STA @0, R0      	# Armazena o valor do R0 em MEM[0] (unidades)
				tmp(14) := STA  &  R0  &  '0'  &  x"01";	-- STA @1, R0      	# Armazena o valor do R0 em MEM[1] (dezenas)
				tmp(15) := STA  &  R0  &  '0'  &  x"02";	-- STA @2, R0      	# Armazena o valor do R0 em MEM[2] (centenas)
				tmp(16) := STA  &  R0  &  '0'  &  x"03";	-- STA @3, R0      	# Armazena o valor do R0 em MEM[3] (milhar)
				tmp(17) := STA  &  R0  &  '0'  &  x"04";	-- STA @4, R0      	# Armazena o valor do R0 em MEM[4] (dezenas de milhar)
				tmp(18) := STA  &  R0  &  '0'  &  x"05";	-- STA @5, R0      	# Armazena o valor do R0 em MEM[5] (centenas de milhar)
				tmp(19) := STA  &  R0  &  '0'  &  x"06";	-- STA @6, R0      	# Armazena o valor do R0 em MEM[6] (flag de inibir contagem)
				tmp(20) := STA  &  R0  &  '0'  &  x"07";	-- STA @7, R0      	# Armazena o valor do R0 em MEM[7] (variável 0 para comparações)
				tmp(21) := STA  &  R1  &  '0'  &  x"08";	-- STA @8, R1      	# Armazena o valor do R1 em MEM[8] (variável 1 para incremento)
				tmp(22) := STA  &  R3  &  '0'  &  x"09";	-- STA @9, R3      	# Armazena o valor do R3 em MEM[9] (variável 10 para comparações)
				tmp(23) := STA  &  R2  &  '0'  &  x"0a";	-- STA @10, R2     	# Armazena o valor do R2 em MEM[10] (valor limite para UNIDADE)
				tmp(24) := STA  &  R2  &  '0'  &  x"0b";	-- STA @11, R2     	# Armazena o valor do R2 em MEM[11] (valor limite para DEZENA)
				tmp(25) := STA  &  R2  &  '0'  &  x"0c";	-- STA @12, R2     	# Armazena o valor do R2 em MEM[12] (valor limite para CENTENA)
				tmp(26) := STA  &  R2  &  '0'  &  x"0d";	-- STA @13, R2     	# Armazena o valor do R2 em MEM[13] (valor limite para MILHAR)
				tmp(27) := STA  &  R2  &  '0'  &  x"0e";	-- STA @14, R2     	# Armazena o valor do R2 em MEM[14] (valor limite para DEZENA DE MILHAR)
				tmp(28) := STA  &  R2  &  '0'  &  x"0f";	-- STA @15, R2     	# Armazena o valor do R2 em MEM[15] (valor limite para CENTENA DE MILHAR )
				tmp(29) := STA  &  R2  &  '0'  &  x"10";	-- STA @16, R2     	# Armazena o valor do R2 em MEM[16] (constante 6)
				tmp(30) := LDI  &  R0  &  '0'  &  x"02";	-- LDI $2, R0      	# Carrega 2 no registrador R0
				tmp(31) := STA  &  R0  &  '0'  &  x"11";	-- STA @17, R0     	# Armazena o valor do R0 em MEM[17] (constante 2)
				tmp(32) := LDI  &  R0  &  '0'  &  x"04";	-- LDI $4, R0      	# Carrega 4 no registrador R0
				tmp(33) := STA  &  R0  &  '0'  &  x"12";	-- STA @18, R0     	# Armazena o valor do R0 em MEM[18] (constante 4)
				tmp(34) := NOP  &  R0  &  '0'  &  x"00";	-- NOP              	# LOOP PRINCIPAL
				tmp(35) := LDA  &  R0  &  '0'  &  x"06";	-- LDA @6, R0       	# Carregando o R0 com o valor da flag de inibir
				tmp(36) := CEQ  &  R0  &  '0'  &  x"08";	-- CEQ @8, R0       	# Compara com 1 para ver se a flag está ativada
				tmp(37) := JEQ  &  R0  &  '0'  &  x"2c";	-- JEQ @LEITURA_KEY1 	# Se for igual, pula pra leitura de KEY1
				tmp(38) := LDA  &  R0  &  '1'  &  x"60";	-- LDA @352, R0     	# Carrega o R0 com a leitura do botão KEY0
				tmp(39) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0      	# Aplica máscara na leitura do botão
				tmp(40) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0       	# Compara com 0
				tmp(41) := JEQ  &  R0  &  '0'  &  x"2c";	-- JEQ @LEITURA_KEY1 	# Se for 0, vai ler a proxima chave
				tmp(42) := JSR  &  R0  &  '0'  &  x"3b";	-- JSR @INCREMENTO  	# Se for 1, vai pra sub-rotina de incremento
				tmp(43) := NOP  &  R0  &  '0'  &  x"00";	-- NOP              	# Aqui é onde o RET volta
				tmp(44) := LDA  &  R1  &  '1'  &  x"61";	-- LDA @353, R1     	# Carrega o R1 com a leitura do botão KEY1
				tmp(45) := ANDI  &  R1  &  '0'  &  x"01";	-- ANDI @1, R1      	# Aplica máscara na leitura do botão
				tmp(46) := CEQ  &  R1  &  '0'  &  x"07";	-- CEQ @7, R1       	# Compara com 0
				tmp(47) := JEQ  &  R0  &  '0'  &  x"32";	-- JEQ @CHAMA_CONFERE_LIMITE 	# Se for 0, vai conferir o limite 
				tmp(48) := JSR  &  R0  &  '0'  &  x"7b";	-- JSR @CONFIG_LIMITE   	# Se for 1, vai pra sub-rotina de configuração de limite
				tmp(49) := NOP  &  R0  &  '0'  &  x"00";	-- NOP              	# Aqui é onde o RET volta
				tmp(50) := JSR  &  R0  &  '0'  &  x"bb";	-- JSR @CONFERE_LIMITE  	# Chama a sub-rotina para verificar o limite
				tmp(51) := NOP  &  R0  &  '0'  &  x"00";	-- NOP              	# Aqui é onde o RET volta
				tmp(52) := LDA  &  R3  &  '1'  &  x"64";	-- LDA @356, R3     	# Carrega o R3 com a leitura do botão FPGA_RESET 
				tmp(53) := ANDI  &  R3  &  '0'  &  x"01";	-- ANDI @1, R3      	# Aplica máscara na leitura do botão
				tmp(54) := CEQ  &  R3  &  '0'  &  x"08";	-- CEQ @8, R3       	# Compara com 1
				tmp(55) := JEQ  &  R0  &  '0'  &  x"39";	-- JEQ @57          	# Se for 1, vai pra subrotina pra reiniciar a contagem
				tmp(56) := JSR  &  R0  &  '0'  &  x"d8";	-- JSR @REINICIAR_CONTAGEM  	# Chama sub-rotina de reiniciar a contagem
				tmp(57) := JSR  &  R0  &  '0'  &  x"e3";	-- JSR @ATUALIZA_SEVEN_SEG  	# Chama sub-rotina de atualizar o display de sete segmentos
				tmp(58) := JMP  &  R0  &  '0'  &  x"22";	-- JMP @LOOP_PRINCIPAL      	# Volta para o início do loop principal
				tmp(59) := STA  &  R0  &  '1'  &  x"ff";	-- STA @511, R0     	# Limpa a leitura do botão KEY0
				tmp(60) := LDA  &  R1  &  '0'  &  x"06";	-- LDA @6, R1       	# Carrega o valor da flag de inibir contagem no R1
				tmp(61) := CEQ  &  R1  &  '0'  &  x"08";	-- CEQ @8, R1       	# Compara com 1 para ver se a flag está ativada
				tmp(62) := JEQ  &  R0  &  '0'  &  x"7d";	-- JEQ @125         	#Se for 1, não incrementa e vai pro RET
				tmp(63) := LDA  &  R0  &  '0'  &  x"00";	-- LDA @0, R0       	# Carrega o valor das unidades em R0
				tmp(64) := SOMA  &  R0  &  '0'  &  x"08";	-- SOMA @8, R0      	# Soma com 1 e guarda resultado em R0
				tmp(65) := CEQ  &  R0  &  '0'  &  x"09";	-- CEQ @9, R0       	# Compara com 10
				tmp(66) := JEQ  &  R0  &  '0'  &  x"45";	-- JEQ @INC_DEZENA  	# Se for 10, vai para as dezenas
				tmp(67) := STA  &  R0  &  '0'  &  x"00";	-- STA @0, R0       	# Se não, armazena o valor das unidades
				tmp(68) := RET  &  R0  &  '0'  &  x"00";	-- RET              	# E retorna
				tmp(69) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	# Carrega 0 no R0
				tmp(70) := STA  &  R0  &  '0'  &  x"00";	-- STA @0, R0      	# Carrega 0 nas unidades
				tmp(71) := LDA  &  R0  &  '0'  &  x"01";	-- LDA @1, R0      	# Carrega o valor das dezenas em R0
				tmp(72) := SOMA  &  R0  &  '0'  &  x"08";	-- SOMA @8, R0     	# Soma com 1 e guarda resultado em R0
				tmp(73) := CEQ  &  R0  &  '0'  &  x"10";	-- CEQ @16, R0      	# Compara com 6
				tmp(74) := JEQ  &  R0  &  '0'  &  x"4d";	-- JEQ @INC_CENTENA 	# Se for 10, vai para as centenas
				tmp(75) := STA  &  R0  &  '0'  &  x"01";	-- STA @1, R0      	# Se não, armazena o valor das dezenas
				tmp(76) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# E retorna
				tmp(77) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	#Carrega 0 no REG
				tmp(78) := STA  &  R0  &  '0'  &  x"01";	-- STA @1, R0      	# Carrega 0 nas dezenas
				tmp(79) := LDA  &  R0  &  '0'  &  x"02";	-- LDA @2, R0      	# Carrega o valor das centenas em R0
				tmp(80) := SOMA  &  R0  &  '0'  &  x"08";	-- SOMA @8, R0     	# Soma com 1 e guarda resultado em R0
				tmp(81) := CEQ  &  R0  &  '0'  &  x"09";	-- CEQ @9, R0      	# Compara com 10
				tmp(82) := JEQ  &  R0  &  '0'  &  x"55";	-- JEQ @INC_MILHAR 	# Se for 10, vai para o milhar
				tmp(83) := STA  &  R0  &  '0'  &  x"02";	-- STA @2, R0      	# Se não, armazena o valor das centenas
				tmp(84) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# E retorna
				tmp(85) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	# Carrega 0 no R0
				tmp(86) := STA  &  R0  &  '0'  &  x"02";	-- STA @2, R0      	# Carrega 0 nas centenas
				tmp(87) := LDA  &  R0  &  '0'  &  x"03";	-- LDA @3, R0      	# Carrega o valor dos milhares em R0
				tmp(88) := SOMA  &  R0  &  '0'  &  x"08";	-- SOMA @8, R0     	# Soma com 1 e guarda resultado em R0
				tmp(89) := CEQ  &  R0  &  '0'  &  x"10";	-- CEQ @16, R0      	# Compara com 6
				tmp(90) := JEQ  &  R0  &  '0'  &  x"5d";	-- JEQ @INC_DEZMILHAR  	# Se for 10, vai para as dezenas de milhar
				tmp(91) := STA  &  R0  &  '0'  &  x"03";	-- STA @3, R0      	# Se não, armazena o valor dos milhares
				tmp(92) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# E retorna
				tmp(93) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	# Carrega 0 no R0
				tmp(94) := STA  &  R0  &  '0'  &  x"03";	-- STA @3, R0      	# Carrega 0 no milhar
				tmp(95) := LDA  &  R0  &  '0'  &  x"04";	-- LDA @4, R0      	# Carrega o valor das dezenas de milhar
				tmp(96) := SOMA  &  R0  &  '0'  &  x"08";	-- SOMA @8, R0     	# Soma com 1 e guarda resultado em R0
				tmp(97) := CEQ  &  R0  &  '0'  &  x"12";	-- CEQ @18, R0      	# Compara com 4
				tmp(98) := JEQ  &  R0  &  '0'  &  x"65";	-- JEQ @INC_CENTMILHAR 	# Se for 4, vai para a centena de milhar
				tmp(99) := STA  &  R0  &  '0'  &  x"04";	-- STA @4, R0      	# Armazena o valor das dezena de milhar
				tmp(100) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# E retorna
				tmp(101) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	# Carrega 0 no R0
				tmp(102) := STA  &  R0  &  '0'  &  x"04";	-- STA @4, R0      	# Carrega 0 nas dezenas de milhar
				tmp(103) := LDA  &  R0  &  '0'  &  x"05";	-- LDA @5, R0      	#Carrega o valor das centenas de milhar
				tmp(104) := SOMA  &  R0  &  '0'  &  x"08";	-- SOMA @8, R0     	# Soma com 1 e guarda resultado em R0
				tmp(105) := CEQ  &  R0  &  '0'  &  x"11";	-- CEQ @17, R0      	# Compara com 2
				tmp(106) := JEQ  &  R0  &  '0'  &  x"6d";	-- JEQ @OVERFLOW   	# Se for 2, vai para o overflow
				tmp(107) := STA  &  R0  &  '0'  &  x"05";	-- STA @5, R0      	# Se não, armazena o valor das centena de milhar
				tmp(108) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# E retorna
				tmp(109) := LDA  &  R2  &  '0'  &  x"08";	-- LDA @8, R2      	# Carrega o valor 1 em R2
				tmp(110) := STA  &  R2  &  '0'  &  x"06";	-- STA @6, R2      	# Armazena o valor 1 na flag de inibir contagem
				tmp(111) := STA  &  R2  &  '1'  &  x"02";	-- STA @258, R2    	# Armazena o valor 1 no LEDR9 indicando OVERFLOW
				tmp(112) := LDI  &  R3  &  '0'  &  x"09";	-- LDI $9, R3      	# Não deixar somar, volta pro máximo permitido - Carrega 9 em R3
				tmp(113) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	# Armazena o valor 0 em R0
				tmp(114) := LDA  &  R1  &  '0'  &  x"11";	-- LDA @17, R1     	# Armazena o valor 2 em R1
				tmp(115) := LDA  &  R2  &  '0'  &  x"12";	-- LDA @18, R2     	# Armazena o valor 4 em R2 
				tmp(116) := STA  &  R0  &  '0'  &  x"00";	-- STA @0, R0      	#Guarda 9 nas unidades
				tmp(117) := STA  &  R0  &  '0'  &  x"01";	-- STA @1, R0      	#Guarda 9 nas dezenas
				tmp(118) := STA  &  R0  &  '0'  &  x"02";	-- STA @2, R0      	#Guarda 9 nas centenas
				tmp(119) := STA  &  R0  &  '0'  &  x"03";	-- STA @3, R0      	#Guarda 9 nos milhares
				tmp(120) := STA  &  R2  &  '0'  &  x"04";	-- STA @4, R2      	#Guarda 9 nas dezenas de milhar
				tmp(121) := STA  &  R1  &  '0'  &  x"05";	-- STA @5, R1      	#Guarda 9 nas centenas de milhar
				tmp(122) := RET  &  R0  &  '0'  &  x"00";	-- RET
				tmp(123) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1
				tmp(124) := STA  &  R3  &  '0'  &  x"06";	-- STA @6, R3      	# Carrega a flag de inibir contagem em R3
				tmp(125) := CEQ  &  R3  &  '0'  &  x"07";	-- CEQ @7, R3      	# Compara a flag de inibir com 0
				tmp(126) := JEQ  &  R0  &  '0'  &  x"82";	-- JEQ @LIM_UNIDADE 	# Se for 0, então começa a configurar
				tmp(127) := LDA  &  R3  &  '0'  &  x"07";	-- LDA @7, R3      	# Se for 1, tem que voltar para 0
				tmp(128) := STA  &  R3  &  '0'  &  x"06";	-- STA @6, R3      	# Guardo 0 na flag de inibir contagem
				tmp(129) := STA  &  R3  &  '1'  &  x"01";	-- STA @257, R3    	# Guardo 0 no LED8
				tmp(130) := LDA  &  R1  &  '0'  &  x"08";	-- LDA @8, R1      	# Carrega 1 em R1
				tmp(131) := STA  &  R1  &  '1'  &  x"00";	-- STA @256, R1    	# Liga o LED 0 ~ 7 dizendo que está pronto pra ler a chave das unidades
				tmp(132) := LDA  &  R0  &  '1'  &  x"61";	-- LDA @353, R0    	# Guarda a leitura de KEY1 em R0
				tmp(133) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0     	# Depois de fazer a leitura do botão aplica a máscara
				tmp(134) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	#Compara com o valor 0
				tmp(135) := LDA  &  R2  &  '1'  &  x"40";	-- LDA @320, R2    	# Lê as chaves e salva o valor delas no R2
				tmp(136) := JEQ  &  R0  &  '0'  &  x"82";	-- JEQ @LIM_UNIDADE 	# Caso botão não tenha sido apertado volta novamente para ler KEY1
				tmp(137) := STA  &  R2  &  '0'  &  x"0a";	-- STA @10, R2     	# Guarda o valor limite nas unidades
				tmp(138) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1
				tmp(139) := LDI  &  R1  &  '0'  &  x"02";	-- LDI $2, R1      	# Carrega 2 em R1
				tmp(140) := STA  &  R1  &  '1'  &  x"00";	-- STA @256, R1    	# Liga o LED 0 ~ 7 dizendo que está pronto pra ler a chave das dezenas
				tmp(141) := LDA  &  R0  &  '1'  &  x"61";	-- LDA @353, R0    	# Guarda a leitura de KEY1 em R0
				tmp(142) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0     	# Depois de fazer a leitura do botão aplica a máscara
				tmp(143) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	#Compara com o valor 0
				tmp(144) := LDA  &  R2  &  '1'  &  x"40";	-- LDA @320, R2    	# Lê de novo o valor das chaves e salva no R2
				tmp(145) := JEQ  &  R0  &  '0'  &  x"8b";	-- JEQ @LIM_DEZENA 	# Caso botão não tenha sido apertado volta novamente para ler KEY1
				tmp(146) := STA  &  R2  &  '0'  &  x"0b";	-- STA @11, R2     	# Guarda o valor limite nas dezenas
				tmp(147) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1
				tmp(148) := LDI  &  R1  &  '0'  &  x"04";	-- LDI $4, R1      	# Carrega 4 em R1
				tmp(149) := STA  &  R1  &  '1'  &  x"00";	-- STA @256, R1    	# Liga o LED 0 ~ 7 dizendo que está pronto pra ler a chave das centenas
				tmp(150) := LDA  &  R0  &  '1'  &  x"61";	-- LDA @353, R0    	# Guarda a leitura de KEY1
				tmp(151) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0     	# Depois de fazer a leitura do botão aplica a máscara
				tmp(152) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	# Compara com o valor 0
				tmp(153) := LDA  &  R2  &  '1'  &  x"40";	-- LDA @320, R2    	# Lê de novo o valor das chaves e salva no R2
				tmp(154) := JEQ  &  R0  &  '0'  &  x"94";	-- JEQ @LIM_CENTENA  	# Caso botão não tenha sido apertado volta novamente para ler KEY1
				tmp(155) := STA  &  R2  &  '0'  &  x"0c";	-- STA @12, R2     	# Guarda o valor limite nas centenas
				tmp(156) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1
				tmp(157) := LDI  &  R1  &  '0'  &  x"08";	-- LDI $8, R1      	# Carrega 8 em R1
				tmp(158) := STA  &  R1  &  '1'  &  x"00";	-- STA @256, R1    	# Liga o LED 0 ~ 7 dizendo que está pronto pra ler a chave do milhar
				tmp(159) := LDA  &  R0  &  '1'  &  x"61";	-- LDA @353, R0    	# Guarda a leitura de KEY1
				tmp(160) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0     	# Depois de fazer a leitura do botão aplica a máscara
				tmp(161) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	# Compara com o valor 0
				tmp(162) := LDA  &  R2  &  '1'  &  x"40";	-- LDA @320, R2    	# Lê de novo o valor das chaves e salva no R2
				tmp(163) := JEQ  &  R0  &  '0'  &  x"9d";	-- JEQ @LIM_MILHAR  	# Caso botão não tenha sido apertado volta novamente para ler KEY1
				tmp(164) := STA  &  R2  &  '0'  &  x"0d";	-- STA @13, R2     	# Guarda o valor limite nos milhares
				tmp(165) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1 
				tmp(166) := LDI  &  R1  &  '0'  &  x"10";	-- LDI $16, R1     	# Carrega 16 em R1
				tmp(167) := STA  &  R1  &  '1'  &  x"00";	-- STA @256, R1    	# Liga o LED 0 ~ 7 dizendo que está pronto pra ler a chave das dezenas de milhar
				tmp(168) := LDA  &  R0  &  '1'  &  x"61";	-- LDA @353, R0    	# Guarda a leitura de KEY1
				tmp(169) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0     	# Depois de fazer a leitura do botão aplica a máscara
				tmp(170) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	# Compara com o valor 0
				tmp(171) := LDA  &  R2  &  '1'  &  x"40";	-- LDA @320, R2    	# Lê de novo o valor das chaves e salva no R2
				tmp(172) := JEQ  &  R0  &  '0'  &  x"a6";	-- JEQ @LIM_DEZMILHAR 	# Caso botão não tenha sido apertado volta novamente para ler KEY1
				tmp(173) := STA  &  R2  &  '0'  &  x"0e";	-- STA @14, R2     	# Guarda o valor limite nas dezenas de milhar
				tmp(174) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1
				tmp(175) := LDI  &  R1  &  '0'  &  x"20";	-- LDI $32, R1     	# Carrega 32 em R0
				tmp(176) := STA  &  R1  &  '1'  &  x"00";	-- STA @256, R1    	# Liga o LED 0 ~ 7 dizendo que está pronto pra ler a chave das unidades
				tmp(177) := LDA  &  R0  &  '1'  &  x"61";	-- LDA @353, R0    	# Guarda a leitura de KEY1
				tmp(178) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0     	# Depois de fazer a leitura do botão aplica a máscara
				tmp(179) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	#Compara com o valor 0
				tmp(180) := LDA  &  R2  &  '1'  &  x"40";	-- LDA @320, R2    	# Lê de novo o valor das chaves e salva no R2
				tmp(181) := JEQ  &  R0  &  '0'  &  x"af";	-- JEQ @LIM_CENTMILHAR 	# Caso botão não tenha sido apertado volta novamente para ler KEY1
				tmp(182) := STA  &  R2  &  '0'  &  x"0f";	-- STA @15, R2     	# Guarda o valor limite nas centenas de milhar
				tmp(183) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1
				tmp(184) := LDA  &  R3  &  '0'  &  x"07";	-- LDA @7, R3      	# Carrega o 0 em R3
				tmp(185) := STA  &  R3  &  '1'  &  x"00";	-- STA @256, R3    	# Desliga os LEDS
				tmp(186) := RET  &  R0  &  '0'  &  x"00";	-- RET
				tmp(187) := NOP  &  R0  &  '0'  &  x"00";	-- NOP             	# Aqui começa a conferência dos limites
				tmp(188) := LDA  &  R0  &  '0'  &  x"00";	-- LDA @0, R0      	# Carrega o valor das unidades em R0
				tmp(189) := CEQ  &  R0  &  '0'  &  x"0a";	-- CEQ @10, R0     	# Compara com o limite de unidades
				tmp(190) := JEQ  &  R0  &  '0'  &  x"c0";	-- JEQ @CONFERE_LIMITE_DEZENA 	# Se for 0, vai para a dezena
				tmp(191) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# Caso o contrário já retorna
				tmp(192) := LDA  &  R1  &  '0'  &  x"01";	-- LDA @1, R1      	# Carrega o valor das dezenas em R1
				tmp(193) := CEQ  &  R1  &  '0'  &  x"0b";	-- CEQ @11, R1     	# Compara com o limite de dezenas
				tmp(194) := JEQ  &  R0  &  '0'  &  x"c4";	-- JEQ @CONFERE_LIMITE_CENTENA 	# Se for 0, vai para a centena
				tmp(195) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# Caso o contrário já retorna
				tmp(196) := LDA  &  R2  &  '0'  &  x"02";	-- LDA @2, R2      	#Carrega o valor das centenas em R2
				tmp(197) := CEQ  &  R2  &  '0'  &  x"0c";	-- CEQ @12, R2     	#Compara com o limite das centenas
				tmp(198) := JEQ  &  R0  &  '0'  &  x"c8";	-- JEQ @CONFERE_LIMITE_MILHAR 	# Se for 0, vai para os milhares
				tmp(199) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# Caso o contrário já retorna
				tmp(200) := LDA  &  R3  &  '0'  &  x"03";	-- LDA @3, R3      	#Carrega o valor dos milhares em R3
				tmp(201) := CEQ  &  R3  &  '0'  &  x"0d";	-- CEQ @13, R3     	#Compara com o limite dos milhares
				tmp(202) := JEQ  &  R0  &  '0'  &  x"cc";	-- JEQ @CONFERE_LIMITE_DEZMILHAR 	# Se for 0, vai para as dezenas de milhr
				tmp(203) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# Caso o contrário já retorna
				tmp(204) := LDA  &  R0  &  '0'  &  x"04";	-- LDA @4, R0      	#Carrega o valor das dezenas de milhar em R0
				tmp(205) := CEQ  &  R0  &  '0'  &  x"0e";	-- CEQ @14, R0     	#Compara com o limite das dezenas de milhar
				tmp(206) := JEQ  &  R0  &  '0'  &  x"d0";	-- JEQ @CONFERE_LIMITE_CENTMILHAR 	# Se for 0, vai para as centenas de milhar
				tmp(207) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# Caso o contrário já retorna
				tmp(208) := LDA  &  R1  &  '0'  &  x"05";	-- LDA @5, R1      	#Carrega as dezenas de centenas de milhar em R1
				tmp(209) := CEQ  &  R1  &  '0'  &  x"0f";	-- CEQ @15, R1     	#Compara com o limite das centenas de milhar
				tmp(210) := JEQ  &  R0  &  '0'  &  x"d4";	-- JEQ @ATIVAR_FLAG_INIBIR_CONTAGEM 	# Se for 0, vai ativar a flag de inibir a contagem
				tmp(211) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# Caso o contrário já retorna
				tmp(212) := LDA  &  R2  &  '0'  &  x"08";	-- LDA @8, R2      	# Carrega o valor 1
				tmp(213) := STA  &  R2  &  '1'  &  x"01";	-- STA @257, R2    	# Armazena o valor 1 no LED8
				tmp(214) := STA  &  R2  &  '0'  &  x"06";	-- STA @6, R2      	# Armazena o valor 1 na flag de inibir contagem
				tmp(215) := RET  &  R0  &  '0'  &  x"00";	-- RET
				tmp(216) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	# Carrega o acumulador com o valor 0
				tmp(217) := STA  &  R0  &  '0'  &  x"00";	-- STA @0, R0      	#  Armazena o valor 0 nas unidades
				tmp(218) := STA  &  R0  &  '0'  &  x"01";	-- STA @1, R0      	#  Armazena o valor 0 nas dezenas
				tmp(219) := STA  &  R0  &  '0'  &  x"02";	-- STA @2, R0      	#  Armazena o valor 0 nas centenas
				tmp(220) := STA  &  R0  &  '0'  &  x"03";	-- STA @3, R0      	#  Armazena o valor 0 nos milhares
				tmp(221) := STA  &  R0  &  '0'  &  x"04";	-- STA @4, R0      	#  Armazena o valor 0 nas dezenas de milhar
				tmp(222) := STA  &  R0  &  '0'  &  x"05";	-- STA @5, R0      	#  Armazena o valor 0 nas centenas de milhar
				tmp(223) := STA  &  R0  &  '0'  &  x"06";	-- STA @6, R0      	# Armazena o valor 0 na flag de inibir contagem
				tmp(224) := STA  &  R0  &  '1'  &  x"01";	-- STA @257, R0    	# Armazena o valor 0 no LED8
				tmp(225) := STA  &  R0  &  '1'  &  x"02";	-- STA @258, R0    	# Armazena o valor 0 no LED9
				tmp(226) := RET  &  R0  &  '0'  &  x"00";	-- RET
				tmp(227) := LDA  &  R0  &  '0'  &  x"00";	-- LDA @0, R0      	# Carrega o valor das unidades em R0
				tmp(228) := STA  &  R0  &  '1'  &  x"20";	-- STA @288, R0    	# Guarda o valor das unidades no HEX0
				tmp(229) := LDA  &  R0  &  '0'  &  x"01";	-- LDA @1, R0      	# Carrega o valor das dezenas em R0
				tmp(230) := STA  &  R0  &  '1'  &  x"21";	-- STA @289, R0    	# Guarda o valor das dezenas no HEX1 
				tmp(231) := LDA  &  R0  &  '0'  &  x"02";	-- LDA @2, R0      	# Carrega o valor das centenas em R0
				tmp(232) := STA  &  R0  &  '1'  &  x"22";	-- STA @290, R0    	# Guarda o valor das centenas no HEX2
				tmp(233) := LDA  &  R0  &  '0'  &  x"03";	-- LDA @3, R0      	# Carrega o valor dos milhares em R0
				tmp(234) := STA  &  R0  &  '1'  &  x"23";	-- STA @291, R0    	# Guarda o valor do milhar no HEX3
				tmp(235) := LDA  &  R0  &  '0'  &  x"04";	-- LDA @4, R0      	# Carrega o valor das dezenas de milhar em R0
				tmp(236) := STA  &  R0  &  '1'  &  x"24";	-- STA @292, R0    	# Guarda o valor das dezenas de milhar no HEX4
				tmp(237) := LDA  &  R0  &  '0'  &  x"05";	-- LDA @5, R0      	# Carrega o valor das centenas de milhar em R0
				tmp(238) := STA  &  R0  &  '1'  &  x"25";	-- STA @293, R0    	# Guarda o valor das centenas de milhar no HEX5
				tmp(239) := RET  &  R0  &  '0'  &  x"00";	-- RET



			
--			tmp(0):= "010000000000000";	-- LDI R[0] $0
--			tmp(1):= "010100000000000";	-- STA R[0] @0
--			tmp(2):= "010010000000000";	-- LDI R[2] $0
--			tmp(3):= "010000000000001";	-- LDI R[0] $1
--			tmp(4):= "010100000000001";	-- STA R[0] @1
--			-- RETORNO:
--			tmp(5):= "000101101100000";	-- LDA R[1] @352
--			tmp(6):= ANDI & R1 & '0' & x"01"; -- ANDI
--			tmp(7):= "010101100100000";	-- STA R[1] @288
--			tmp(8):= "100001000000000";	-- CEQ R[1] @0
--			tmp(9):= "011100000000101";	-- JEQ @RETORNO
--			tmp(10):= "100100000001100";	-- JSR @INCREMENTA
--			tmp(11):= "011000000000101";	-- JMP @RETORNO
--			-- INCREMENTA:
--			tmp(12):= "010100111111111";	-- STA @511
--			tmp(13):= "001010000000001";	-- SOMA R[2] @1
--			tmp(14):= "010110100000010";	-- STA R[2] @258
--			tmp(15):= "010110100100010";	-- STA R[2] @290
--			tmp(16):= "101000000000000";	-- RET
						

		  return tmp;
		  
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;