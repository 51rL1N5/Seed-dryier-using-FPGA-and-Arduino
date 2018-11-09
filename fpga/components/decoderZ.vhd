-- DecoderZ
-- 
-- Decodificador criado para 
-- criar o gerador de sinais 
-- Z(t)
-- 
-- Ele segue o seguinte padrao
-- 
-- 0000 -> 000
-- 0001 -> 001
-- 0011 -> 010
-- 0111 -> 011
-- 1111 -> 100
-- 
-- Autoria: Felipe Oliveira Lins e Silva
-- 

library IEEE;
use IEEE.std_logic_1164.all;


entity decoderZ is
	port (
							input		: in std_logic_vector  (3 downto 0);
							output	: out std_logic_vector (2 downto 0)
		  );
end decoderZ;

architecture behavior of decoderZ is
begin
	output(0) <= ( (not input(3)) and input(2)) or ( (not input(1)) and input(0));
	output(1) <= (not input(3)) and  input(1);
	output(2) <= input(3);
end behavior;