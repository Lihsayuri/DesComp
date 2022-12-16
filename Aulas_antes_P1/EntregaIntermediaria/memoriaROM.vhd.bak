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
  constant ANDX : std_logic_vector(3 downto 0) := "1110";

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
			tmp(34) := JEQ  &  '0'  &  x"28";	-- JEQ @40 	# Se for igual, pula pra leitura de config limite
			tmp(35) := LDA  &  '1'  &  x"60";	-- LDA @352 	# Carrega o acumulador com a leitura do bot�o KEY0
			tmp(36) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	# Compara com 0, se igual 0 -> bot�o n�o apertado. igual a 1 -> vai pra contagem
			tmp(37) := JEQ  &  '0'  &  x"28";	-- JEQ @40 	# Se for 0, vai ler a proxima chave
			tmp(38) := JSR  &  '0'  &  x"35";	-- JSR INCREMENTO    	# Se for 1, vai pra sub-rotina de incremento
			tmp(39) := NOP  &  '0'  &  x"00";	-- NOP      	# Aqui � onde o RET volta
			tmp(40) := LDA  &  '1'  &  x"61";	-- LDA @353  	# Carrega o acumulador com a leitura do bot�o KEY1
			tmp(41) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	# Compara com 0, se igual 0 -> bot�o n�o apertado. igual a 1 -> vai pra configuracao do limite de contagem
			tmp(42) := JEQ  &  '0'  &  x"2D";	-- JEQ @45 	# Se for 0, vai pro LIMITE - JSR DE BAIXO
			tmp(43) := JSR  &  '0'  &  x"72";	-- JSR CONFIG_LIMITE     	# Se for 1, vai pra sub-rotina de configuracao
			tmp(44) := NOP  &  '0'  &  x"00";	-- NOP      	# Onde o RET volta
			tmp(45) := JSR  &  '0'  &  x"A6";	-- JSR VERIF_LIMITE    	# Chama a sub rotina para verificar o limite
			tmp(46) := NOP  &  '0'  &  x"00";	-- NOP 	# Aqui � onde o RET volta
			tmp(47) := LDA  &  '1'  &  x"64";	-- LDA @356 	# Carrega o acumulador com a leitura do bot�o FPGA_RESET 
			tmp(48) := CEQ  &  '0'  &  x"08";	-- CEQ @8    	# Compara com 1
			tmp(49) := JEQ  &  '0'  &  x"33";	-- JEQ @51  	# Se for 1, da� vai pra subrotina pra reiniciar a contagem
			tmp(50) := JSR  &  '0'  &  x"C2";	-- JSR RESET_CONTAG
			tmp(51) := JSR  &  '0'  &  x"CD";	-- JSR ATUALIZA_TELA
			tmp(52) := JMP  &  '0'  &  x"1F";	-- JMP LOOP_PRINCIPAL
			
			
			-- SUB-ROTINA DE INCREMENTO:
			tmp(53) := STA  &  '1'  &  x"FF";	-- STA @511 	# Limpa a leitura do bot�o
			tmp(54) := LDA  &  '0'  &  x"06";	-- LDA @6 	# Carregando o acumulador com o valor da flag de inibir
			tmp(55) := CEQ  &  '0'  &  x"08";	-- CEQ @8 	# Compara com 1 para ver se a flag est� ativada
			tmp(56) := JEQ  &  '0'  &  x"71";	-- JEQ @113 	#Vai pro RET final da funcao
			tmp(57) := LDA  &  '0'  &  x"00";	-- LDA @0 	# [UNIDADES] Carrega o valor de MEM[0] no acumulador 
			tmp(58) := SOMA  &  '0'  &  x"08";	-- SOMA @8 	# Soma valor das unidades com 1 e guarda em REG 
			tmp(59) := CEQ  &  '0'  &  x"09";	-- CEQ @9 	# Compara o valor do REG com 10, se for igual a 10, vai pras dezenas
			tmp(60) := JEQ  &  '0'  &  x"3F";	-- JEQ @63 	# Vai para Dezenas
			tmp(61) := STA  &  '0'  &  x"00";	-- STA @0 	# Se n�o for igual, guarda soma nas unidades
			tmp(62) := RET  &  '0'  &  x"00";	-- RET 	# E retorna
			tmp(63) := LDA  &  '0'  &  x"07";	-- LDA @7 	#Carrega 0 no REG
			tmp(64) := STA  &  '0'  &  x"00";	-- STA @0 	# Carrega 0 nas unidades
			tmp(65) := LDA  &  '0'  &  x"01";	-- LDA @1 	# [DEZENAS] Carrega o valor de MEM[1] no acumulador
			tmp(66) := SOMA  &  '0'  &  x"08";	-- SOMA @8 	# Soma valor das dezenas com 1 e guarda em REG
			tmp(67) := CEQ  &  '0'  &  x"09";	-- CEQ @9 	# Compara o valor do REG com 10, se for igual a 10, vai pras centenas
			tmp(68) := JEQ  &  '0'  &  x"47";	-- JEQ @71 	# Vai para Centenas
			tmp(69) := STA  &  '0'  &  x"01";	-- STA @1 	# Se n�o for igual, guarda nas dezenas
			tmp(70) := RET  &  '0'  &  x"00";	-- RET 	# E retorna
			tmp(71) := LDA  &  '0'  &  x"07";	-- LDA @7 	#Carrega 0 no REG
			tmp(72) := STA  &  '0'  &  x"01";	-- STA @1 	# Carrega 0 nas dezenas
			tmp(73) := LDA  &  '0'  &  x"02";	-- LDA @2 	# [CENTENAS] Carrega o valor de MEM[2] no acumulador
			tmp(74) := SOMA  &  '0'  &  x"08";	-- SOMA @8 	# Soma valor das centenas com 1 e guarda em REG
			tmp(75) := CEQ  &  '0'  &  x"09";	-- CEQ @9 	# Compara o valor do REG com 10, se for igual a 10, vai pros milhares
			tmp(76) := JEQ  &  '0'  &  x"4F";	-- JEQ @79 	# Vai para o Milhar
			tmp(77) := STA  &  '0'  &  x"02";	-- STA @2 	# Se n�o for igual, guarda nas centenas
			tmp(78) := RET  &  '0'  &  x"00";	-- RET 	# E retorna
			tmp(79) := LDA  &  '0'  &  x"07";	-- LDA @7 	#Carrega 0 no REG
			tmp(80) := STA  &  '0'  &  x"02";	-- STA @2 	# Carrega 0 nas centenas
			tmp(81) := LDA  &  '0'  &  x"03";	-- LDA @3 	# Carrega o valor de MEM[3] (milhar) no acumulador
			tmp(82) := SOMA  &  '0'  &  x"08";	-- SOMA @8 	# Soma valor dos milhares com 1 e guarda em REG
			tmp(83) := CEQ  &  '0'  &  x"09";	-- CEQ @9 	# Compara o valor do REG com 10, se for igual a 10, vai pros dezenas de milhar
			tmp(84) := JEQ  &  '0'  &  x"57";	-- JEQ @87 	# Vai para o DezMilhar
			tmp(85) := STA  &  '0'  &  x"03";	-- STA @3 	# Se n�o for igual, guarda nas centenas
			tmp(86) := RET  &  '0'  &  x"00";	-- RET 	# E retorna
			tmp(87) := LDA  &  '0'  &  x"07";	-- LDA @7 	#Carrega 0 no REG
			tmp(88) := STA  &  '0'  &  x"03";	-- STA @3 	# Carrega 0 no milhar
			tmp(89) := LDA  &  '0'  &  x"04";	-- LDA @4 	# Carrega o valor de MEM[4] (dezenas de milhar) no acumulador
			tmp(90) := SOMA  &  '0'  &  x"08";	-- SOMA @8 	# Soma valor dos milhares com 1 e guarda em REG
			tmp(91) := CEQ  &  '0'  &  x"09";	-- CEQ @9 	# Compara o valor do REG com 10, se for igual a 10, vai pros centenas de milhar
			tmp(92) := JEQ  &  '0'  &  x"5F";	-- JEQ @95 	# Vai pro CentMilhar
			tmp(93) := STA  &  '0'  &  x"04";	-- STA @4 	# Se n�o for igual, guarda nas centenas
			tmp(94) := RET  &  '0'  &  x"00";	-- RET 	# E retorna
			tmp(95) := LDA  &  '0'  &  x"07";	-- LDA @7 	#Carrega 0 no REG
			tmp(96) := STA  &  '0'  &  x"04";	-- STA @4 	# Carrega 0 nas dezenas de milhar
			tmp(97) := LDA  &  '0'  &  x"05";	-- LDA @5 	# Carrega o valor de MEM[5] (centenas de milhar) no acumulador
			tmp(98) := SOMA  &  '0'  &  x"08";	-- SOMA @8 	# Soma valor dos milhares com 1 e guarda em REG
			tmp(99) := CEQ  &  '0'  &  x"09";	-- CEQ @9 	# Compara o valor do REG com 10, se for igual a 10, vai pro LIMITE
			tmp(100) := JEQ  &  '0'  &  x"67";	-- JEQ @103 	# Vai ativar flag e acender LED
			tmp(101) := STA  &  '0'  &  x"05";	-- STA @5 	# Se n�o for igual, guarda nas centenas
			tmp(102) := RET  &  '0'  &  x"00";	-- RET 	# E retorna
			tmp(103) := LDA  &  '0'  &  x"08";	-- LDA @8 	# Carrega a constante 1 no REG
			tmp(104) := STA  &  '0'  &  x"06";	-- STA @6 	# Ativa a flag de inibir a contagem
			tmp(105) := STA  &  '1'  &  x"02";	-- STA @258 	# Armazena o valor do acumulador em LEDR9 indicando OVERFLOW
			tmp(106) := LDI  &  '0'  &  x"09";	-- LDI $9 	# N�o deixar somar, voltar pro m�ximo m�ximo permitido
			tmp(107) := STA  &  '0'  &  x"00";	-- STA @0 	#Guarda 9 nas unidades
			tmp(108) := STA  &  '0'  &  x"01";	-- STA @1 	#Guarda 9 nas dezenas
			tmp(109) := STA  &  '0'  &  x"02";	-- STA @2 	#Guarda 9 nas centenas
			tmp(110) := STA  &  '0'  &  x"03";	-- STA @3 	#Guarda 9 nos milhares
			tmp(111) := STA  &  '0'  &  x"04";	-- STA @4 	#Guarda 9 nas dezenas de milhar
			tmp(112) := STA  &  '0'  &  x"05";	-- STA @5 	#Guarda 9 nas centenas de milhar
			tmp(113) := RET  &  '0'  &  x"00";	-- RET
			
			--SUB-ROTINA CONFIGURAÇÃO DE LIMITE
			
			tmp(114) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1
			tmp(115) := LDA  &  '0'  &  x"08";	-- LDA @8 	# Carrega 1
			tmp(116) := STA  &  '1'  &  x"00";	-- STA @256 	# Liga o LED 0 ~ 7 dizendo que est� pronto pra ler a chave das unidades
			tmp(117) := LDA  &  '1'  &  x"61";	-- LDA @353 	# Guarda a leitura de KEY1
			tmp(118) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	#Compara com o valor 0
			tmp(119) := LDA  &  '1'  &  x"40";	-- LDA @320 	# Ler as chaves e jogar o valor no REG
			tmp(120) := JEQ  &  '0'  &  x"73";	-- JEQ @115
			tmp(121) := STA  &  '0'  &  x"0A";	-- STA @10 	# Guarda o valor limite nas unidades
			
			tmp(122) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1
			tmp(123) := LDI  &  '0'  &  x"02";	-- LDI $2 	# Carrega 2
			tmp(124) := STA  &  '1'  &  x"00";	-- STA @256 	# Liga o LED 0 ~ 7 dizendo que est� pronto pra ler a chave das unidades
			tmp(125) := LDA  &  '1'  &  x"61";	-- LDA @353 	# Guarda a leitura de KEY1
			tmp(126) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	#Compara com o valor 0
			tmp(127) := LDA  &  '1'  &  x"40";	-- LDA @320 	# L� de novo o valor das chaves e joga no REG
			tmp(128) := JEQ  &  '0'  &  x"7B";	-- JEQ @123 	# Volta pro inicio desse bloco
			tmp(129) := STA  &  '0'  &  x"0B";	-- STA @11 	# Guarda o valor limite nas dezenas
			
			tmp(130) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1
			tmp(131) := LDI  &  '0'  &  x"04";	-- LDI $4 	# Carrega 4
			tmp(132) := STA  &  '1'  &  x"00";	-- STA @256 	# Liga o LED 0 ~ 7 dizendo que est� pronto pra ler a chave das unidades
			tmp(133) := LDA  &  '1'  &  x"61";	-- LDA @353 	# Guarda a leitura de KEY1
			tmp(134) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	#Compara com o valor 0
			tmp(135) := LDA  &  '1'  &  x"40";	-- LDA @320 	# L� de novo o valor das chaves e joga no REG
			tmp(136) := JEQ  &  '0'  &  x"83";	-- JEQ @131  	# Volta pro inicio desse bloco
			tmp(137) := STA  &  '0'  &  x"0C";	-- STA @12 	# Guarda o valor limite nas centenas
			
			tmp(138) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1
			tmp(139) := LDI  &  '0'  &  x"08";	-- LDI $8 	# Carrega 8
			tmp(140) := STA  &  '1'  &  x"00";	-- STA @256 	# Liga o LED 0 ~ 7 dizendo que est� pronto pra ler a chave das unidades
			tmp(141) := LDA  &  '1'  &  x"61";	-- LDA @353 	# Guarda a leitura de KEY1
			tmp(142) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	#Compara com o valor 0
			tmp(143) := LDA  &  '1'  &  x"40";	-- LDA @320 	# L� de novo o valor das chaves e joga no REG
			tmp(144) := JEQ  &  '0'  &  x"8B";	-- JEQ @139
			tmp(145) := STA  &  '0'  &  x"0D";	-- STA @13 	# Guarda o valor limite nas milhar
			
			tmp(146) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1 
			tmp(147) := LDI  &  '0'  &  x"10";	-- LDI $16 	# Carrega 16
			tmp(148) := STA  &  '1'  &  x"00";	-- STA @256 	# Liga o LED 0 ~ 7 dizendo que est� pronto pra ler a chave das unidades
			tmp(149) := LDA  &  '1'  &  x"61";	-- LDA @353 	# Guarda a leitura de KEY1
			tmp(150) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	#Compara com o valor 0
			tmp(151) := LDA  &  '1'  &  x"40";	-- LDA @320 	# L� de novo o valor das chaves e joga no REG
			tmp(152) := JEQ  &  '0'  &  x"93";	-- JEQ @147
			tmp(153) := STA  &  '0'  &  x"0E";	-- STA @14 	# Guarda o valor limite nas dezena de milhar
			
			tmp(154) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1
			tmp(155) := LDI  &  '0'  &  x"20";	-- LDI $32 	# Carrega 32
			tmp(156) := STA  &  '1'  &  x"00";	-- STA @256 	# Liga o LED 0 ~ 7 dizendo que est� pronto pra ler a chave das unidades
			tmp(157) := LDA  &  '1'  &  x"61";	-- LDA @353 	# Guarda a leitura de KEY1
			tmp(158) := CEQ  &  '0'  &  x"07";	-- CEQ @7 	#Compara com o valor 0
			tmp(159) := LDA  &  '1'  &  x"40";	-- LDA @320 	# L� de novo o valor das chaves e joga no REG
			tmp(160) := JEQ  &  '0'  &  x"9B";	-- JEQ @155
			tmp(161) := STA  &  '0'  &  x"0F";	-- STA @15 	# Guarda o valor limite nas dezena de milhar
			
			tmp(162) := STA  &  '1'  &  x"FE";	-- STA @510 	# Para limpar a leitura do bot�o 1
			tmp(163) := LDA  &  '0'  &  x"07";	-- LDA @7 	# Carrega o 0 
			tmp(164) := STA  &  '1'  &  x"00";	-- STA @256 	# Desliga os LEDS
			tmp(165) := RET  &  '0'  &  x"00";	-- RET
			
			
			-- SUB-ROTINA CONFERE LIMITE
			
			tmp(166) := LDA  &  '0'  &  x"00";	-- LDA @0 	#Carrega as unidades
			tmp(167) := CEQ  &  '0'  &  x"0A";	-- CEQ @10 	#Compara com o limite das unidades
			tmp(168) := JEQ  &  '0'  &  x"AA";	-- JEQ @170 	# Pula para a pr�xima confer�ncia
			tmp(169) := RET  &  '0'  &  x"00";	-- RET 	# Caso o contr�rio j� Retorna
			tmp(170) := LDA  &  '0'  &  x"01";	-- LDA @1 	#Carrega as dezenas
			tmp(171) := CEQ  &  '0'  &  x"0B";	-- CEQ @11 	#Compara com o limite das dezenas
			tmp(172) := JEQ  &  '0'  &  x"AE";	-- JEQ @174 	# Pula para a pr�xima confer�ncia
			tmp(173) := RET  &  '0'  &  x"00";	-- RET 	# Caso o contr�rio j� Retorna
			tmp(174) := LDA  &  '0'  &  x"02";	-- LDA @2 	#Carrega as centenas
			tmp(175) := CEQ  &  '0'  &  x"0C";	-- CEQ @12 	#Compara com o limite das centenas
			tmp(176) := JEQ  &  '0'  &  x"B2";	-- JEQ @178 	# Pula para a pr�xima confer�ncia
			tmp(177) := RET  &  '0'  &  x"00";	-- RET 	# Caso o contr�rio j� Retorna
			tmp(178) := LDA  &  '0'  &  x"03";	-- LDA @3 	#Carrega o milhar
			tmp(179) := CEQ  &  '0'  &  x"0D";	-- CEQ @13 	#Compara com o limite dos milhares
			tmp(180) := JEQ  &  '0'  &  x"B6";	-- JEQ @182 	# Pula para a pr�xima confer�ncia
			tmp(181) := RET  &  '0'  &  x"00";	-- RET 	# Caso o contr�rio j� Retorna
			tmp(182) := LDA  &  '0'  &  x"04";	-- LDA @4 	#Carrega as dezenas de milhar
			tmp(183) := CEQ  &  '0'  &  x"0E";	-- CEQ @14 	#Compara com o limite das dezenas de milhar
			tmp(184) := JEQ  &  '0'  &  x"BA";	-- JEQ @186 	# Pula para a pr�xima confer�ncia
			tmp(185) := RET  &  '0'  &  x"00";	-- RET 	# Caso o contr�rio j� Retorna
			tmp(186) := LDA  &  '0'  &  x"05";	-- LDA @5 	#Carrega as dezenas de centenas de milhar
			tmp(187) := CEQ  &  '0'  &  x"0F";	-- CEQ @15 	#Compara com o limite das centenas de milhar
			tmp(188) := JEQ  &  '0'  &  x"BE";	-- JEQ @190 	# Pula para a pr�xima linha de setar flag
			tmp(189) := RET  &  '0'  &  x"00";	-- RET 	# Caso o contr�rio j� Retorna
			tmp(190) := LDA  &  '0'  &  x"08";	-- LDA @8
			tmp(191) := STA  &  '1'  &  x"01";	-- STA @257 	# Armazena o valor do acumulador no LEDR8
			tmp(192) := STA  &  '0'  &  x"06";	-- STA @6 	#  flag de inibir contagem vai pra 1
			tmp(193) := RET  &  '0'  &  x"00";	-- RET
			
			-- REINICIA A CONTAGEM: 
			tmp(194) := LDA  &  '0'  &  x"07";	-- LDA @7 	# Guarda o 0 no registrador
			tmp(195) := STA  &  '0'  &  x"00";	-- STA @0 	# Armazena o valor do acumulador em MEM[0] (unidades)
			tmp(196) := STA  &  '0'  &  x"01";	-- STA @1 	# Armazena o valor do acumulador em MEM[1] (dezenas)
			tmp(197) := STA  &  '0'  &  x"02";	-- STA @2 	# Armazena o valor do acumulador em MEM[2] (centenas)
			tmp(198) := STA  &  '0'  &  x"03";	-- STA @3 	# Armazena o valor do acumulador em MEM[3] (milhar)
			tmp(199) := STA  &  '0'  &  x"04";	-- STA @4 	# Armazena o valor do acumulador em MEM[4] (dezenas de milhar)
			tmp(200) := STA  &  '0'  &  x"05";	-- STA @5 	# Armazena o valor do acumulador em MEM[5] (centenas de milhar)
			tmp(201) := STA  &  '0'  &  x"06";	-- STA @6 	# Armazena o valor do acumulador em MEM[6] (flag de inibir contagem)
			tmp(202) := STA  &  '1'  &  x"01";	-- STA @257 	# Armazena o valor do acumulador no LEDR8
			tmp(203) := STA  &  '1'  &  x"02";	-- STA @258 	# Armazena o valor do acumulador em LEDR9
			tmp(204) := RET  &  '0'  &  x"00";	-- RET

			-- SUB-ROTINA PARA ATUALIZAR OS 7SEG
			tmp(205) := LDA  &  '0'  &  x"00";	-- LDA @0 	# Carrega o valor da unidade
			tmp(206) := STA  &  '1'  &  x"20";	-- STA @288 	# Guarda o valor das unidades no HEX0
			tmp(207) := LDA  &  '0'  &  x"01";	-- LDA @1 	# Carrega o valor da dezena
			tmp(208) := STA  &  '1'  &  x"21";	-- STA @289 	# Guarda o valor das dezenas no HEX1
			tmp(209) := LDA  &  '0'  &  x"02";	-- LDA @2 	# Carrega o valor da centena
			tmp(210) := STA  &  '1'  &  x"22";	-- STA @290 	# Guarda o valor das centenas no HEX2
			tmp(211) := LDA  &  '0'  &  x"03";	-- LDA @3 	# Carrega o valor do milhar
			tmp(212) := STA  &  '1'  &  x"23";	-- STA @291 	# Guarda o valor do milhar no HEX3
			tmp(213) := LDA  &  '0'  &  x"04";	-- LDA @4 	# Carrega o valor da dezena de milhar
			tmp(214) := STA  &  '1'  &  x"24";	-- STA @292 	# Guarda o valor das dezenas de milhar no HEX4
			tmp(215) := LDA  &  '0'  &  x"05";	-- LDA @5 	# Carrega o valor da centena de milhar
			tmp(216) := STA  &  '1'  &  x"25";	-- STA @293 	# Guarda o valor das centenas de milhar no HEX5
			tmp(217) := RET  &  '0'  &  x"00";	-- RET


		  return tmp;
		  
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;