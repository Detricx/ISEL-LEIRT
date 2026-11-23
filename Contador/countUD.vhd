LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY countUD IS
PORT(	CLK : in std_logic;
	   RST : in std_logic;
		D : IN STD_LOGIC_VECTOR(3 downto 0);
		UpDown : IN STD_LOGIC; 
		PL, CE : IN STD_LOGIC;
		Q : out std_logic_VECTOR(3 downto 0)
		);
END countUD;

ARCHITECTURE logicFunction OF countUD IS

component reg
PORT(	CLK : in std_logic;
		RESET : in STD_LOGIC;
		D : IN STD_LOGIC_VECTOR(3 downto 0);
		EN : IN STD_LOGIC;
		Q : out std_logic_VECTOR(3 downto 0)
		);
END component;

component MUX4
  port(A : in STD_LOGIC_VECTOR(3 downto 0);
  	B : in STD_LOGIC_VECTOR(3 downto 0);
	S : in std_logic;
	O : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;

component ADDSUB
port (	A: in std_logic_vector(3 downto 0);
	B: in std_logic_vector(3 downto 0);
	Cbi : in std_logic;
	OP : in std_logic;
	R: out std_logic_vector(3 downto 0);
	CBo: out std_logic);
end component;

signal sx, rx, qx : std_logic_vector(3 downto 0);
signal enx, udx : std_logic;
	
BEGIN

U0: reg port map(CLK, RST, rx, enx, qx);

U1 : addsub port map(qx, "0001", '0', udx, sx, open);

U2: MUX4 port map(A => sx, B => d, S => PL, O => rx);

enx <= PL or CE;
udx <= not UpDown;

q <= qx;

END LogicFunction;