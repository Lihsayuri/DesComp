library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 13;
          addrWidth: natural := 4
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
  constant ADDI : std_logic_vector (3 downto 0) := "1100"; 


  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
					-- Inicializa os endereços:
					
			-- INICIALIZAÇÃO
					
			tmp(0) := LDI  &  '0'  &  x"00";	-- LDI $0 	# Carrega o acumulador com o valor 0 
			tmp(1) := STA  &  '1'  &  x"00";	-- STA @256 	# Armazena o valor do acumulador em no LEDR0 ~ LEDR7
			tmp(2) := STA  &  '1'  &  x"01";	-- STA @257 	# Armazena o valor do acumulador no LEDR8
			tmp(3) := STA  &  '1'  &  x"02";	-- STA @258 	# Armazena o valor do acumulador em LEDR9
			tmp(4) := STA  &  '1'  &  x"20";	-- STA @288 	# Armazena o valor do acumulador em HEX0
			tmp(5) := STA  &  '1'  &  x"21";	-- STA @289 	# Armazena o valor do acumulador em HEX1
			tmp(6) := STA  &  '1'  &  x"22";	-- STA @290 	# Armazena o valor do acumulador em HEX2
			tmp(7) := STA  &  '1'  &  x"23";	-- STA @291 	# Armazena o valor do acumulador em HEX3
			tmp(8) := STA  &  '1'  &  x"24";	-- STA @292 	# Armazena o valor do acumulador em HEX4
			tmp(9) := STA  &  '1'  &  x"25";	-- STA @293 	# Armazena o valor do acumulador em HEX5
			tmp(10) := LDI  &  '0'  &  x"00";	-- LDI $0 	# Carrega o acumulador com o valor 0 
			tmp(11) := STA  &  '0'  &  x"00";	-- STA @0 	# Armazena o valor do acumulador em MEM[0] (unidades)
			tmp(12) := STA  &  '0'  &  x"01";	-- STA @1 	# Armazena o valor do acumulador em MEM[1] (dezenas)
			tmp(13) := STA  &  '0'  &  x"02";	-- STA @2 	# Armazena o valor do acumulador em MEM[2] (centenas)
			tmp(14) := STA  &  '0'  &  x"03";	-- STA @3 	# Armazena o valor do acumulador em MEM[3] (milhar)
			tmp(15) := STA  &  '0'  &  x"04";	-- STA @4 	# Armazena o valor do acumulador em MEM[4] (dezenas de milhar)
			tmp(16) := STA  &  '0'  &  x"05";	-- STA @5 	# Armazena o valor do acumulador em MEM[5] (centenas de milhar)
			tmp(17) := LDI  &  '0'  &  x"00";	-- LDI $0 	# Carrega o acumulador com o valor 0 
			tmp(18) := STA  &  '0'  &  x"06";	-- STA @6 	# Armazena o valor do acumulador em MEM[6] (flag de inibir contagem)
			tmp(19) := STA  &  '0'  &  x"07";	-- STA @7 	# Armazena o valor do acumulador em MEM[7] (vari�vel 0 para compara��es)
			tmp(20) := LDI  &  '0'  &  x"01";	-- LDI $1 	# Carrega o acumulador com o valor 1
			tmp(21) := STA  &  '0'  &  x"08";	-- STA @8 	# Armazena o valor do acumulador em MEM[8] (vari�vel 1 para incremento)
			tmp(22) := LDI  &  '0'  &  x"0A";	-- LDI $10 	# Carrega o acumulador com o valor 10
			tmp(23) := STA  &  '0'  &  x"09";	-- STA @9 	# Armazena o valor do acumulador em MEM[9] (vari�vel 10 para compara��es)
			tmp(24) := LDI  &  '0'  &  x"09";	-- LDI $9 	# Carrega o acumulador com o valor 9
			tmp(25) := STA  &  '0'  &  x"0A";	-- STA @10 	# Armazena o valor do acumulador em MEM[10] (valor limite para UNIDADE)
			tmp(26) := STA  &  '0'  &  x"0B";	-- STA @11 	# Armazena o valor do acumulador em MEM[11] (valor limite para DEZENA)
			tmp(27) := STA  &  '0'  &  x"0C";	-- STA @12 	# Armazena o valor do acumulador em MEM[12] (valor limite para CENTENA)
			tmp(28) := STA  &  '0'  &  x"0D";	-- STA @13 	# Armazena o valor do acumulador em MEM[13] (valor limite para MILHAR)
			tmp(29) := STA  &  '0'  &  x"0E";	-- STA @14 	# Armazena o valor do acumulador em MEM[14] (valor limite para DEZENA DE MILHAR)
			tmp(30) := STA  &  '0'  &  x"0F";	-- STA @15 	# Armazena o valor do acumulador em MEM[15] (valor limite para CENTENA DE MILHAR )
			
			-- LOOP PRINCIPAL: 
			tmp(31) := NOP  &  '0'  &  x"00";	-- NOP 	# LOOP PRINCIPAL
			tmp(32) := LDA  &  '0'  &  x"06";	-- LDA @6 	# Carregando o acumulador com o valor da flag de inibir
			tmp(33) := CEQ  &  '0'  &  x"08";	-- CEQ @8 	# Compara com 1 para ver se a flag est� ativada
			tmp(34) := JEQ  &  '0'  &  x"29";	-- JEQ @41 	# Se for igual, pula pra leitura de config limite
			tmp(35) := LDA  &  '1'  &  x"60";	-- LDA @352 	# Carrega o acumulador com a leitura do bot�o KEY0
			tmp(36) := ANDI  &  '0'  &  x"01";	-- ANDI @1 	#M�scara na leitura do bot�o
			tmp(37) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	# Compara com 0, se igual 0 -> bot�o n�o apertado. igual a 1 -> vai pra contagem
			tmp(38) := JEQ  &  '0'  &  x"29";	-- JEQ @41 	# Se for 0, vai ler a proxima chave
			tmp(39) := JSR  &  '0'  &  x"3E";	-- JSR INCREMENTO    	# Se for 1, vai pra sub-rotina de incremento
			tmp(40) := NOP  &  '0'  &  x"00";	-- NOP      	# Aqui � onde o RET volta
			tmp(41) := LDA  &  '1'  &  x"61";	-- LDA @353  	# Carrega o acumulador com a leitura do bot�o KEY1
			tmp(42) := ANDI  &  '0'  &  x"01";	-- ANDI @1 	#M�scara na leitura do bot�o
			tmp(43) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	# Compara com 0, se igual 0 -> bot�o n�o apertado. igual a 1 -> vai pra configuracao do limite de contagem
			tmp(44) := JEQ  &  '0'  &  x"2F";	-- JEQ @47 	# Se for 0, vai pro LIMITE - JSR DE BAIXO
			tmp(45) := JSR  &  '0'  &  x"7B";	-- JSR CONFIG_LIMITE     	# Se for 1, vai pra sub-rotina de configuracao
			tmp(46) := NOP  &  '0'  &  x"00";	-- NOP      	# Onde o RET volta
			tmp(47) := JSR  &  '0'  &  x"B5";	-- JSR VERIF_LIMITE    	# Chama a sub rotina para verificar o limite
			tmp(48) := NOP  &  '0'  &  x"00";	-- NOP 	# Aqui � onde o RET volta
			tmp(49) := LDA  &  '1'  &  x"62";	-- LDA @354 	# Carrega o acumulador com a leitura do bot�o KEY2
			tmp(50) := ANDI  &  '0'  &  x"01";	-- ANDI @1 	# Depois de fazer a leitura do bot�o aplica a m�scara
			tmp(51) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	# Compara com 0, se igual 0 -> bot�o n�o apertado. igual a 1 -> vai pra contagem
			tmp(52) := JEQ  &  '0'  &  x"37";	-- JEQ @55 	# Se for 0, vai ler a proxima chave
			tmp(53) := JSR  &  '0'  &  x"E9";	-- JSR DECRESCE  	# Se for 1, vai pra sub-rotina de incremento
			tmp(54) := NOP  &  '0'  &  x"00";	-- NOP      	# Aqui � onde o RET volta
			tmp(55) := LDA  &  '1'  &  x"64";	-- LDA @356 	# Carrega o acumulador com a leitura do bot�o FPGA_RESET 
			tmp(56) := ANDI  &  '0'  &  x"01";	-- ANDI @1 	#M�scara na leitura do bot�o
			tmp(57) := CEQ  &  '0'  &  x"08";	-- CEQ @8    	# Compara com 1
			tmp(58) := JEQ  &  '0'  &  x"3C";	-- JEQ @60  	# Se for 1, da� vai pra subrotina pra reiniciar a contagem
			tmp(59) := JSR  &  '0'  &  x"D1";	-- JSR RESET_CONTAG
			tmp(60) := JSR  &  '0'  &  x"DC";	-- JSR ATUALIZA_TELA
			tmp(61) := JMP  &  '0'  &  x"1F";	-- JMP LOOP_PRINCIPAL

			
			-- SUB-ROTINA DE INCREMENTO:
			tmp(62) := STA  &  '1'  &  x"FF";	-- STA @511 	# Limpa a leitura do bot�o
			tmp(63) := LDA  &  '0'  &  x"06";	-- LDA @6 	# Carregando o acumulador com o valor da flag de inibir
			tmp(64) := CEQ  &  '0'  &  x"08";	-- CEQ @8 	# Compara com 1 para ver se a flag est� ativada
			tmp(65) := JEQ  &  '0'  &  x"71";	-- JEQ @113 	#Vai pro RET final da funcao
			tmp(66) := LDA  &  '0'  &  x"00";	-- LDA @0 	# [UNIDADES] Carrega o valor de MEM[0] no acumulador 
			tmp(67) := SOMA  &  '0'  &  x"08";	-- SOMA @8 	# Soma valor das unidades com 1 e guarda em REG 
			tmp(68) := CEQ  &  '0'  &  x"09";	-- CEQ @9 	# Compara o valor do REG com 10, se for igual a 10, vai pras dezenas
			tmp(69) := JEQ  &  '0'  &  x"48";	-- JEQ @72 	# Vai para Dezenas
			tmp(70) := STA  &  '0'  &  x"00";	-- STA @0 	# Se n�o for igual, guarda soma nas unidades
			tmp(71) := RET  &  '0'  &  x"00";	-- RET 	# E retorna
			tmp(72) := LDA  &  '0'  &  x"07";	-- LDA @7 	#Carrega 0 no REG
			tmp(73) := STA  &  '0'  &  x"00";	-- STA @0 	# Carrega 0 nas unidades
			tmp(74) := LDA  &  '0'  &  x"01";	-- LDA @1 	# [DEZENAS] Carrega o valor de MEM[1] no acumulador
			tmp(75) := SOMA  &  '0'  &  x"08";	-- SOMA @8 	# Soma valor das dezenas com 1 e guarda em REG
			tmp(76) := CEQ  &  '0'  &  x"09";	-- CEQ @9 	# Compara o valor do REG com 10, se for igual a 10, vai pras centenas
			tmp(77) := JEQ  &  '0'  &  x"50";	-- JEQ @80 	# Vai para Centenas
			tmp(78) := STA  &  '0'  &  x"01";	-- STA @1 	# Se n�o for igual, guarda nas dezenas
			tmp(79) := RET  &  '0'  &  x"00";	-- RET 	# E retorna
			tmp(80) := LDA  &  '0'  &  x"07";	-- LDA @7 	#Carrega 0 no REG
			tmp(81) := STA  &  '0'  &  x"01";	-- STA @1 	# Carrega 0 nas dezenas
			tmp(82) := LDA  &  '0'  &  x"02";	-- LDA @2 	# [CENTENAS] Carrega o valor de MEM[2] no acumulador
			tmp(83) := SOMA  &  '0'  &  x"08";	-- SOMA @8 	# Soma valor das centenas com 1 e guarda em REG
			tmp(84) := CEQ  &  '0'  &  x"09";	-- CEQ @9 	# Compara o valor do REG com 10, se for igual a 10, vai pros milhares
			tmp(85) := JEQ  &  '0'  &  x"58";	-- JEQ @88 	# Vai para o Milhar
			tmp(86) := STA  &  '0'  &  x"02";	-- STA @2 	# Se n�o for igual, guarda nas centenas
			tmp(87) := RET  &  '0'  &  x"00";	-- RET 	# E retorna
			tmp(88) := LDA  &  '0'  &  x"07";	-- LDA @7 	#Carrega 0 no REG
			tmp(89) := STA  &  '0'  &  x"02";	-- STA @2 	# Carrega 0 nas centenas
			tmp(90) := LDA  &  '0'  &  x"03";	-- LDA @3 	# Carrega o valor de MEM[3] (milhar) no acumulador
			tmp(91) := SOMA  &  '0'  &  x"08";	-- SOMA @8 	# Soma valor dos milhares com 1 e guarda em REG
			tmp(92) := CEQ  &  '0'  &  x"09";	-- CEQ @9 	# Compara o valor do REG com 10, se for igual a 10, vai pros dezenas de milhar
			tmp(93) := JEQ  &  '0'  &  x"60";	-- JEQ @96 	# Vai para o DezMilhar
			tmp(94) := STA  &  '0'  &  x"03";	-- STA @3 	# Se n�o for igual, guarda nas centenas
			tmp(95) := RET  &  '0'  &  x"00";	-- RET 	# E retorna
			tmp(96) := LDA  &  '0'  &  x"07";	-- LDA @7 	#Carrega 0 no REG
			tmp(97) := STA  &  '0'  &  x"03";	-- STA @3 	# Carrega 0 no milhar
			tmp(98) := LDA  &  '0'  &  x"04";	-- LDA @4 	# Carrega o valor de MEM[4] (dezenas de milhar) no acumulador
			tmp(99) := SOMA  &  '0'  &  x"08";	-- SOMA @8 	# Soma valor dos milhares com 1 e guarda em REG
			tmp(100) := CEQ  &  '0'  &  x"09";	-- CEQ @9 	# Compara o valor do REG com 10, se for igual a 10, vai pros centenas de milhar
			tmp(101) := JEQ  &  '0'  &  x"68";	-- JEQ @104 	# Vai pro CentMilhar
			tmp(102) := STA  &  '0'  &  x"04";	-- STA @4 	# Se n�o for igual, guarda nas centenas
			tmp(103) := RET  &  '0'  &  x"00";	-- RET 	# E retorna
			tmp(104) := LDA  &  '0'  &  x"07";	-- LDA @7 	#Carrega 0 no REG
			tmp(105) := STA  &  '0'  &  x"04";	-- STA @4 	# Carrega 0 nas dezenas de milhar
			tmp(106) := LDA  &  '0'  &  x"05";	-- LDA @5 	# Carrega o valor de MEM[5] (centenas de milhar) no acumulador
			tmp(107) := SOMA  &  '0'  &  x"08";	-- SOMA @8 	# Soma valor dos milhares com 1 e guarda em REG
			tmp(108) := CEQ  &  '0'  &  x"09";	-- CEQ @9 	# Compara o valor do REG com 10, se for igual a 10, vai pro LIMITE
			tmp(109) := JEQ  &  '0'  &  x"70";	-- JEQ @112 	# Vai ativar flag e acender LED
			tmp(110) := STA  &  '0'  &  x"05";	-- STA @5 	# Se n�o for igual, guarda nas centenas
			tmp(111) := RET  &  '0'  &  x"00";	-- RET 	# E retorna
			tmp(112) := LDA  &  '0'  &  x"08";	-- LDA @8 	# Carrega a constante 1 no REG
			tmp(113) := STA  &  '0'  &  x"06";	-- STA @6 	# Ativa a flag de inibir a contagem
			tmp(114) := STA  &  '1'  &  x"02";	-- STA @258 	# Armazena o valor do acumulador em LEDR9 indicando OVERFLOW
			tmp(115) := LDI  &  '0'  &  x"09";	-- LDI $9 	# N�o deixar somar, voltar pro m�ximo m�ximo permitido
			tmp(116) := STA  &  '0'  &  x"00";	-- STA @0 	#Guarda 9 nas unidades
			tmp(117) := STA  &  '0'  &  x"01";	-- STA @1 	#Guarda 9 nas dezenas
			tmp(118) := STA  &  '0'  &  x"02";	-- STA @2 	#Guarda 9 nas centenas
			tmp(119) := STA  &  '0'  &  x"03";	-- STA @3 	#Guarda 9 nos milhares
			tmp(120) := STA  &  '0'  &  x"04";	-- STA @4 	#Guarda 9 nas dezenas de milhar
			tmp(121) := STA  &  '0'  &  x"05";	-- STA @5 	#Guarda 9 nas centenas de milhar
			tmp(122) := RET  &  '0'  &  x"00";	-- RET
			
			--SUB-ROTINA CONFIGURAÇÃO DE LIMITE
			
			tmp(123) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1
			tmp(124) := LDA  &  '0'  &  x"08";	-- LDA @8 	# Carrega 1
			tmp(125) := STA  &  '1'  &  x"00";	-- STA @256 	# Liga o LED 0 ~ 7 dizendo que est� pronto pra ler a chave das unidades
			tmp(126) := LDA  &  '1'  &  x"61";	-- LDA @353 	# Guarda a leitura de KEY1
			tmp(127) := ANDI  &  '0'  &  x"01";	-- ANDI @1 	# Depois de fazer a leitura do bot�o aplica a m�scara
			tmp(128) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	#Compara com o valor 0
			tmp(129) := LDA  &  '1'  &  x"40";	-- LDA @320 	# Ler as chaves e jogar o valor no REG
			tmp(130) := JEQ  &  '0'  &  x"7C";	-- JEQ @124
			tmp(131) := STA  &  '0'  &  x"0A";	-- STA @10 	# Guarda o valor limite nas unidades
			
			tmp(132) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1
			tmp(133) := LDI  &  '0'  &  x"02";	-- LDI $2 	# Carrega 2
			tmp(134) := STA  &  '1'  &  x"00";	-- STA @256 	# Liga o LED 0 ~ 7 dizendo que est� pronto pra ler a chave das unidades
			tmp(135) := LDA  &  '1'  &  x"61";	-- LDA @353 	# Guarda a leitura de KEY1
			tmp(136) := ANDI  &  '0'  &  x"01";	-- ANDI @1 	# Depois de fazer a leitura do bot�o aplica a m�scara
			tmp(137) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	#Compara com o valor 0
			tmp(138) := LDA  &  '1'  &  x"40";	-- LDA @320 	# L� de novo o valor das chaves e joga no REG
			tmp(139) := JEQ  &  '0'  &  x"85";	-- JEQ @133 	# Volta pro inicio desse bloco
			tmp(140) := STA  &  '0'  &  x"0B";	-- STA @11 	# Guarda o valor limite nas dezenas
			
			tmp(141) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1
			tmp(142) := LDI  &  '0'  &  x"04";	-- LDI $4 	# Carrega 4
			tmp(143) := STA  &  '1'  &  x"00";	-- STA @256 	# Liga o LED 0 ~ 7 dizendo que est� pronto pra ler a chave das unidades
			tmp(144) := LDA  &  '1'  &  x"61";	-- LDA @353 	# Guarda a leitura de KEY1
			tmp(145) := ANDI  &  '0'  &  x"01";	-- ANDI @1 	# Depois de fazer a leitura do bot�o aplica a m�scara
			tmp(146) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	#Compara com o valor 0
			tmp(147) := LDA  &  '1'  &  x"40";	-- LDA @320 	# L� de novo o valor das chaves e joga no REG
			tmp(148) := JEQ  &  '0'  &  x"8E";	-- JEQ @142  	# Volta pro inicio desse bloco
			tmp(149) := STA  &  '0'  &  x"0C";	-- STA @12 	# Guarda o valor limite nas centenas
			
			tmp(150) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1
			tmp(151) := LDI  &  '0'  &  x"08";	-- LDI $8 	# Carrega 8
			tmp(152) := STA  &  '1'  &  x"00";	-- STA @256 	# Liga o LED 0 ~ 7 dizendo que est� pronto pra ler a chave das unidades
			tmp(153) := LDA  &  '1'  &  x"61";	-- LDA @353 	# Guarda a leitura de KEY1
			tmp(154) := ANDI  &  '0'  &  x"01";	-- ANDI @1 	# Depois de fazer a leitura do bot�o aplica a m�scara
			tmp(155) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	#Compara com o valor 0
			tmp(156) := LDA  &  '1'  &  x"40";	-- LDA @320 	# L� de novo o valor das chaves e joga no REG
			tmp(157) := JEQ  &  '0'  &  x"97";	-- JEQ @151
			tmp(158) := STA  &  '0'  &  x"0D";	-- STA @13 	# Guarda o valor limite nas milhar
			
			tmp(159) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1 
			tmp(160) := LDI  &  '0'  &  x"10";	-- LDI $16 	# Carrega 16
			tmp(161) := STA  &  '1'  &  x"00";	-- STA @256 	# Liga o LED 0 ~ 7 dizendo que est� pronto pra ler a chave das unidades
			tmp(162) := LDA  &  '1'  &  x"61";	-- LDA @353 	# Guarda a leitura de KEY1
			tmp(163) := ANDI  &  '0'  &  x"01";	-- ANDI @1 	# Depois de fazer a leitura do bot�o aplica a m�scara
			tmp(164) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	#Compara com o valor 0
			tmp(165) := LDA  &  '1'  &  x"40";	-- LDA @320 	# L� de novo o valor das chaves e joga no REG
			tmp(166) := JEQ  &  '0'  &  x"A0";	-- JEQ @160
			tmp(167) := STA  &  '0'  &  x"0E";	-- STA @14 	# Guarda o valor limite nas dezena de milhar
			
			tmp(168) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1
			tmp(169) := LDI  &  '0'  &  x"20";	-- LDI $32 	# Carrega 32
			tmp(170) := STA  &  '1'  &  x"00";	-- STA @256 	# Liga o LED 0 ~ 7 dizendo que est� pronto pra ler a chave das unidades
			tmp(171) := LDA  &  '1'  &  x"61";	-- LDA @353 	# Guarda a leitura de KEY1
			tmp(172) := ANDI  &  '0'  &  x"01";	-- ANDI @1 	# Depois de fazer a leitura do bot�o aplica a m�scara
			tmp(173) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	#Compara com o valor 0
			tmp(174) := LDA  &  '1'  &  x"40";	-- LDA @320 	# L� de novo o valor das chaves e joga no REG
			tmp(175) := JEQ  &  '0'  &  x"A9";	-- JEQ @169
			tmp(176) := STA  &  '0'  &  x"0F";	-- STA @15 	# Guarda o valor limite nas dezena de milhar
			
			tmp(177) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1
			tmp(178) := LDA  &  '0'  &  x"07";	-- LDA @7 	# Carrega o 0 
			tmp(179) := STA  &  '1'  &  x"00";	-- STA @256 	# Desliga os LEDS
			tmp(180) := RET  &  '0'  &  x"00";	-- RET
	
			
			-- SUB-ROTINA CONFERE LIMITE
			
			tmp(181) := LDA  &  '0'  &  x"00";	-- LDA @0 	#Carrega as unidades
			tmp(182) := CEQ  &  '0'  &  x"0A";	-- CEQ @10 	#Compara com o limite das unidades
			tmp(183) := JEQ  &  '0'  &  x"B9";	-- JEQ @185 	# Pula para a pr�xima confer�ncia
			tmp(184) := RET  &  '0'  &  x"00";	-- RET 	# Caso o contr�rio j� Retorna
			tmp(185) := LDA  &  '0'  &  x"01";	-- LDA @1 	#Carrega as dezenas
			tmp(186) := CEQ  &  '0'  &  x"0B";	-- CEQ @11 	#Compara com o limite das dezenas
			tmp(187) := JEQ  &  '0'  &  x"BD";	-- JEQ @189 	# Pula para a pr�xima confer�ncia
			tmp(188) := RET  &  '0'  &  x"00";	-- RET 	# Caso o contr�rio j� Retorna
			tmp(189) := LDA  &  '0'  &  x"02";	-- LDA @2 	#Carrega as centenas
			tmp(190) := CEQ  &  '0'  &  x"0C";	-- CEQ @12 	#Compara com o limite das centenas
			tmp(191) := JEQ  &  '0'  &  x"C1";	-- JEQ @193 	# Pula para a pr�xima confer�ncia
			tmp(192) := RET  &  '0'  &  x"00";	-- RET 	# Caso o contr�rio j� Retorna
			tmp(193) := LDA  &  '0'  &  x"03";	-- LDA @3 	#Carrega o milhar
			tmp(194) := CEQ  &  '0'  &  x"0D";	-- CEQ @13 	#Compara com o limite dos milhares
			tmp(195) := JEQ  &  '0'  &  x"C5";	-- JEQ @197 	# Pula para a pr�xima confer�ncia
			tmp(196) := RET  &  '0'  &  x"00";	-- RET 	# Caso o contr�rio j� Retorna
			tmp(197) := LDA  &  '0'  &  x"04";	-- LDA @4 	#Carrega as dezenas de milhar
			tmp(198) := CEQ  &  '0'  &  x"0E";	-- CEQ @14 	#Compara com o limite das dezenas de milhar
			tmp(199) := JEQ  &  '0'  &  x"C9";	-- JEQ @201 	# Pula para a pr�xima confer�ncia
			tmp(200) := RET  &  '0'  &  x"00";	-- RET 	# Caso o contr�rio j� Retorna
			tmp(201) := LDA  &  '0'  &  x"05";	-- LDA @5 	#Carrega as dezenas de centenas de milhar
			tmp(202) := CEQ  &  '0'  &  x"0F";	-- CEQ @15 	#Compara com o limite das centenas de milhar
			tmp(203) := JEQ  &  '0'  &  x"CD";	-- JEQ @205 	# Pula para a pr�xima linha de setar flag
			tmp(204) := RET  &  '0'  &  x"00";	-- RET 	# Caso o contr�rio j� Retorna
			tmp(205) := LDA  &  '0'  &  x"08";	-- LDA @8
			tmp(206) := STA  &  '1'  &  x"01";	-- STA @257 	# Armazena o valor do acumulador no LEDR8
			tmp(207) := STA  &  '0'  &  x"06";	-- STA @6 	#  flag de inibir contagem vai pra 1
			tmp(208) := RET  &  '0'  &  x"00";	-- RET
		
			
			-- REINICIA A CONTAGEM: 
			tmp(209) := LDA  &  '0'  &  x"07";	-- LDA @7 	# Guarda o 0 no registrador
			tmp(210) := STA  &  '0'  &  x"00";	-- STA @0 	# Armazena o valor do acumulador em MEM[0] (unidades)
			tmp(211) := STA  &  '0'  &  x"01";	-- STA @1 	# Armazena o valor do acumulador em MEM[1] (dezenas)
			tmp(212) := STA  &  '0'  &  x"02";	-- STA @2 	# Armazena o valor do acumulador em MEM[2] (centenas)
			tmp(213) := STA  &  '0'  &  x"03";	-- STA @3 	# Armazena o valor do acumulador em MEM[3] (milhar)
			tmp(214) := STA  &  '0'  &  x"04";	-- STA @4 	# Armazena o valor do acumulador em MEM[4] (dezenas de milhar)
			tmp(215) := STA  &  '0'  &  x"05";	-- STA @5 	# Armazena o valor do acumulador em MEM[5] (centenas de milhar)
			tmp(216) := STA  &  '0'  &  x"06";	-- STA @6 	# Armazena o valor do acumulador em MEM[6] (flag de inibir contagem)
			tmp(217) := STA  &  '1'  &  x"01";	-- STA @257 	# Armazena o valor do acumulador no LEDR8
			tmp(218) := STA  &  '1'  &  x"02";	-- STA @258 	# Armazena o valor do acumulador em LEDR9
			tmp(219) := RET  &  '0'  &  x"00";	-- RET
			
			-- SUB-ROTINA PARA ATUALIZAR OS 7SEG
			tmp(220) := LDA  &  '0'  &  x"00";	-- LDA @0 	# Carrega o valor da unidade
			tmp(221) := STA  &  '1'  &  x"20";	-- STA @288 	# Guarda o valor das unidades no HEX0
			tmp(222) := LDA  &  '0'  &  x"01";	-- LDA @1 	# Carrega o valor da dezena
			tmp(223) := STA  &  '1'  &  x"21";	-- STA @289 	# Guarda o valor das dezenas no HEX1
			tmp(224) := LDA  &  '0'  &  x"02";	-- LDA @2 	# Carrega o valor da centena
			tmp(225) := STA  &  '1'  &  x"22";	-- STA @290 	# Guarda o valor das centenas no HEX2
			tmp(226) := LDA  &  '0'  &  x"03";	-- LDA @3 	# Carrega o valor do milhar
			tmp(227) := STA  &  '1'  &  x"23";	-- STA @291 	# Guarda o valor do milhar no HEX3
			tmp(228) := LDA  &  '0'  &  x"04";	-- LDA @4 	# Carrega o valor da dezena de milhar
			tmp(229) := STA  &  '1'  &  x"24";	-- STA @292 	# Guarda o valor das dezenas de milhar no HEX4
			tmp(230) := LDA  &  '0'  &  x"05";	-- LDA @5 	# Carrega o valor da centena de milhar
			tmp(231) := STA  &  '1'  &  x"25";	-- STA @293 	# Guarda o valor das centenas de milhar no HEX5
			tmp(232) := RET  &  '0'  &  x"00";	-- RET
			
			-- SUB-ROTINA PARA DECREMENTAR
			tmp(233) := STA  &  '1'  &  x"FC";	-- STA @508 	# Limpa a leitura do bot�o
			tmp(234) := LDA  &  '0'  &  x"00";	-- LDA @0 	# Carrega o valor de MEM[0] (unidades) no acumulador
			tmp(235) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	# Compara com o valor 0
			tmp(236) := JEQ  &  '0'  &  x"F0";	-- JEQ @240 	# Se for 0, vai para as dezenas
			tmp(237) := SUB  &  '0'  &  x"08";	-- SUB @8 	# Se n�o, faz substra��o de 1 das unidades
			tmp(238) := STA  &  '0'  &  x"00";	-- STA @0 	# Salva valor na MEM[0]
			tmp(239) := RET  &  '0'  &  x"00";	-- RET
			tmp(240) := LDI  &  '0'  &  x"09";	-- LDI $9 	# Carrega o valor 9 no imediato
			tmp(241) := STA  &  '0'  &  x"00";	-- STA @0 	# Salva na mem�ria[0] - unidades
			tmp(242) := LDA  &  '0'  &  x"01";	-- LDA @1 	# Carrega o valor de MEM[1] (dezenas) no acumulador
			tmp(243) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	# Compara com o valor 0
			tmp(244) := JEQ  &  '0'  &  x"F8";	-- JEQ @248 	# Se for 0, vai para as centenas
			tmp(245) := SUB  &  '0'  &  x"08";	-- SUB @8 	# Se n�o, faz substra��o de 1 das dezenas
			tmp(246) := STA  &  '0'  &  x"01";	-- STA @1 	# Salva valor na MEM[1]
			tmp(247) := RET  &  '0'  &  x"00";	-- RET
			tmp(248) := LDI  &  '0'  &  x"09";	-- LDI $9 	# Carrega o valor 9 no imediato
			tmp(249) := STA  &  '0'  &  x"01";	-- STA @1 	# Salva na mem�ria[1] - dezenas
			tmp(250) := LDA  &  '0'  &  x"02";	-- LDA @2 	# Carrega o valor de MEM[1] (centenas) no acumulador
			tmp(251) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	# Compara com o valor 0
			tmp(252) := JEQ  &  '1'  &  x"00";	-- JEQ @256 	# Se for 0, vai para as milhares
			tmp(253) := SUB  &  '0'  &  x"08";	-- SUB @8 	# Se n�o, faz substra��o de 1 das dezenas
			tmp(254) := STA  &  '0'  &  x"02";	-- STA @2 	# Salva valor na MEM[1]
			tmp(255) := RET  &  '0'  &  x"00";	-- RET
			tmp(256) := LDI  &  '0'  &  x"09";	-- LDI $9 	# Carrega o valor 9 no imediato
			tmp(257) := STA  &  '0'  &  x"02";	-- STA @2 	# Salva na mem�ria[2] - centenas
			tmp(258) := LDA  &  '0'  &  x"03";	-- LDA @3 	# Carrega o valor de MEM[3] (centenas) no acumulador
			tmp(259) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	# Compara com o valor 0
			tmp(260) := JEQ  &  '1'  &  x"08";	-- JEQ @264 	# Se for 0, vai para as dezenas milhares
			tmp(261) := SUB  &  '0'  &  x"08";	-- SUB @8 	# Se n�o, faz substra��o de 1 das milhares
			tmp(262) := STA  &  '0'  &  x"03";	-- STA @3 	# Salva valor na MEM[3]
			tmp(263) := RET  &  '0'  &  x"00";	-- RET
			tmp(264) := LDI  &  '0'  &  x"09";	-- LDI $9 	# Carrega o valor 9 no imediato
			tmp(265) := STA  &  '0'  &  x"03";	-- STA @3 	# Salva na mem�ria[3] - milhares
			tmp(266) := LDA  &  '0'  &  x"04";	-- LDA @4 	# Carrega o valor de MEM[4] (dezenas de milhar) no acumulador
			tmp(267) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	# Compara com o valor 0
			tmp(268) := JEQ  &  '1'  &  x"10";	-- JEQ @272 	# Se for 0, vai para as centenas de milhares
			tmp(269) := SUB  &  '0'  &  x"08";	-- SUB @8 	# Se n�o, faz substra��o de 1 das dezenas de milhares
			tmp(270) := STA  &  '0'  &  x"04";	-- STA @4 	# Salva valor na MEM[3]
			tmp(271) := RET  &  '0'  &  x"00";	-- RET
			tmp(272) := LDI  &  '0'  &  x"09";	-- LDI $9 	# Carrega o valor 9 no imediato
			tmp(273) := STA  &  '0'  &  x"04";	-- STA @4 	# Salva na mem�ria[4] - dezenas de milhares
			tmp(274) := LDA  &  '0'  &  x"05";	-- LDA @5 	# Carrega o valor de MEM[5] (centenas de milhar) no acumulador
			tmp(275) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	# Compara com o valor 0
			tmp(276) := JEQ  &  '1'  &  x"17";	-- JEQ @279 	# Se for 0, j� deixa tudo 0
			tmp(277) := SUB  &  '0'  &  x"08";	-- SUB @8 	# Se n�o, faz substra��o de 1 das centenas de milhares
			tmp(278) := STA  &  '0'  &  x"05";	-- STA @5 	# Salva valor na MEM[5]
			tmp(279) := LDA  &  '0'  &  x"07";	-- LDA @7 	#Carrega o valor 0
			tmp(280) := STA  &  '0'  &  x"00";	-- STA @0 	#Zera as unidades
			tmp(281) := STA  &  '0'  &  x"01";	-- STA @1 	#Zera as dezenas
			tmp(282) := STA  &  '0'  &  x"02";	-- STA @2 	#Zera as centenas
			tmp(283) := STA  &  '0'  &  x"03";	-- STA @3 	#Zera os milhares
			tmp(284) := STA  &  '0'  &  x"04";	-- STA @4 	#Zera as dezenas de milhar
			tmp(285) := STA  &  '0'  &  x"05";	-- STA @5 	#Zera as centenas de milhar
			tmp(286) := RET  &  '0'  &  x"00";	-- RET

		  return tmp;
		  
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;