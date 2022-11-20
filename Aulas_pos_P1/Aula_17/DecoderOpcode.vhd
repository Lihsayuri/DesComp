LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY DecoderOpcode IS
	PORT (
		OPCODE : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		OUTPUT_OP : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE arch_name OF DecoderOpcode IS
	CONSTANT LW : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100011";
	CONSTANT SW : STD_LOGIC_VECTOR(5 DOWNTO 0) := "101011";
	CONSTANT BEQ : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000100";
	CONSTANT J : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000010";

	-- SelMuxJump|SelMuxRtRd|write_REG(1)|habMUX(rt/imediato)|OP(2)|SelMuxMEMULA|habFlagEqual|
	-- read_RAM|write_RAM
BEGIN

	OUTPUT_OP <= "010" WHEN (OPCODE = SW OR OPCODE = LW) ELSE
		"110" WHEN (OPCODE = BEQ) ELSE
		"000" WHEN (OPCODE = J) ELSE
		"010";
		
END ARCHITECTURE;