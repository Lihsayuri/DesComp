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
		tmp(0) := x"1"  &  '1'  &  x"40";	-- LDA @320				#Carrega o acumulador com a leitura das chaves SW0 até SW7
		tmp(1) := x"5"  &  '1'  &  x"20";	-- STA @288				#Armazena o valor do acumulador no display HEX0
		tmp(2) := x"1"  &  '1'  &  x"41";	-- LDA @321				#Carrega o acumulador com a leitura da chave SW8
		tmp(3) := x"5"  &  '1'  &  x"21";	-- STA @289				#Armazena o valor do acumulador no display HEX1
		tmp(4) := x"1"  &  '1'  &  x"42";	-- LDA @322				#Carrega o acumulador com a leitura da chave SW9
		tmp(5) := x"5"  &  '1'  &  x"22";	-- STA @290				#Armazena o valor do acumulador no display HEX2
		tmp(6) := x"1"  &  '1'  &  x"60";	-- LDA @352				#Carrega o acumulador com a leitura do botão KEY0
		tmp(7) := x"5"  &  '1'  &  x"23";	-- STA @291				#Armazena o valor do acumulador no display HEX3
		tmp(8) := x"1"  &  '1'  &  x"61";	-- LDA @353				#Carrega o acumulador com a leitura do botão KEY1
		tmp(9) := x"5"  &  '1'  &  x"24";	-- STA @292				#Armazena o valor do acumulador no display HEX4
		tmp(10) := x"1"  &  '1'  &  x"62";	-- LDA @354				#Carrega o acumulador com a leitura do botão KEY2
		tmp(11) := x"5"  &  '1'  &  x"25";	-- STA @293				#Armazena o valor do acumulador no display HEX5
		tmp(12) := x"1"  &  '1'  &  x"63";	-- LDA @355				#Carrega o acumulador com a leitura do botão KEY3
		tmp(13) := x"5"  &  '1'  &  x"01";	-- STA @257				#Armazena o valor do bit0 do acumulador no LDR8
		tmp(14) := x"1"  &  '1'  &  x"64";	-- LDA @356				#Carrega o acumulador com a leitura do botão FPGA_RESET
		tmp(15) := x"5"  &  '1'  &  x"02";	-- STA @258				#Armazena o valor do bit0 do acumulador no LDR9
		tmp(16) := x"6"  &  '0'  &  x"00";	-- JMP @0				#Desvia e continua atualizando os valores das entradas nas saídas
		
		  return tmp;
		  
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;