LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity fulladder is 
    port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    Cin : in STD_LOGIC;
    Cout : out STD_LOGIC;
    R : out STD_LOGIC);
end fulladder;

architecture arq_fulladder of fulladder is
 
begin
 
 R <= ((A XOR B) XOR Cin);
 Cout <= (A and B) or (Cin and (A XOR B)) ;
 
end arq_fulladder;