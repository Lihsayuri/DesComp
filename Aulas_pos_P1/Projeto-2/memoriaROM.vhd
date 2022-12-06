LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY memoriaROM IS
   GENERIC (
      dataWidth : NATURAL := 32;
      addrWidth : NATURAL := 32;
      memoryAddrWidth : NATURAL := 6); -- 64 posicoes de 32 bits cada
   PORT (
      clk : IN STD_LOGIC;
      Endereco : IN STD_LOGIC_VECTOR (addrWidth - 1 DOWNTO 0);
      Dado : OUT STD_LOGIC_VECTOR (dataWidth - 1 DOWNTO 0));
END ENTITY;

ARCHITECTURE assincrona OF memoriaROM IS
   TYPE blocoMemoria IS ARRAY(0 TO 2 ** memoryAddrWidth - 1) OF STD_LOGIC_VECTOR(dataWidth - 1 DOWNTO 0);

   CONSTANT LW : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100011";
   CONSTANT SW : STD_LOGIC_VECTOR(5 DOWNTO 0) := "101011";
   CONSTANT BEQ : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000100";
	CONSTANT ADDR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100000";
	CONSTANT SUBR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100010";
   CONSTANT J : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000010";  
   CONSTANT SLT : STD_LOGIC_VECTOR(5 DOWNTO 0) := "101010";
   CONSTANT ANDR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100100";
	CONSTANT ORR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100101";
   
   CONSTANT ORI : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001101";
	CONSTANT ADDI : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001000";
	CONSTANT ANDI : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001100";
	CONSTANT SLTI : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001010";
	CONSTANT LUI : STD_LOGIC_VECTOR(5 DOWNTO 0) := "001111";

   CONSTANT T0 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01000";
   CONSTANT T1 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01001";
   CONSTANT T2 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01010";
   CONSTANT T3 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01011";
   CONSTANT T4 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01100";
   CONSTANT T5 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01101";
   CONSTANT T6 : STD_LOGIC_VECTOR(4 DOWNTO 0) := "01110";

   CONSTANT SHAMT : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
   CONSTANT TIPOR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000000";
   CONSTANT IM1 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000001";
   CONSTANT IM2 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000010";
   CONSTANT IM3 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000001000";
   CONSTANT IM4 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
   CONSTANT IM2_N : STD_LOGIC_VECTOR(15 DOWNTO 0) := "1111111111101101";
   CONSTANT IM5 : STD_LOGIC_VECTOR(25 DOWNTO 0) := "00000000000000000000001110";
   CONSTANT IM6 : STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000001001";
   CONSTANT TUDO_F : STD_LOGIC_VECTOR(15 DOWNTO 0) := "1111111111111111";


   FUNCTION initMemory
      RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));

   BEGIN

		tmp(0)  := x"3c090000";      --lui $t1, 0x0000;
		tmp(1)  := x"3c0baaaa";      --lui $t3, 0xAAAA;
		tmp(2)  := x"3c0f1000";      --lui $t7, 0x1000;
		tmp(3)  := x"3529000a";      --ori $t1, $t1, 0x0A;     # $t1 (#9) := 0x0A
		tmp(4)  := x"356baaaa";      --ori $t3, $t3, 0xAAAA;   # $t3 (#11) := 0xAAAAAAAA
		tmp(5)  := x"35ef0000";      --ori $t7, $t7, 0x0000;   # $t7 (#15) := 0x10000000 (4096*64k)
		tmp(6)  := x"212a0001";      --addi $t2, $t1, 0x01;    # $t2 (#10) := 0x0B
		tmp(7)  := x"01606025";      --or $t4, $t3, $0;        # $t4 (#12) := 0xAAAAAAAA
		tmp(8)  := x"316dffff";      --andi $t5, $t3, 0xFFFF;  # $t5 (#13) := 0x0000AAAA
		tmp(9)  := x"01497022";      --sub $t6, $t2, $t1;      # $t6 (#14) := 0x01
		tmp(10) := x"ac090008";      --sw $t1, 8($zero);       # M[8) = 0x0A
		tmp(11) := x"8c080008";      --lw $t0, 8($zero);
		tmp(12) := x"010a7824";      --and $t7, $t0, $t2;      # Hazard Load Use
		tmp(13) := x"290fffff";      --slti $t7, $t0, 0xFFFF;
		tmp(14) := x"012a402a";      --slt $t0, $t1, $t2;
		--destinoBEQ:
		tmp(15) := x"012e4820";      --add $t1, $t1, $t6;      # t0 = t2, segunda vez: t0 != t2
		tmp(16) := x"00000000";      --nop;
		tmp(17) := x"00000000";      --nop;
		tmp(18) := x"112afffc";      --beq $t1, $t2, destinoBEQ;  # Desvia na primeira e nao desvia depois
		tmp(19) := x"00000000";      --nop;
		tmp(20) := x"00000000";      --nop;
		tmp(21) := x"00000000";      --nop;
		tmp(22) := x"0c000020";      --jal subrotina;
		tmp(23) := x"00000000";      --nop;
		tmp(24) := x"00000000";      --nop;
		tmp(25) := x"00000000";      --nop;
		tmp(26) := x"00000000";      --nop;
		tmp(27) := x"150d0008";      --bne $t0, $t5, fim
		tmp(28) := x"00000000";      --nop;
		tmp(29) := x"00000000";      --nop;
		tmp(30) := x"00000000";      --nop;
		tmp(31) := x"00000000";      --nop;
		--subrotina:
		tmp(32) := x"00000000";      --nop;
		tmp(33) := x"03e00008";      --jr $ra;
		tmp(34) := x"00000000";      --nop;
		tmp(35) := x"00000000";      --nop;
		--fim:
		tmp(36) := x"00000000";      --nop;
		tmp(37) := x"08000024";      --j fim;
		tmp(38) := x"00000000";      --nop;
		tmp(39) := x"00000000";      --nop;

		-- tmp(0) := x"AC09_0008"; --sw $t1 8($zero)
		-- tmp(1) := x"8C08_0008"; --lw $t0 8($zero)
		-- tmp(2) := x"0000_0000"; --nop
		-- tmp(3) := x"012A_4022"; --sub $t0 $t1 $t2
		-- tmp(4) := x"012A_4024"; --and $t0 $t1 $t2
		-- tmp(5) := x"012A_4025"; --or $t0 $t1 $t2
		-- tmp(6) := x"012A_402A"; --slt $t0 $t1 $t2
		-- tmp(7) := x"0000_0000"; --nop
		-- tmp(8) := x"0000_0000"; --nop
		-- tmp(9) := x"0000_0000"; --nop
		-- tmp(10) := x"010A_4020"; --add $t0 $t0 $t2
		-- tmp(11) := x"0000_0000"; --nop
		-- tmp(12) := x"0000_0000"; --nop
		-- tmp(13) := x"0000_0000"; --nop
		-- tmp(14) := x"110B_FFFA"; --beq $t0 $t3 0xFA
		-- tmp(15) := x"0000_0000"; --nop
		-- tmp(16) := x"0000_0000"; --nop
		-- tmp(17) := x"0000_0000"; --nop
		-- tmp(18) := x"0800_0001"; --j 0x00000001
		-- tmp(19) := x"0000_0000"; --nop
		-- tmp(20) := x"0000_0000"; --nop
		-- tmp(21) := x"0800_0000"; --j 0x00000000


       RETURN tmp;
		END initMemory;

     SIGNAL memROM : blocoMemoria := initMemory;
--
--  signal memROM: blocoMemoria;
--  attribute ram_init_file : string;
--  attribute ram_init_file of memROM:
--  signal is "Toplevel.mif";

   -- Utiliza uma quantidade menor de endereços locais:
   SIGNAL EnderecoLocal : STD_LOGIC_VECTOR(memoryAddrWidth - 1 DOWNTO 0);

BEGIN
   EnderecoLocal <= Endereco(memoryAddrWidth + 1 DOWNTO 2);
   Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
END ARCHITECTURE;