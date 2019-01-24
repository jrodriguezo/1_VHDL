----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jesus
-- 
-- Create Date:    18:38:23 10/03/2017 
-- Design Name: 
-- Module Name:    main - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           compara : out  STD_LOGIC);
end main;

architecture Behavioral of main is

	component circuito1
	Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           f1 : out  STD_LOGIC);
	end component;
	
	component circuito2
	 Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           f2 : out  STD_LOGIC);
	end component;
	
	component comparador
	 Port ( dato1 : in  STD_LOGIC;
           dato2 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
	end component;
	
signal s_circuito1, s_circuito2 : STD_LOGIC;
	
begin
	
	Unit_circuito1 : circuito1 port map (a,b,c,s_circuito1);
	Unit_circuito2 : circuito2 port map (a,b,c,s_circuito2);
	Unit_comparador : comparador port map (s_circuito1,s_circuito2,compara);

end Behavioral;

