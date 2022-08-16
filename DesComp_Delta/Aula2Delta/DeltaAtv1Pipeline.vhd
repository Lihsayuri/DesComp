library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DeltaAtv1Pipeline is
	port	(
		-- Input ports descriminador de borda/ registrador, etc
		SW  : in std_logic_vector(9 downto 0);
		KEY     : in std_logic_vector(3 downto 0);
		CLOCK_50 : in std_logic;
		-- Output ports
		HEX0, HEX1, HEX2  : out std_logic_vector(6 downto 0)
	);
	
end entity;

architecture arch_name of DeltaAtv1Pipeline is
	signal chv_H0, R1_H1, R2_H2: std_logic_vector (3 downto 0);
	signal auxCLK: std_logic;

begin


 -- é uma entidade que tá no work, a biblioteca do projeto atual. 
 -- sinal local é aquilo que tenho que criar
 R1  : entity work.registradorGenerico  generic map (larguraDados => 4)
		  port map (DIN => chv_H0, DOUT => R1_H1, ENABLE => '1', CLK => auxCLK, RST => '0');
		
 R2  : entity work.registradorGenerico  generic map (larguraDados => 4)
		  port map (DIN => R1_H1, DOUT => R2_H2, ENABLE => '1', CLK => auxCLK, RST => '0');

 H0 :  entity work.conversorHex7Seg
         port map(dadoHex => chv_H0,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);
					  
 H1 :  entity work.conversorHex7Seg
         port map(dadoHex => R1_H1,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);
					  
H2 :  entity work.conversorHex7Seg
         port map(dadoHex => R2_H2,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);
					  
					  
					  
detectorSub0: work.edgeDetector(bordaSubida) port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => auxCLK);

					  
chv_H0 <= SW(3 downto 0); --esse signal recebe as chavinhas de entrada
end architecture;