library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(8 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI : std_logic_vector(3 downto 0) := "0100";
  constant STA : std_logic_vector(3 downto 0) := "0101";
  constant JMP : std_logic_vector(3 downto 0) := "0110";
  constant JEQ : std_logic_vector(3 downto 0) := "0111";
  constant CEQ : std_logic_vector(3 downto 0) := "1000";

  begin
  
  -- MUX HABILITA OPERACAO // DECODER : LER ESCREVER
saida <= "00X0XX000" when opcode = NOP else  -- SelMUX HabilitaA Reset Operacao
         "000110010" when opcode = LDA else  -- operação final não importa/ carrega Y: A
         "000101010" when opcode = SOMA else -- soma valor da mem com acumulador
         "000100010" when opcode = SUB else
			"001110000" when opcode = LDI else
			"0000XX001" when opcode = STA else
			"10X0XX000" when opcode = JMP else
			"01X0XX000" when opcode = JEQ else
			"000000110" when opcode = CEQ else
         "00X0XX000";  -- NOP para os opcodes Indefinidos
end architecture;