library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(13 downto 0)
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
  constant CLT : std_logic_vector (3 downto 0) := "1100"; -- CLT
  constant JLT : std_logic_vector (3 downto 0) := "1101"; -- JLT. OBS: ainda temos 1110 e 1111
  constant ADDI : std_logic_vector (3 downto 0) := "1110"; 
  constant SUBI : std_logic_vector (3 downto 0) := "1111";

  begin
  
  -- MUX HABILITA OPERACAO // DECODER : LER ESCREVER
  
	    -- HabRET JMP RET JSR JEQ JLT SelMux HAB_A OPeracao habFlag= habFlag< RD WR
		 
saida <= "000000X0XX0000" when opcode = NOP else  
         "00000001100010" when opcode = LDA else  
         "00000001010010" when opcode = SOMA else 
         "00000001000010" when opcode = SUB else
			"00000011110010" when opcode = ANDI else 
			"00000011100000" when opcode = LDI else
			"00000000XX0001" when opcode = STA else
			"010000X0XX0000" when opcode = JMP else
			"000010X0XX0000" when opcode = JEQ else
			"00000000001010" when opcode = CEQ else
			"100100X0XX0000" when opcode = JSR else
			"001000X0XX0000" when opcode = RET else
			"00000000000110" when opcode = CLT else
			"000001X0XX0000" when opcode = JLT else
			"00000011010000" when opcode = ADDI else
			"00000011000000" when opcode = SUBI else
         "000000X0XX0000";  -- NOP para os opcodes Indefinidos
end architecture;