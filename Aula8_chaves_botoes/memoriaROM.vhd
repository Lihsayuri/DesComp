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

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
		  
		tmp(0):=  LDI     & '0' &     x"00";       --           Carrega o acumulador com o valor 0
		tmp(1):=  STA     & '0' &     x"00";       --           Armazena o valor do acumulador em MEM[0] (constante 0)
		tmp(2):=  STA     & '0' &     x"02";       --           Armazena o valor do acumulador em MEM[2] (contador)
		tmp(3):=  LDI     & '0' &     x"01";       --           Carrega o acumulador com o valor 1
		tmp(4):=  STA     & '0' &     x"01";       --           Armazena o valor do acumulador em MEM[1] (constante 1)
		tmp(5):=  NOP     & '0' &     x"00";       --
		tmp(6):=  LDA     & '1' &     x"60";       --        Carrega o acumulador com a leitura do botão KEY0
		tmp(7):=  STA     & '1' &     x"20";       --           Compara com o valor de MEM[0] (constante 0)
		tmp(8):=  CEQ     & '0' &     x"00";       --           Compara com o valor de MEM[0] (constante 0)
		tmp(9):=  JEQ     & '0' &     x"0a";       --          Desvia se igual a 0 (botão não foi pressionado)
		tmp(10):=  JSR     & '0' &     x"20";       --          O botão foi pressionado, chama a sub-rotina de incremento
		tmp(11):=  NOP     & '0' &     x"00";       --       Retorno da sub-rotina de incremento
		tmp(12):=  JMP     & '0' &     x"05";       --           Fecha o laço principal, faz uma nova leitura de KEY0
		tmp(32):=  STA     & '1' &     x"ff";       --         Limpa a leitura do botão
		tmp(33):=  LDA     & '0' &     x"02";       --           Carrega o valor de MEM[2] (contador)
		tmp(34):=  SOMA    & '0' &     x"01";       --          Soma com a constante em MEM[1]
		tmp(35):=  STA     & '0' &     x"02";       --           Salva o incremento em MEM[2] (contador)
		tmp(36):=  STA     & '1' &     x"02";       --         Armazena o valor do bit0 do acumulador no LDR9
		tmp(37):=  RET     & '0' &     x"00";       --       Retorna da sub-rotina
		  
		  return tmp;
		  
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;