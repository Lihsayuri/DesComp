library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  port   (
	 OPCODE : in std_logic_vector(5 downto 0);
	 OUTPUT : out std_logic_vector(5 downto 0)
  );
end entity;

architecture arch_name of Decoder is
  constant LW    : std_logic_vector(5 downto 0) := "100011";
  constant SW    : std_logic_vector(5 downto 0) := "101011";
  constant BEQ   : std_logic_vector(5 downto 0) := "000100";
  
  -- write_REG(1) OP(2) habFlagEqual read_RAM write_RAM
  

begin

	OUTPUT <= "110010" when OPCODE = LW else
			    "0XX001" when OPCODE = SW else
				 "000110" when OPCODE = BEQ else
				 "000000";
	
	
end architecture;