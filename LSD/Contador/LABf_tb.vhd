library IEEE;
use IEEE.std_logic_1164.all;

entity LABf_tb is
end entity;

architecture LABf_tb_arch of LABf_tb is

component LABf
port(CLK		: in std_logic;
     RST		: in std_logic;
	 dataIn		: in std_logic_vector(3 downto 0);
	 UpDown	    : in std_logic;
	 PL		: in std_logic;
	 CE		: in std_logic;
	 clear		: in std_logic;
	 CountValue	: out std_logic_vector(3 downto 0);
	 HEX0		: out std_logic_vector(7 downto 0));
end component;

-- UUT signals
signal CLK_TB : std_logic := '0';
signal RST_TB, UpDown_TB, PL_TB, CE_TB, clear_TB : std_logic;
signal DATA_IN_TB : std_logic_vector(3 downto 0);
signal CountValue_TB : std_logic_vector(3 downto 0);
signal HEX0_TB : std_logic_vector(7 downto 0);

constant MCLK_PERIOD : time := 20 ns;
constant MCLK_HALF_PERIOD : time := MCLK_PERIOD / 2;

begin

	CLK_TB <= not CLK_TB after MCLK_HALF_PERIOD;
	UUT: LABf port map(CLK 		=> CLK_TB, 
					   RST      => RST_TB,
				       dataIn 	=> DATA_IN_TB, 
				       UpDown 	=> UpDown_TB, 
					   PL 		=> PL_TB, 
					   CE 		=> CE_TB, 
					   clear 	=> clear_TB, 
					   CountValue => CountValue_TB, 
					   HEX0 	=> HEX0_TB);
	
stimulus: process 
begin
	-- Regista no contador o valor 4
	RST_TB <= '0';
	CE_TB <= '1';
	PL_TB <= '1';
	DATA_IN_TB <= "0100";
	UpDown_TB <= '0';
	clear_TB <= '0';
	wait for MCLK_PERIOD;
		
	-- Incrementa o contador até dar uma volta completa (termina no valor 4)
	PL_TB <= '0';
	wait for MCLK_PERIOD * 16;
	
	-- Inibe o contador de contar durante dois períodos de clock
	CE_TB <= '0';
	wait for MCLK_PERIOD*2;
	
	-- Decrementa até atingir o valor de contagem 4
	CE_TB <= '1';
	UpDown_TB <= '1';
	wait for MCLK_PERIOD * 6;

	wait;
		
		
end process;

end architecture;