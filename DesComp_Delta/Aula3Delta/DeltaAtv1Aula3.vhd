library ieee;
use ieee.std_logic_1164.all;

entity DeltaAtv1Aula3 is
   generic (
          larguraContagem: natural := 4;
          addrWidth: natural := 4
    );
   port (
     CLOCK_50: in std_logic;
       SW: in std_logic_vector(9 downto 0);
     KEY: in std_logic_vector(3 downto 0);
       HEX0, HEX1, HEX2, HEX3 : out std_logic_vector (6 DOWNTO 0);
       LEDR  : out std_logic_vector(9 downto 0)
    );
end entity;

architecture funcionamento of DeltaAtv1Aula3 is

signal saida_contador, entrada_contador : std_logic_vector(larguraContagem-1 downto 0);
signal CLK, apagaHEX0, apagaHEX1, apagaHEX2, apagaHEX3 : std_logic;

begin

--MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraContagem)
--        port map( entradaA_MUX => sinalLocal,
--                 entradaB_MUX =>  sinalLocal,
--                 seletor_MUX => sinalLocal,
--                 saida_MUX => sinalLocal);

Somador :  entity work.somaConstante  generic map (larguraDados => larguraContagem, constante => 1)
        port map( entrada => saida_contador, saida => entrada_contador);

Contador : entity work.registradorGenerico   generic map (larguraDados => larguraContagem)
          port map (DIN => entrada_contador, DOUT => saida_contador, ENABLE => '1', CLK => KEY(0), RST => '0');


DHEX0 :  entity work.conversorHex7Seg
        port map(dadoHex => saida_contador,
                 apaga =>  not apagaHEX0,
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);

DHEX1 :  entity work.conversorHex7Seg
        port map(dadoHex => saida_contador,
                 apaga =>  not apagaHEX1,
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);

DHEX2 :  entity work.conversorHex7Seg
        port map(dadoHex => saida_contador,
                 apaga =>  not apagaHEX2,
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);

DHEX3 :  entity work.conversorHex7Seg
        port map(dadoHex => saida_contador,
                 apaga =>  not apagaHEX3,
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX3);

divisor : entity work.divisorGenerico
            generic map (divisor => 25000000)   -- divide por 50M.
            port map (clk => CLOCK_50, saida_clk => CLK);

endereco: entity work.decoder1x4
  port map(addr => SW(1) & SW(0), saida_Decoder(3) => apagaHEX3, saida_Decoder(2) => apagaHEX2, saida_Decoder(1) => apagaHEX1, saida_Decoder(0) => apagaHEX0);

LEDR <= SW;
end architecture;