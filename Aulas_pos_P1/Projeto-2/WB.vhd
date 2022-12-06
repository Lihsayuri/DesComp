LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; --Soma (esta biblioteca =ieee)

ENTITY WB IS
    GENERIC (
        larguraDados : NATURAL := 32;
        larguraEnderecos : NATURAL := 32
    );
    PORT (
        -- o que entra: decoder, MEM_OUT, Address(ULA_result), PC, imediato (LUI). Sai: MUX_DADO_BANCO
        CLK : IN STD_LOGIC;
        MUX_RTRD_OUT_MEM: IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        decoder_OUT : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
        MEM_OUT_WB : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        ADDRESS_WB : IN STD_LOGIC_VECTOR((larguraEnderecos - 1) DOWNTO 0);
        PC_constante_WB : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        imediato_LUI_WB : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        MUX_RTRD_OUT_WB : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
        MUX_DADO_BANCO_WB : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
        write_REG_WB : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE write_back OF WB IS

ALIAS SelMuxUlaMem : STD_LOGIC_VECTOR(1 DOWNTO 0) IS decoder_OUT(5 DOWNTO 4);
ALIAS write_REG : STD_LOGIC IS decoder_OUT(8);


BEGIN

		-- O port map completo do Mux que decide qual dado que vai para o banco de registradores
	-- ULA, MEM, PC, LUI
	MUX_ULA_MEM : ENTITY work.muxGenerico4x1 GENERIC MAP (larguraDados => larguraDados)
		PORT MAP(
			E0 => ADDRESS_WB,
			E1 => MEM_OUT_WB,
			E2 =>  PC_constante_WB,
			E3	=> imediato_LUI_WB,
			SEL_MUX => SelMuxUlaMem,
			MUX_OUT => MUX_DADO_BANCO_WB 			
		);

    MUX_RTRD_OUT_WB <= MUX_RTRD_OUT_MEM;
    write_REG_WB <= write_REG;

END ARCHITECTURE;