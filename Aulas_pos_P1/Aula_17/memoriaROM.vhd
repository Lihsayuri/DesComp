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
	CONSTANT SUBR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "100111";
   CONSTANT J : STD_LOGIC_VECTOR(5 DOWNTO 0) := "000010";  
   CONSTANT SLT : STD_LOGIC_VECTOR(5 DOWNTO 0) := "101010";
   CONSTANT ANDR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "011000";
	CONSTANT ORR : STD_LOGIC_VECTOR(5 DOWNTO 0) := "011001";

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
   

--   FUNCTION initMemory
--      RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));
--
--   BEGIN

      -- FALTA FAZER OS TESTESSSSSSSSS
      -- 6 bit    5 bit      5 bit            16 bits
      -- opcode     Rs         Rt             imediato
      -- 6 bit    5 bit      5 bit    5 bit     5 bit      6 bit
      -- opcode     Rs         Rt       Rd      shamt      funct
--      tmp(0) := SW & T0 & T1 & IM4; --Mem_Dados[R[rs] + EstendeSinal(Imediato)]=R[rt]    | MEM[0] = 10
--      tmp(1) := LW & T0 & T2 & IM4; --LW T2, 0x00($t0) -- load em t2 o que está em MEM[0] | T2 = 10
--      tmp(2) := LW & T0 & T3 & IM4; --LW T3, 0x00($t0) -- load em t3 o que está em MEM[0] | T3 = 10
--      tmp(3) := BEQ & T2 & T3 & IM2; -- Compara T2 com T3, se for igual jump
--      tmp(4) := 32x"00";
--      tmp(5) := 32x"00";
--      tmp(6) := BEQ & T0 & T3 & IM2;
--      tmp(7) := SW & T0 & T4 & IM1; --Mem_Dados[R[rs] + EstendeSinal(Imediato)]= t4    | MEM[1] = 13
--      tmp(8) := LW & T0 & T5 & IM1; --LW T1, 0x00($t0) -- load em t5 o que está em MEM[1] | T5 = 13
--      tmp(9) := TIPOR & T4 & T5 & T0 & SHAMT & ADDR; -- T0 = T4 + T5 -> T0 = 13 + 13 = 26 
--      tmp(10) := TIPOR & T5 & T4 & T0 & SHAMT & SUBR; -- T0 = T5 - T4 -> T0 = 13 - 13 = 0
--      tmp(11) := J & IM5 ; -- Jump para a linha 14
--      tmp(12) := 32x"00";
--      tmp(13) := 32x"00";
--      tmp(14) := TIPOR & T3 & T5 & T0 & SHAMT & SLT; -- T0 = T3 < T5 -> 10 < 13 : T0 = 1 
--      tmp(15) := TIPOR & T5 & T3 & T0 & SHAMT & SLT; -- T0 = T5 < T3 -> 13 < 10 : T0 = 0
--      tmp(16) := TIPOR & T3 & T5 & T0 & SHAMT & ANDR; -- T0 = T3 & T5 -> 1010 and 1101 T0 = 8
--      tmp(17) := TIPOR & T3 & T5 & T0 & SHAMT & ORR; -- T0 = T3 | T5 -> T0 = 15
--      tmp(18) := BEQ & T2 & T3 & IM2_N; -- Compara T2 com T3, se for igual jump para a linha 0
      -- Aqui no final volta para o início pois 10 = 10.
--      RETURN tmp;
--   END initMemory;
--
--   SIGNAL memROM : blocoMemoria := initMemory;

	signal memROM: blocoMemoria;
   attribute ram_init_file : string;
   attribute ram_init_file of memROM:
   signal is "Toplevel.mif";

   -- Utiliza uma quantidade menor de endereços locais:
   SIGNAL EnderecoLocal : STD_LOGIC_VECTOR(memoryAddrWidth - 1 DOWNTO 0);

BEGIN
   EnderecoLocal <= Endereco(memoryAddrWidth + 1 DOWNTO 2);
   Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
END ARCHITECTURE;