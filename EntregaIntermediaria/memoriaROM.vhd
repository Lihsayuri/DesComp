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

			

		  return tmp;
		  
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;