library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM IS
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32;
			 memoryAddrWidth:  natural := 6 );   -- 64 posicoes de 32 bits cada
   port (
		    clk : in std_logic;
          Endereco : in  std_logic_vector (addrWidth-1 downto 0);
          Dado     : out std_logic_vector (dataWidth-1 downto 0) );
end entity;

architecture assincrona OF memoriaROM IS
  type blocoMemoria IS ARRAY(0 TO 2**memoryAddrWidth - 1) OF std_logic_vector(dataWidth-1 downto 0);
  
  constant LW    : std_logic_vector(5 downto 0) := "100011";
  constant SW    : std_logic_vector(5 downto 0) := "101011";
  constant BEQ   : std_logic_vector(5 downto 0) := "000100";
  
  constant T0    : std_logic_vector(4 downto 0) := "01000";
  constant T1    : std_logic_vector(4 downto 0) := "01001";
  constant T2    : std_logic_vector(4 downto 0) := "01010";
  constant T3    : std_logic_vector(4 downto 0) := "01011";
  constant T4    : std_logic_vector(4 downto 0) := "01100";
  constant T5    : std_logic_vector(4 downto 0) := "01101";
  constant T6    : std_logic_vector(4 downto 0) := "01110";
  
  constant SHAMT : std_logic_vector(4 downto 0) := "00000";
  constant IM1   : std_logic_vector(15 downto 0) := "0000000000000001";
  constant IM2   : std_logic_vector(15 downto 0) := "0000000000000010";
  constant IM3   : std_logic_vector(15 downto 0) := "0000000000001000";
  constant IM4   : std_logic_vector(15 downto 0) := "0000000000000000";

  
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		  
  begin
		  
		  -- FALTA FAZER OS TESTESSSSSSSSS
					   -- 6 bit    5 bit      5 bit            16 bits
						-- opcode     Rs         Rt             imediato
        tmp(0) :=    SW    &    T0   &    T1  &   IM4 ; --Mem_Dados[R[rs] + EstendeSinal(Imediato)]=R[rt]    | MEM[0] = 10
		  tmp(1) := 	LW	 	&    T0   &    T2  &   IM4; --LW T2, 0x00($t0) -- load em t2 o que está em MEM[0] | T2 = 10
		  tmp(2) := 	LW	 	&    T0   &    T3  &   IM4; --LW T3, 0x00($t0) -- load em t3 o que está em MEM[0] | T3 = 10
        tmp(3) :=    BEQ   &    T2   &    T3  &   IM2 ; -- Compara T2 com T3, se for igual jump
        tmp(4) :=    32x"00";
        tmp(5) := 	32x"00";
        tmp(6) :=    BEQ   &    T0   &    T3  &   IM2  ;
        tmp(7) :=    SW    &    T0   &    T4  &   IM1 ; --Mem_Dados[R[rs] + EstendeSinal(Imediato)]= t4    | MEM[1] = 13
        tmp(8) :=    LW    &    T0   &    T5  &   IM1 ; --LW T1, 0x00($t0) -- load em t5 o que está em MEM[1] | T5 = 13
		  
		  return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;
-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;