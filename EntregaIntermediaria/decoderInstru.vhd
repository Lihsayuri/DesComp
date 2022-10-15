library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(12 downto 0)
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
  constant JSR : std_logic_vector(3 downto 0) := "1001";
  constant RET : std_logic_vector(3 downto 0) := "1010";
  constant ANDI : std_logic_vector(3 downto 0) := "1011"; -- ANDI
  constant ADDI : std_logic_vector (3 downto 0) := "1011"; 

  begin
  
  -- MUX HABILITA OPERACAO // DECODER : LER ESCREVER
saida <= "00000X0XXX000" when opcode = NOP else  -- SelMUX HabilitaA Reset Operacao
         "0000001010010" when opcode = LDA else  -- operação final não importa/ carrega Y: A
         "0000001001010" when opcode = SOMA else -- soma valor da mem com acumulador
         "0000001000010" when opcode = SUB else
			"0000011100010" when opcode = ANDI else -- AND COM O IMEDIATO
			"0000011010000" when opcode = LDI else
			"0000000XXX001" when opcode = STA else
			"01000X0XXX000" when opcode = JMP else
			"00001X0XXX000" when opcode = JEQ else
			"0000000000110" when opcode = CEQ else
			"10010X0XXX000" when opcode = JSR else
			"00100X0XXX000" when opcode = RET else
			"0000011001000" when opcode = ADDI else
         "00000X0XXX000";  -- NOP para os opcodes Indefinidos
end architecture;