library ieee;
use ieee.std_logic_1164.all;

entity Contador is
  port ( 
			entradaAtual : in std_logic_vector(7 downto 0);
         saida : out std_logic_vector(7 downto 0);
			KEY     : in std_logic_vector(3 downto 0);
			CLOCK_50 : in std_logic
  );
end entity;

architecture comportamento of Contador is
	signal auxCLK: std_logic;
	signal novaEntrada, saidaValue : std_logic_vector(7 downto 0);
 begin
 
 somadorConstante :  entity work.somaConstante  generic map (larguraDados => 8, constante => 1)
        port map( entrada => entradaAtual, saida => saida); 
  
 detectorSub0: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => auxCLK);
 
 saidaValue <= saida;
 entradaAtual <= saidaValue;

end architecture;