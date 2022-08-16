library ieee;
use ieee.std_logic_1164.all;

entity decoder1x4 is
  port (
    addr : in std_logic_vector(1 downto 0);
    saida_Decoder : out std_logic_vector(3 downto 0)
  );
end entity;

architecture comportamento of decoder1x4 is
  begin
    saida_Decoder(0) <= not(addr(1)) AND not(addr(0));
   saida_Decoder(1) <= not(addr(1)) AND addr(0);
   saida_Decoder(2) <= addr(1) AND not(addr(0));
   saida_Decoder(3) <= addr(1) AND addr(0);
end architecture;