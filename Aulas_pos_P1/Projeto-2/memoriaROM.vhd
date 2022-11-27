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


--   FUNCTION initMemory
--      RETURN blocoMemoria IS VARIABLE tmp : blocoMemoria := (OTHERS => (OTHERS => '0'));

--   BEGIN

      -- FALTA FAZER OS TESTESSSSSSSSS
            -- 6      5    5      16     bits
   --    --     opcode  Rs   Rt   imediato
   --    tmp(0) := SW & T0 & T1 & IM4; --Mem_Dados[R[rs] + EstendeSinal(Imediato)]=R[rt]    | MEM[0] = 10
   --    tmp(1) := LW & T0 & T2 & IM4; --LW T2, 0x00($t0) -- load em t2 o que está em MEM[0] | T2 = 10
   --    tmp(2) := ADDI & T2 & T3 & IM2; --T3 = 10 + 2 = 12
   --    tmp(3) := SLTI & T2 & T3 & IM2; -- T3 = 10 < 2 = 0
   --    tmp(4) := SLTI & T3 & T2 & IM3; -- T3 = 0 < 8 = 1 ;
   --    tmp(5) := ANDI & T4 & T1 & IM6; -- T1 = 13 & 9 = 1101 & 1001 = 1001 = 9 
   --    tmp(6) := ORI  & T1 & T2 & IM2; -- T2 = 9 | 1 = 1001 | 0010 = 1011 = 11
   --    tmp(7) := LUI & "00000" & T0 & TUDO_F; -- T1 = 10


   --    RETURN tmp;
   -- END initMemory;

   -- SIGNAL memROM : blocoMemoria := initMemory;

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