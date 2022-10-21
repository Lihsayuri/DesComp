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
			tmp(2) := LDI  &  R2  &  '0'  &  x"09";	-- LDI $9, R2      	# R2 = 9
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
			
			-- LOOP PRINCIPAL
			
			tmp(29) := NOP  &  R0  &  '0'  &  x"00";	-- NOP              	# LOOP PRINCIPAL
			tmp(30) := LDA  &  R0  &  '0'  &  x"06";	-- LDA @6, R0       	# Carregando o R0 com o valor da flag de inibir
			tmp(31) := CEQ  &  R0  &  '0'  &  x"08";	-- CEQ @8, R0       	# Compara com 1 para ver se a flag está ativada
			tmp(32) := JEQ  &  R0  &  '0'  &  x"27";	-- JEQ @39          	# Se for igual, pula pra leitura de KEY1
			tmp(33) := LDA  &  R0  &  '1'  &  x"60";	-- LDA @352, R0     	# Carrega o R0 com a leitura do botão KEY0
			tmp(34) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0      	# Aplica máscara na leitura do botão
			tmp(35) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0       	# Compara com 0
			tmp(36) := JEQ  &  R0  &  '0'  &  x"27";	-- JEQ @39          	# Se for 0, vai ler a proxima chave
			tmp(37) := JSR  &  R0  &  '0'  &  x"3c";	-- JSR @INCREMENTO  	# Se for 1, vai pra sub-rotina de incremento
			tmp(38) := NOP  &  R0  &  '0'  &  x"00";	-- NOP              	# Aqui é onde o RET volta
			tmp(39) := LDA  &  R1  &  '1'  &  x"61";	-- LDA @353, R1     	# Carrega o R1 com a leitura do botão KEY1
			tmp(40) := ANDI  &  R1  &  '0'  &  x"01";	-- ANDI @1, R1      	# Aplica máscara na leitura do botão
			tmp(41) := CEQ  &  R1  &  '0'  &  x"07";	-- CEQ @7, R1       	# Compara com 0
			tmp(42) := JEQ  &  R0  &  '0'  &  x"2d";	-- JEQ @45          	# Se for 0, vai conferir o limite 
			tmp(43) := JSR  &  R0  &  '0'  &  x"79";	-- JSR @CONFIG_LIMITE   	# Se for 1, vai pra sub-rotina de configuração de limite
			tmp(44) := NOP  &  R0  &  '0'  &  x"00";	-- NOP              	# Aqui é onde o RET volta
			tmp(45) := JSR  &  R0  &  '0'  &  x"b8";	-- JSR @CONFERE_LIMITE  	# Chama a sub-rotina para verificar o limite
			tmp(46) := NOP  &  R0  &  '0'  &  x"00";	-- NOP              	# Aqui é onde o RET volta
			tmp(47) := LDA  &  R1  &  '1'  &  x"62";	-- LDA @354, R1     	# Carrega o R1 com a leitura do botão KEY2
			tmp(48) := ANDI  &  R1  &  '0'  &  x"01";	-- ANDI @1, R1      	# Depois de fazer a leitura do botão aplica a máscara
			tmp(49) := CEQ  &  R1  &  '0'  &  x"07";	-- CEQ @7, R1       	# Compara com 0
			tmp(50) := JEQ  &  R0  &  '0'  &  x"35";	-- JEQ @53          	# Se for 0, vai ler a próxima chave
			tmp(51) := JSR  &  R0  &  '0'  &  x"ed";	-- JSR @DECREMENTO  	# Se for 1, vai pra sub-rotina de decremento
			tmp(52) := NOP  &  R0  &  '0'  &  x"00";	-- NOP              	# Aqui é onde o RET volta
			tmp(53) := LDA  &  R3  &  '1'  &  x"64";	-- LDA @356, R3     	# Carrega o R3 com a leitura do botão FPGA_RESET 
			tmp(54) := ANDI  &  R3  &  '0'  &  x"01";	-- ANDI @1, R3      	# Aplica ,áscara na leitura do botão
			tmp(55) := CEQ  &  R3  &  '0'  &  x"08";	-- CEQ @8, R3       	# Compara com 1
			tmp(56) := JEQ  &  R0  &  '0'  &  x"3a";	-- JEQ @58          	# Se for 1, vai pra subrotina pra reiniciar a contagem
			tmp(57) := JSR  &  R0  &  '0'  &  x"d5";	-- JSR @REINICIAR_CONTAGEM  	# Chama sub-rotina de reiniciar a contagem
			tmp(58) := JSR  &  R0  &  '0'  &  x"e0";	-- JSR @ATUALIZA_SEVEN_SEG  	# Chama sub-rotina de atualizar o display de sete segmentos
			tmp(59) := JMP  &  R0  &  '0'  &  x"1d";	-- JMP @LOOP_PRINCIPAL      	# Volta para o início do loop principal
			
			-- SUB-ROTINA DE INCREMENTO
			
			tmp(60) := STA  &  R0  &  '1'  &  x"ff";	-- STA @511, R0     	# Limpa a leitura do botão KEY0
			tmp(61) := LDA  &  R1  &  '0'  &  x"06";	-- LDA @6, R1       	# Carrega o valor da flag de inibir contagem no R1
			tmp(62) := CEQ  &  R1  &  '0'  &  x"08";	-- CEQ @8, R1       	# Compara com 1 para ver se a flag está ativada
			tmp(63) := JEQ  &  R0  &  '0'  &  x"78";	-- JEQ @120         	#Se for 1, não incrementa e vai pro RET
			tmp(64) := LDA  &  R0  &  '0'  &  x"00";	-- LDA @0, R0       	# Carrega o valor das unidades em R0
			tmp(65) := SOMA  &  R0  &  '0'  &  x"08";	-- SOMA @8, R0      	# Soma com 1 e guarda resultado em R0
			tmp(66) := CEQ  &  R0  &  '0'  &  x"09";	-- CEQ @9, R0       	# Compara com 10
			tmp(67) := JEQ  &  R0  &  '0'  &  x"46";	-- JEQ @INC_DEZENA  	# Se for 10, vai para as dezenas
			tmp(68) := STA  &  R0  &  '0'  &  x"00";	-- STA @0, R0       	# Se não, armazena o valor das unidades
			tmp(69) := RET  &  R0  &  '0'  &  x"00";	-- RET              	# E retorna
			tmp(70) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	# Carrega 0 no R0
			tmp(71) := STA  &  R0  &  '0'  &  x"00";	-- STA @0, R0      	# Carrega 0 nas unidades
			tmp(72) := LDA  &  R0  &  '0'  &  x"01";	-- LDA @1, R0      	# Carrega o valor das dezenas em R0
			tmp(73) := SOMA  &  R0  &  '0'  &  x"08";	-- SOMA @8, R0     	# Soma com 1 e guarda resultado em R0
			tmp(74) := CEQ  &  R0  &  '0'  &  x"09";	-- CEQ @9, R0      	# Compara com 10
			tmp(75) := JEQ  &  R0  &  '0'  &  x"4e";	-- JEQ @INC_CENTENA 	# Se for 10, vai para as centenas
			tmp(76) := STA  &  R0  &  '0'  &  x"01";	-- STA @1, R0      	# Se não, armazena o valor das dezenas
			tmp(77) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# E retorna
			tmp(78) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	#Carrega 0 no REG
			tmp(79) := STA  &  R0  &  '0'  &  x"01";	-- STA @1, R0      	# Carrega 0 nas dezenas
			tmp(80) := LDA  &  R0  &  '0'  &  x"02";	-- LDA @2, R0      	# Carrega o valor das centenas em R0
			tmp(81) := SOMA  &  R0  &  '0'  &  x"08";	-- SOMA @8, R0     	# Soma com 1 e guarda resultado em R0
			tmp(82) := CEQ  &  R0  &  '0'  &  x"09";	-- CEQ @9, R0      	# Compara com 10
			tmp(83) := JEQ  &  R0  &  '0'  &  x"56";	-- JEQ @INC_MILHAR 	# Se for 10, vai para o milhar
			tmp(84) := STA  &  R0  &  '0'  &  x"02";	-- STA @2, R0      	# Se não, armazena o valor das centenas
			tmp(85) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# E retorna
			tmp(86) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	# Carrega 0 no R0
			tmp(87) := STA  &  R0  &  '0'  &  x"02";	-- STA @2, R0      	# Carrega 0 nas centenas
			tmp(88) := LDA  &  R0  &  '0'  &  x"03";	-- LDA @3, R0      	# Carrega o valor dos milhares em R0
			tmp(89) := SOMA  &  R0  &  '0'  &  x"08";	-- SOMA @8, R0     	# Soma com 1 e guarda resultado em R0
			tmp(90) := CEQ  &  R0  &  '0'  &  x"09";	-- CEQ @9, R0      	# Compara com 10
			tmp(91) := JEQ  &  R0  &  '0'  &  x"5e";	-- JEQ @INC_DEZMILHAR  	# Se for 10, vai para as dezenas de milhar
			tmp(92) := STA  &  R0  &  '0'  &  x"03";	-- STA @3, R0      	# Se não, armazena o valor dos milhares
			tmp(93) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# E retorna
			tmp(94) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	# Carrega 0 no R0
			tmp(95) := STA  &  R0  &  '0'  &  x"03";	-- STA @3, R0      	# Carrega 0 no milhar
			tmp(96) := LDA  &  R0  &  '0'  &  x"04";	-- LDA @4, R0      	# Carrega o valor das dezenas de milhar
			tmp(97) := SOMA  &  R0  &  '0'  &  x"08";	-- SOMA @8, R0     	# Soma com 1 e guarda resultado em R0
			tmp(98) := CEQ  &  R0  &  '0'  &  x"09";	-- CEQ @9, R0      	# Compara com 10
			tmp(99) := JEQ  &  R0  &  '0'  &  x"66";	-- JEQ @INC_CENTMILHAR 	# Se for 10, vai para a centena de milhar
			tmp(100) := STA  &  R0  &  '0'  &  x"04";	-- STA @4, R0      	# Armazena o valor das dezena de milhar
			tmp(101) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# E retorna
			tmp(102) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	# Carrega 0 no R0
			tmp(103) := STA  &  R0  &  '0'  &  x"04";	-- STA @4, R0      	# Carrega 0 nas dezenas de milhar
			tmp(104) := LDA  &  R0  &  '0'  &  x"05";	-- LDA @5, R0      	#Carrega o valor das centenas de milhar
			tmp(105) := SOMA  &  R0  &  '0'  &  x"08";	-- SOMA @8, R0     	# Soma com 1 e guarda resultado em R0
			tmp(106) := CEQ  &  R0  &  '0'  &  x"09";	-- CEQ @9, R0      	# Compara com 10
			tmp(107) := JEQ  &  R0  &  '0'  &  x"6e";	-- JEQ @OVERFLOW   	# Se for 10, vai para o overflow
			tmp(108) := STA  &  R0  &  '0'  &  x"05";	-- STA @5, R0      	# Se não, armazena o valor das centena de milhar
			tmp(109) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# E retorna
			tmp(110) := LDA  &  R2  &  '0'  &  x"08";	-- LDA @8, R2      	# Carrega o valor 1 em R2
			tmp(111) := STA  &  R2  &  '0'  &  x"06";	-- STA @6, R2      	# Armazena o valor 1 na flag de inibir contagem
			tmp(112) := STA  &  R2  &  '1'  &  x"02";	-- STA @258, R2    	# Armazena o valor 1 no LEDR9 indicando OVERFLOW
			tmp(113) := LDI  &  R3  &  '0'  &  x"09";	-- LDI $9, R3      	# Não deixar somar, volta pro máximo permitido - Carrega 9 em R3
			tmp(114) := STA  &  R3  &  '0'  &  x"00";	-- STA @0, R3      	#Guarda 9 nas unidades
			tmp(115) := STA  &  R3  &  '0'  &  x"01";	-- STA @1, R3      	#Guarda 9 nas dezenas
			tmp(116) := STA  &  R3  &  '0'  &  x"02";	-- STA @2, R3      	#Guarda 9 nas centenas
			tmp(117) := STA  &  R3  &  '0'  &  x"03";	-- STA @3, R3      	#Guarda 9 nos milhares
			tmp(118) := STA  &  R3  &  '0'  &  x"04";	-- STA @4, R3      	#Guarda 9 nas dezenas de milhar
			tmp(119) := STA  &  R3  &  '0'  &  x"05";	-- STA @5, R3      	#Guarda 9 nas centenas de milhar
			tmp(120) := RET  &  R0  &  '0'  &  x"00";	-- RET
			
			-- SUB-ROTINA DE CONFIGURAÇÃO DE LIMITE DE CONTAGEM
			
			tmp(121) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1
			tmp(122) := STA  &  R3  &  '0'  &  x"06";	-- STA @6, R3      	# Carrega a flag de inibir contagem em R3
			tmp(123) := CEQ  &  R3  &  '0'  &  x"07";	-- CEQ @7, R3      	# Compara a flag de inibir com 0
			tmp(124) := JEQ  &  R0  &  '0'  &  x"7f";	-- JEQ @LIM_UNIDADE 	# Se for 0, então começa a configurar
			tmp(125) := LDA  &  R3  &  '0'  &  x"07";	-- LDA @7, R3      	# Se for 1, tem que voltar para 0
			tmp(126) := STA  &  R3  &  '0'  &  x"06";	-- STA @6, R3      	# Guardo 0 na flag de inibir contagem
			tmp(127) := LDA  &  R1  &  '0'  &  x"08";	-- LDA @8, R1      	# Carrega 1 em R1
			tmp(128) := STA  &  R1  &  '1'  &  x"00";	-- STA @256, R1    	# Liga o LED 0 ~ 7 dizendo que está pronto pra ler a chave das unidades
			tmp(129) := LDA  &  R0  &  '1'  &  x"61";	-- LDA @353, R0    	# Guarda a leitura de KEY1 em R0
			tmp(130) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0     	# Depois de fazer a leitura do botão aplica a máscara
			tmp(131) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	#Compara com o valor 0
			tmp(132) := LDA  &  R2  &  '1'  &  x"40";	-- LDA @320, R2    	# Lê as chaves e salva o valor delas no R2
			tmp(133) := JEQ  &  R0  &  '0'  &  x"7f";	-- JEQ @LIM_UNIDADE 	# Caso botão não tenha sido apertado volta novamente para ler KEY1
			tmp(134) := STA  &  R2  &  '0'  &  x"0a";	-- STA @10, R2     	# Guarda o valor limite nas unidades
			tmp(135) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1
			tmp(136) := LDI  &  R1  &  '0'  &  x"02";	-- LDI $2, R1      	# Carrega 2 em R1
			tmp(137) := STA  &  R1  &  '1'  &  x"00";	-- STA @256, R1    	# Liga o LED 0 ~ 7 dizendo que está pronto pra ler a chave das dezenas
			tmp(138) := LDA  &  R0  &  '1'  &  x"61";	-- LDA @353, R0    	# Guarda a leitura de KEY1 em R0
			tmp(139) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0     	# Depois de fazer a leitura do botão aplica a máscara
			tmp(140) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	#Compara com o valor 0
			tmp(141) := LDA  &  R2  &  '1'  &  x"40";	-- LDA @320, R2    	# Lê de novo o valor das chaves e salva no R2
			tmp(142) := JEQ  &  R0  &  '0'  &  x"88";	-- JEQ @LIM_DEZENA 	# Caso botão não tenha sido apertado volta novamente para ler KEY1
			tmp(143) := STA  &  R2  &  '0'  &  x"0b";	-- STA @11, R2     	# Guarda o valor limite nas dezenas
			tmp(144) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1
			tmp(145) := LDI  &  R1  &  '0'  &  x"04";	-- LDI $4, R1      	# Carrega 4 em R1
			tmp(146) := STA  &  R1  &  '1'  &  x"00";	-- STA @256, R1    	# Liga o LED 0 ~ 7 dizendo que está pronto pra ler a chave das centenas
			tmp(147) := LDA  &  R0  &  '1'  &  x"61";	-- LDA @353, R0    	# Guarda a leitura de KEY1
			tmp(148) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0     	# Depois de fazer a leitura do botão aplica a máscara
			tmp(149) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	# Compara com o valor 0
			tmp(150) := LDA  &  R2  &  '1'  &  x"40";	-- LDA @320, R2    	# Lê de novo o valor das chaves e salva no R2
			tmp(151) := JEQ  &  R0  &  '0'  &  x"91";	-- JEQ @LIM_CENTENA  	# Caso botão não tenha sido apertado volta novamente para ler KEY1
			tmp(152) := STA  &  R2  &  '0'  &  x"0c";	-- STA @12, R2     	# Guarda o valor limite nas centenas
			tmp(153) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1
			tmp(154) := LDI  &  R1  &  '0'  &  x"08";	-- LDI $8, R1      	# Carrega 8 em R1
			tmp(155) := STA  &  R1  &  '1'  &  x"00";	-- STA @256, R1    	# Liga o LED 0 ~ 7 dizendo que está pronto pra ler a chave do milhar
			tmp(156) := LDA  &  R0  &  '1'  &  x"61";	-- LDA @353, R0    	# Guarda a leitura de KEY1
			tmp(157) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0     	# Depois de fazer a leitura do botão aplica a máscara
			tmp(158) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	# Compara com o valor 0
			tmp(159) := LDA  &  R2  &  '1'  &  x"40";	-- LDA @320, R2    	# Lê de novo o valor das chaves e salva no R2
			tmp(160) := JEQ  &  R0  &  '0'  &  x"9a";	-- JEQ @LIM_MILHAR  	# Caso botão não tenha sido apertado volta novamente para ler KEY1
			tmp(161) := STA  &  R2  &  '0'  &  x"0d";	-- STA @13, R2     	# Guarda o valor limite nos milhares
			tmp(162) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1 
			tmp(163) := LDI  &  R1  &  '0'  &  x"10";	-- LDI $16, R1     	# Carrega 16 em R1
			tmp(164) := STA  &  R1  &  '1'  &  x"00";	-- STA @256, R1    	# Liga o LED 0 ~ 7 dizendo que está pronto pra ler a chave das dezenas de milhar
			tmp(165) := LDA  &  R0  &  '1'  &  x"61";	-- LDA @353, R0    	# Guarda a leitura de KEY1
			tmp(166) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0     	# Depois de fazer a leitura do botão aplica a máscara
			tmp(167) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	# Compara com o valor 0
			tmp(168) := LDA  &  R2  &  '1'  &  x"40";	-- LDA @320, R2    	# Lê de novo o valor das chaves e salva no R2
			tmp(169) := JEQ  &  R0  &  '0'  &  x"a3";	-- JEQ @LIM_DEZMILHAR 	# Caso botão não tenha sido apertado volta novamente para ler KEY1
			tmp(170) := STA  &  R2  &  '0'  &  x"0e";	-- STA @14, R2     	# Guarda o valor limite nas dezenas de milhar
			tmp(171) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1
			tmp(172) := LDI  &  R1  &  '0'  &  x"20";	-- LDI $32, R1     	# Carrega 32 em R0
			tmp(173) := STA  &  R1  &  '1'  &  x"00";	-- STA @256, R1    	# Liga o LED 0 ~ 7 dizendo que está pronto pra ler a chave das unidades
			tmp(174) := LDA  &  R0  &  '1'  &  x"61";	-- LDA @353, R0    	# Guarda a leitura de KEY1
			tmp(175) := ANDI  &  R0  &  '0'  &  x"01";	-- ANDI @1, R0     	# Depois de fazer a leitura do botão aplica a máscara
			tmp(176) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	#Compara com o valor 0
			tmp(177) := LDA  &  R2  &  '1'  &  x"40";	-- LDA @320, R2    	# Lê de novo o valor das chaves e salva no R2
			tmp(178) := JEQ  &  R0  &  '0'  &  x"ac";	-- JEQ @LIM_CENTMILHAR 	# Caso botão não tenha sido apertado volta novamente para ler KEY1
			tmp(179) := STA  &  R2  &  '0'  &  x"0f";	-- STA @15, R2     	# Guarda o valor limite nas centenas de milhar
			tmp(180) := STA  &  R0  &  '1'  &  x"fe";	-- STA @510, R0    	# Para limpar a leitura do botão 1
			tmp(181) := LDA  &  R3  &  '0'  &  x"07";	-- LDA @7, R3      	# Carrega o 0 em R3
			tmp(182) := STA  &  R3  &  '1'  &  x"00";	-- STA @256, R3    	# Desliga os LEDS
			tmp(183) := RET  &  R0  &  '0'  &  x"00";	-- RET
			
			-- SUB-ROTINA DE CHECAGEM DO LIMITE
			
			tmp(184) := NOP  &  R0  &  '0'  &  x"00";	-- NOP             	# Aqui começa a conferência dos limites
			tmp(185) := LDA  &  R0  &  '0'  &  x"00";	-- LDA @0, R0      	# Carrega o valor das unidades em R0
			tmp(186) := CEQ  &  R0  &  '0'  &  x"0a";	-- CEQ @10, R0     	# Compara com o limite de unidades
			tmp(187) := JEQ  &  R0  &  '0'  &  x"bd";	-- JEQ @CONFERE_LIMITE_DEZENA 	# Se for 0, vai para a dezena
			tmp(188) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# Caso o contrário já retorna
			tmp(189) := LDA  &  R1  &  '0'  &  x"01";	-- LDA @1, R1      	# Carrega o valor das dezenas em R1
			tmp(190) := CEQ  &  R1  &  '0'  &  x"0b";	-- CEQ @11, R1     	# Compara com o limite de dezenas
			tmp(191) := JEQ  &  R0  &  '0'  &  x"c1";	-- JEQ @CONFERE_LIMITE_CENTENA 	# Se for 0, vai para a centena
			tmp(192) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# Caso o contrário já retorna
			tmp(193) := LDA  &  R2  &  '0'  &  x"02";	-- LDA @2, R2      	#Carrega o valor das centenas em R2
			tmp(194) := CEQ  &  R2  &  '0'  &  x"0c";	-- CEQ @12, R2     	#Compara com o limite das centenas
			tmp(195) := JEQ  &  R0  &  '0'  &  x"c5";	-- JEQ @CONFERE_LIMITE_MILHAR 	# Se for 0, vai para os milhares
			tmp(196) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# Caso o contrário já retorna
			tmp(197) := LDA  &  R3  &  '0'  &  x"03";	-- LDA @3, R3      	#Carrega o valor dos milhares em R3
			tmp(198) := CEQ  &  R3  &  '0'  &  x"0d";	-- CEQ @13, R3     	#Compara com o limite dos milhares
			tmp(199) := JEQ  &  R0  &  '0'  &  x"c9";	-- JEQ @CONFERE_LIMITE_DEZMILHAR 	# Se for 0, vai para as dezenas de milhr
			tmp(200) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# Caso o contrário já retorna
			tmp(201) := LDA  &  R0  &  '0'  &  x"04";	-- LDA @4, R0      	#Carrega o valor das dezenas de milhar em R0
			tmp(202) := CEQ  &  R0  &  '0'  &  x"0e";	-- CEQ @14, R0     	#Compara com o limite das dezenas de milhar
			tmp(203) := JEQ  &  R0  &  '0'  &  x"cd";	-- JEQ @CONFERE_LIMITE_CENTMILHAR 	# Se for 0, vai para as centenas de milhar
			tmp(204) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# Caso o contrário já retorna
			tmp(205) := LDA  &  R1  &  '0'  &  x"05";	-- LDA @5, R1      	#Carrega as dezenas de centenas de milhar em R1
			tmp(206) := CEQ  &  R1  &  '0'  &  x"0f";	-- CEQ @15, R1     	#Compara com o limite das centenas de milhar
			tmp(207) := JEQ  &  R0  &  '0'  &  x"d1";	-- JEQ @ATIVAR_FLAG_INIBIR_CONTAGEM 	# Se for 0, vai ativar a flag de inibir a contagem
			tmp(208) := RET  &  R0  &  '0'  &  x"00";	-- RET             	# Caso o contrário já retorna
			tmp(209) := LDA  &  R2  &  '0'  &  x"08";	-- LDA @8, R2      	# Carrega o valor 1
			tmp(210) := STA  &  R2  &  '1'  &  x"01";	-- STA @257, R2    	# Armazena o valor 1 no LED8
			tmp(211) := STA  &  R2  &  '0'  &  x"06";	-- STA @6, R2      	# Armazena o valor 1 na flag de inibir contagem
			tmp(212) := RET  &  R0  &  '0'  &  x"00";	-- RET
			
			-- SUB-ROTINA DO REINICIO DE CONTAGEM
			
			tmp(213) := LDA  &  R0  &  '0'  &  x"07";	-- LDA @7, R0      	# Carrega o acumulador com o valor 0
			tmp(214) := STA  &  R0  &  '0'  &  x"00";	-- STA @0, R0      	#  Armazena o valor 0 nas unidades
			tmp(215) := STA  &  R0  &  '0'  &  x"01";	-- STA @1, R0      	#  Armazena o valor 0 nas dezenas
			tmp(216) := STA  &  R0  &  '0'  &  x"02";	-- STA @2, R0      	#  Armazena o valor 0 nas centenas
			tmp(217) := STA  &  R0  &  '0'  &  x"03";	-- STA @3, R0      	#  Armazena o valor 0 nos milhares
			tmp(218) := STA  &  R0  &  '0'  &  x"04";	-- STA @4, R0      	#  Armazena o valor 0 nas dezenas de milhar
			tmp(219) := STA  &  R0  &  '0'  &  x"05";	-- STA @5, R0      	#  Armazena o valor 0 nas centenas de milhar
			tmp(220) := STA  &  R0  &  '0'  &  x"06";	-- STA @6, R0      	# Armazena o valor 0 na flag de inibir contagem
			tmp(221) := STA  &  R0  &  '1'  &  x"01";	-- STA @257, R0    	# Armazena o valor 0 no LED8
			tmp(222) := STA  &  R0  &  '1'  &  x"02";	-- STA @258, R0    	# Armazena o valor 0 no LED9
			tmp(223) := RET  &  R0  &  '0'  &  x"00";	-- RET
						
			-- SUB-ROTINA DE ATUALIZAÇÃO DO DISPLAY DE SETE SEGMENTOS
			
			tmp(224) := LDA  &  R0  &  '0'  &  x"00";	-- LDA @0, R0      	# Carrega o valor das unidades em R0
			tmp(225) := STA  &  R0  &  '1'  &  x"20";	-- STA @288, R0    	# Guarda o valor das unidades no HEX0
			tmp(226) := LDA  &  R0  &  '0'  &  x"01";	-- LDA @1, R0      	# Carrega o valor das dezenas em R0
			tmp(227) := STA  &  R0  &  '1'  &  x"21";	-- STA @289, R0    	# Guarda o valor das dezenas no HEX1 
			tmp(228) := LDA  &  R0  &  '0'  &  x"02";	-- LDA @2, R0      	# Carrega o valor das centenas em R0
			tmp(229) := STA  &  R0  &  '1'  &  x"22";	-- STA @290, R0    	# Guarda o valor das centenas no HEX2
			tmp(230) := LDA  &  R0  &  '0'  &  x"03";	-- LDA @3, R0      	# Carrega o valor dos milhares em R0
			tmp(231) := STA  &  R0  &  '1'  &  x"23";	-- STA @291, R0    	# Guarda o valor do milhar no HEX3
			tmp(232) := LDA  &  R0  &  '0'  &  x"04";	-- LDA @4, R0      	# Carrega o valor das dezenas de milhar em R0
			tmp(233) := STA  &  R0  &  '1'  &  x"24";	-- STA @292, R0    	# Guarda o valor das dezenas de milhar no HEX4
			tmp(234) := LDA  &  R0  &  '0'  &  x"05";	-- LDA @5, R0      	# Carrega o valor das centenas de milhar em R0
			tmp(235) := STA  &  R0  &  '1'  &  x"25";	-- STA @293, R0    	# Guarda o valor das centenas de milhar no HEX5
			tmp(236) := RET  &  R0  &  '0'  &  x"00";	-- RET
			
			-- SUB-ROTINA DE DECREMENTO
			
			tmp(237) := STA  &  R0  &  '1'  &  x"fc";	-- STA @508, R0    	# Limpa a leitura do botão
			tmp(238) := LDA  &  R1  &  '0'  &  x"07";	-- LDA @7, R1      	# Carrega o 0 no R1
			tmp(239) := STA  &  R1  &  '0'  &  x"06";	-- STA @6, R1      	# Armazena o valor 0 na flag de inibir contagem
			tmp(240) := STA  &  R1  &  '1'  &  x"01";	-- STA @257, R1    	# Armazena o valor 0 no LED8
			tmp(241) := LDA  &  R2  &  '0'  &  x"00";	-- LDA @0, R2      	# Carrega o valor das unidades em R2
			tmp(242) := CEQ  &  R2  &  '0'  &  x"07";	-- CEQ @7, R2      	# Compara com 0
			tmp(243) := JEQ  &  R0  &  '0'  &  x"f7";	-- JEQ @DEC_DEZENA 	# Se for 0, vai para a dezenas
			tmp(244) := SUB  &  R2  &  '0'  &  x"08";	-- SUB @8, R2      	# Se não, subtrai 1
			tmp(245) := STA  &  R2  &  '0'  &  x"00";	-- STA @0, R2      	# Armazena o valor das unidades
			tmp(246) := RET  &  R0  &  '0'  &  x"00";	-- RET
			tmp(247) := LDI  &  R3  &  '0'  &  x"09";	-- LDI $9, R3      	# Carrega o valor 9 no imediato em R3
			tmp(248) := STA  &  R3  &  '0'  &  x"00";	-- STA @0, R3      	# Armazena o valor 9 nas unidades
			tmp(249) := LDA  &  R0  &  '0'  &  x"01";	-- LDA @1, R0      	# Carrega o valor das dezenas em R0
			tmp(250) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	# Compara com 0
			tmp(251) := JEQ  &  R0  &  '0'  &  x"ff";	-- JEQ @DEC_CENTENA 	# Se for 0, vai para as centenas
			tmp(252) := SUB  &  R0  &  '0'  &  x"08";	-- SUB @8, R0      	# Se não, subtrai 1
			tmp(253) := STA  &  R0  &  '0'  &  x"01";	-- STA @1, R0      	# Armazena o valor das dezenas
			tmp(254) := RET  &  R0  &  '0'  &  x"00";	-- RET
			tmp(255) := LDI  &  R0  &  '0'  &  x"09";	-- LDI $9, R0      	# Carrega o valor 9 no imediato em R0
			tmp(256) := STA  &  R0  &  '0'  &  x"01";	-- STA @1, R0      	# Armazena o valor 9 nas dezenas
			tmp(257) := LDA  &  R1  &  '0'  &  x"02";	-- LDA @2, R1      	# Carrega o valor das centenas em R1
			tmp(258) := CEQ  &  R1  &  '0'  &  x"07";	-- CEQ @7, R1      	# Compara com 0
			tmp(259) := JEQ  &  R0  &  '1'  &  x"07";	-- JEQ @DEC_MILHAR 	# Se for 0, vai para os milhares
			tmp(260) := SUB  &  R1  &  '0'  &  x"08";	-- SUB @8, R1      	# Se não, subtrai 1
			tmp(261) := STA  &  R1  &  '0'  &  x"02";	-- STA @2, R1      	# Armazena o valor das centenas
			tmp(262) := RET  &  R0  &  '0'  &  x"00";	-- RET
			tmp(263) := LDI  &  R2  &  '0'  &  x"09";	-- LDI $9, R2      	# Carrega o valor 9 no imediato em R2
			tmp(264) := STA  &  R2  &  '0'  &  x"02";	-- STA @2, R2      	#  Armazena o valor 9 nas centenas
			tmp(265) := LDA  &  R3  &  '0'  &  x"03";	-- LDA @3, R3      	# Carrega o valor dos milhares em R3
			tmp(266) := CEQ  &  R3  &  '0'  &  x"07";	-- CEQ @7, R3      	# Compara com 0
			tmp(267) := JEQ  &  R0  &  '1'  &  x"0f";	-- JEQ @DEC_DEZMILHAR 	# Se for 0, vai para as dezenas de milhar
			tmp(268) := SUB  &  R3  &  '0'  &  x"08";	-- SUB @8, R3      	# Se não, subtrai 1
			tmp(269) := STA  &  R3  &  '0'  &  x"03";	-- STA @3, R3      	# Armazena o valor dos milhares
			tmp(270) := RET  &  R0  &  '0'  &  x"00";	-- RET
			tmp(271) := LDI  &  R1  &  '0'  &  x"09";	-- LDI $9, R1      	# Carrega o valor 9 no imediato em R1
			tmp(272) := STA  &  R1  &  '0'  &  x"03";	-- STA @3, R1      	# Armazena o valor 9 nos milhares
			tmp(273) := LDA  &  R0  &  '0'  &  x"04";	-- LDA @4, R0      	# Carrega o valor das dezenas de milhar em R0
			tmp(274) := CEQ  &  R0  &  '0'  &  x"07";	-- CEQ @7, R0      	# Compara com o 0
			tmp(275) := JEQ  &  R0  &  '1'  &  x"17";	-- JEQ @DEC_CENTMILHAR 	# Se for 0, vai para as centenas de milhares
			tmp(276) := SUB  &  R0  &  '0'  &  x"08";	-- SUB @8, R0      	# Se não, subtrai 1 
			tmp(277) := STA  &  R0  &  '0'  &  x"04";	-- STA @4, R0      	# Armazena o valor das dezenas de milhar
			tmp(278) := RET  &  R0  &  '0'  &  x"00";	-- RET
			tmp(279) := LDI  &  R1  &  '0'  &  x"09";	-- LDI $9, R1      	# Carrega o valor 9 no imediato em R1
			tmp(280) := STA  &  R1  &  '0'  &  x"04";	-- STA @4, R1      	# Armazena o valor 9 nas centenas de milhar
			tmp(281) := LDA  &  R2  &  '0'  &  x"05";	-- LDA @5, R2      	# Carrega o valor das centenas de milhar em R2
			tmp(282) := CEQ  &  R2  &  '0'  &  x"07";	-- CEQ @7, R2      	# Compara com 0
			tmp(283) := JEQ  &  R0  &  '1'  &  x"1e";	-- JEQ @TUDO_ZERO 	# Se for 0, já deixa tudo 0
			tmp(284) := SUB  &  R2  &  '0'  &  x"08";	-- SUB @8, R2      	# Se não, subtrai 1
			tmp(285) := STA  &  R2  &  '0'  &  x"05";	-- STA @5, R2      	# Armazena o valor das centenas de milhar
			tmp(286) := LDA  &  R3  &  '0'  &  x"07";	-- LDA @7, R3      	# Carrega o valor 0 em R3
			tmp(287) := STA  &  R3  &  '0'  &  x"00";	-- STA @0, R3      	# Zera as unidades
			tmp(288) := STA  &  R3  &  '0'  &  x"01";	-- STA @1, R3      	# Zera as dezenas
			tmp(289) := STA  &  R3  &  '0'  &  x"02";	-- STA @2, R3      	# Zera as centenas
			tmp(290) := STA  &  R3  &  '0'  &  x"03";	-- STA @3, R3      	# Zera os milhares
			tmp(291) := STA  &  R3  &  '0'  &  x"04";	-- STA @4, R3      	# Zera as dezenas de milhar
			tmp(292) := STA  &  R3  &  '0'  &  x"05";	-- STA @5, R3      	# Zera as centenas de milhar
			tmp(293) := STA  &  R3  &  '1'  &  x"02";	-- STA @258, R3    	# Armazena o valor 0 no LED9
			tmp(294) := STA  &  R3  &  '1'  &  x"01";	-- STA @257, R3    	# Armazena o valor 0 no LED8
			tmp(295) := RET  &  R0  &  '0'  &  x"00";	-- RET





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