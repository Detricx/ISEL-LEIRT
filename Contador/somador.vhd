LIBRARY IEEE;
use IEEE.std_logic_1164.all;

entity adder is
    port(A : in STD_LOGIC_VECTOR(3 downto 0);
     B : in STD_LOGIC_VECTOR(3 downto 0);
     S: out STD_LOGIC_VECTOR(3 downto 0);
     Cin: in STD_LOGIC;
     Cout: out STD_LOGIC);
end adder;

architecture A of adder is
    component fulladder
    port (A : in STD_LOGIC;
        B : in STD_LOGIC;
        Cin : in STD_LOGIC;
        R : out STD_LOGIC;
        Cout : out STD_LOGIC);

end component;

signal c1, c2, c3 : std_logic ;

 begin

u0: fulladder  port map (
        A => A(0),
        B => B(0),
        Cin => Cin,
        R => S(0),
        Cout => c1);
u1: fulladder  port map (
        A => A(1),
        B => B(1),
        Cin => c1,
        R => S(1),
		  Cout => c2);
u2: fulladder  port map (
		  A => A(2),
		  B => B(2),
		  Cin => c2,
		  R => S(2),
        Cout => c3);
u3: fulladder  port map (
        A => A(3),
        B => B(3),
        Cin => c3,
        R => S(3),
        Cout => Cout);
end A;