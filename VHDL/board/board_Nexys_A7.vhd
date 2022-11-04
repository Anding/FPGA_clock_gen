library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity board_Nexys_A7 is
					
Port ( 	
	clk_in: in  STD_LOGIC;
	JA1 : out STD_LOGIC;
	JA2 : out STD_LOGIC;
	JA3 : out STD_LOGIC;
	JA4 : out STD_LOGIC;
	JA7 : out STD_LOGIC;
	JA8 : out STD_LOGIC;
	JA9 : out STD_LOGIC;
	JA10 : out STD_LOGIC
	);
end entity;

architecture RTL of board_Nexys_A7 is

signal clk_25, clk_25_q : std_logic;
signal clk_50, clk_50_q : std_logic;
signal clk_100, clk_100_q : std_logic;

-- CARE! It necessary to import Xilinx IP using component definitions
component clk_wiz_0
	port (
		CLK_IN		: in	std_logic;
		CLK_25		: out   std_logic;
		CLK_25_q	: out	std_logic;
		CLK_50		: out   std_logic;
		CLK_50_q	: out	std_logic;
		CLK_100		: out   std_logic;
		CLK_100_q	: out	std_logic
 	);
end component;
	
begin

-- Xilinx IP entity
	inst_clk_wiz_0: clk_wiz_0
		port map(
		clk_in => clk_in,
		clk_25 => clk_25,
		clk_25_q => clk_25_q,
		clk_50 => clk_50,
		clk_50_q => clk_50_q,
		clk_100 => clk_100,
		clk_100_q => clk_100_q	
		);
		
	JA1 <= CLK_25;
	JA2 <= CLK_25_q;	
	JA3 <= CLK_50;
	JA4 <= CLK_50_q;	
	JA7 <= CLK_100;
	JA8 <= CLK_100_q;	
	JA9 <= '0';
	JA10 <= '1';	
	
end architecture;