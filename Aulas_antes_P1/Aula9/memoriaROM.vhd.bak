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
		tmp(0):=  LDI     & '0' &     x"01";       --      Carrega o acumulador com o valor 1
		tmp(1):=  STA     & '0' &     x"01";       --      Armazena o valor do acumulador em MEM[1] (constante 1)
		tmp(2):=  NOP     & '0' &     x"00";       --
		tmp(3):=  LDA     & '1' &     x"60";       --      Carrega o acumulador com a leitura do botão KEY0
		tmp(4):=  STA     & '1' &     x"20";       --      Armazena o valor lido em HEX0 (para verificar erros de leitura)
		tmp(5):=  ANDX    & '0' &     x"01";       --		Utiliza a máscara b0000_0001 para limpar todos os bits menos o bit 0
		tmp(6):=  STA     & '1' &     x"21"; 		 -- 	   Armazena o valor mascarado em HEX1  
		tmp(7):=  NOP     & '0' &     x"00";       --
		tmp(8):=  JMP     & '0' &     x"02";       --           Fecha o laço principal, faz uma nova leitura de KEY0	
		
		  return tmp;
		  
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;