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
		  
		  tmp(0) := LDI & '0' & x"01";
		  tmp(1) := STA & '0' & x"00"; -- MEM[0] = 1
		  tmp(2) := SOMA & '0' & x"00";
		  tmp(3) := STA & '1' & x"20"; -- MEM[288] = 1 HEX0
		  tmp(4) := SOMA & '0' & x"00";
		  tmp(5) := STA & '1' & x"21"; -- MEM[289] = 1 HEX1
		  tmp(6) := SOMA & '0' & x"00";
		  tmp(7) := STA & '1' & x"22"; -- MEM[290] = 1 HEX1
		  tmp(8) := SOMA & '0' & x"00";
		  tmp(9) := STA & '1' & x"23"; -- MEM[291] = 1 HEX1
		  tmp(10) := SOMA & '0' & x"00";
		  tmp(11) := STA & '1' & x"24"; -- MEM[292] = 1 HEX1
		  tmp(12) := SOMA & '0' & x"00";
		  tmp(13) := STA & '1' & x"25"; -- MEM[293] = 1 HEX1
		  tmp(14) := JMP & '0' & x"02";
		  
		  
		  return tmp;
		  
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;