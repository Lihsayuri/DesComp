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
  
  
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		  
  begin
		  
		  -- FALTA FAZER OS TESTESSSSSSSSS
					   -- 6 bit    5 bit      5 bit            16 bits
						-- opcode     Rs         Rt             imediato
        tmp(0) := 	LW	 	&    T0   &    T0   &   IM1; -- LW T0, 0x01($t0) -- load em t1 o que está em t0
        tmp(1) :=    SW    &    T0   &    T1  &   IM2 ; --  LW T1, 
        tmp(2) := "000000" & "01000" & "01011" & "01000" & "00000" & "100000"; -- Add t0, t0 (10), t3 - 11 (0C) = 22 [10+12]
        tmp(3) := "000000" & "01000" & "01100" & "01000" & "00000" & "100111"; -- Sub t0, t0 (22), t4 - 12 (0D) = 9 [22-13]
        tmp(4) := 32x"00";
        tmp(5) := 32x"00";
        tmp(6) := 32x"00";
        tmp(7) := 32x"00";
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;
-- Utiliza uma quantidade menor de endereços locais:
   signal EnderecoLocal : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
  EnderecoLocal <= Endereco(memoryAddrWidth+1 downto 2);
  Dado <= memROM (to_integer(unsigned(EnderecoLocal)));
end architecture;