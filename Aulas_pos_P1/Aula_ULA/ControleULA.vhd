LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ControleULA IS
	PORT (
		OPCODE : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		FUNCT : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		TIPO_R : IN STD_LOGIC;
		InverteB : OUT STD_LOGIC;
		OUTPUT : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE arch_name OF ControleULA IS
	CONSTANT ADDR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100000";
	CONSTANT SUBR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100111";
	CONSTANT LW : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100011";
	CONSTANT SW : STD_LOGIC_VECTOR(5 DOWNTO 0) := "101011";
	CONSTANT BEQ : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000100";
	CONSTANT J : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000010";
	CONSTANT SLT : STD_LOGIC_VECTOR(5 DOWNTO 0) := "101010";
	CONSTANT ANDR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "011000";
	CONSTANT ORR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "011001";
	-- SelMuxJump|SelMuxRtRd|write_REG(1)|habMUX(rt/imediato)|OP(2)|SelMuxMEMULA|habFlagEqual|
	--read_RAM|write_RAM
BEGIN

	OUTPUT <= "10" WHEN (TIPO_R = '1' AND FUNCT = ADDR ) ELSE
		"10" WHEN (TIPO_R = '0' AND (OPCODE = SW OR OPCODE = LW)) ELSE
		"10" WHEN (TIPO_R = '1' AND (FUNCT = SUBR)) ELSE
		"10" WHEN (TIPO_R = '0' AND (OPCODE = BEQ)) ELSE
		"00" WHEN (TIPO_R = '1' AND (FUNCT = ANDR)) ELSE
		"01" WHEN (TIPO_R = '1' AND (FUNCT = ORR)) ELSE
		"11" WHEN (TIPO_R = '1' AND (FUNCT = SLT)) ELSE
		"10";
	InverteB <= '1' WHEN ((TIPO_R = '1' AND (FUNCT = SUBR OR FUNCT = SLT)) OR (TIPO_R = '0' AND OPCODE = BEQ )) ELSE
		'0';

END ARCHITECTURE;