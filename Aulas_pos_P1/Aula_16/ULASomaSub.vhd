LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL; -- Biblioteca IEEE para funções aritméticas

ENTITY ULASomaSub IS
   GENERIC (larguraDados : NATURAL := 8);
   PORT (
      entradaA, entradaB : IN STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
      seletor : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      saida : OUT STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
      flagEqual : OUT STD_LOGIC
   );
END ENTITY;

ARCHITECTURE comportamento OF ULASomaSub IS
   SIGNAL soma : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
   SIGNAL subtracao : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
   SIGNAL passa : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);
   SIGNAL and_op : STD_LOGIC_VECTOR((larguraDados - 1) DOWNTO 0);

BEGIN
   soma <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
   subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
   passa <= STD_LOGIC_VECTOR(unsigned(entradaB));
   and_op <= STD_LOGIC_VECTOR(entradaA AND entradaB);

   saida <= soma WHEN (seletor = "01") ELSE
      subtracao WHEN (seletor = "00") ELSE
      passa WHEN (seletor = "10") ELSE
      and_op WHEN (seletor = "11") ELSE
      entradaB;
      
   flagEqual <= '1' WHEN (saida = 32x"00") ELSE
      '0';
END ARCHITECTURE;