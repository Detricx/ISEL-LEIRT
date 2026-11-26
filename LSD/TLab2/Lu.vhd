LIBRARY IEEE;
use IEEE.std_logic_1164.all;

-- Logic Unit (OR e XOR) / Unidade Lógica
entity LU is
	port(
		W, Y: in std_logic_vector(3 downto 0);
		OP: in std_logic; -- OPx(0): 0 = OR, 1 = XOR
		R: out std_logic_vector(3 downto 0));
end LU;

architecture ARCH_LU of LU is
begin
	-- OPx(0) = 0: W OR Y
	-- OPx(0) = 1: (NOT W) XOR Y
	R <= ((W or Y) and (3 downto 0 => not OP)) or (((not W) xor Y) and (3 downto 0 => OP));
end ARCH_LU;
