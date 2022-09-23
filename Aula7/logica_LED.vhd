library ieee;
use ieee.std_logic_1164.all;

entity logica_LED is
	port(
		CLK: in std_logic;
		endereco_LED: in std_logic_vector(2 downto 0);
		saida_bloco4 : in std_logic;
		escrita : in std_logic;
		DATA_OUT: in std_logic_vector(7 downto 0);
		conjunto_LED : out std_logic_vector(7 downto 0);
		LED_endereco1: out std_logic;
		LED_endereco2: out std_logic
	);
	
end entity;

architecture arch_name of logica_LED is
	
begin
	
		FlipFlop2: entity work.flipflopGenerico
			port map (
				DIN		=> DATA_OUT(0), 
				DOUT		=> LED_endereco2,
				ENABLE 	=> (saida_bloco4 AND endereco_LED(2) AND escrita),
				CLK 		=> CLK,
				RST 		=> '0'
		);
		
		FlipFlop1: entity work.flipflopGenerico
			port map (
				DIN		=> DATA_OUT(0), 
				DOUT		=> LED_endereco1,
				ENABLE 	=> (saida_bloco4 AND endereco_LED(1) AND escrita),
				CLK 		=> CLK,
				RST 		=> '0'
		);
		
		
		REG_LEDS : entity work.registradorGenerico generic map (larguraDados => 8)
				 port map (
							DIN => DATA_OUT,
							DOUT => conjunto_LED,
							ENABLE => (saida_bloco4 AND endereco_LED(0) AND escrita),
							CLK => CLK,
							RST => '0');


end architecture;
