library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA1a31bit is
    port
    (
        entradaA :  in std_logic;
		entradaB :  in std_logic;
		slt      :  in std_logic;
        inverteB :  in std_logic;
        seletor  :  in std_logic_vector(1 downto 0);
		cIn      :  in std_logic;
		cOut     :  out std_logic;
		saida    :  out std_logic
    );
end entity;

architecture comportamento of ULA1a31bit is

    signal saida_inversao : std_logic;
    signal saida_somador : std_logic;

begin

    InverterOuNao : ENTITY work.muxGenerico2x1 GENERIC MAP (larguraDados => 1)
    PORT MAP(
        entradaA_MUX(0) => entradaB,
        entradaB_MUX(0) => not(entradaB),
        seletor_MUX => inverteB,
        saida_MUX(0) => saida_inversao
    );

    Somador : ENTITY work.somadorGenerico1bit 
    PORT MAP(
        entradaA => saida_inversao,
        entradaB => entradaA,
        cIn   => cIn,
        saida => saida_somador,
        cOut  => cOut
    );

    MuxOperacao: entity work.muxGenerico4x1 GENERIC MAP (larguraDados => 1)
    PORT MAP(
        E0(0) => (saida_inversao and entradaA), -- faz a operação de and
        E1(0) => (saida_inversao or entradaA),  -- faz a operação de or
        E2(0) => saida_somador, -- faz ou soma ou subtração
        E3(0) => slt, -- seta a flag de menor
        SEL_MUX => seletor,
        MUX_OUT(0) => saida
    );

end architecture;