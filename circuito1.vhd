----------------------------------------------------------------------------------
-- Company: UniversidadPolitecnicaMadrid
-- Engineer: JesusRodriguezOvejero
-- 
-- Create Date:    18:09:30 10/03/2017 
-- Design Name: 
-- Module Name:    circuito1 - Behavioral 
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
-- library UNISIM;
-- use UNISIM.VComponents.all;

entity circuito1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           f1 : out  STD_LOGIC);
end circuito1;

architecture Behavioral of circuito1 is

begin
	
	f1 <= (a and (not c)) or (((not a) and c) and b);
   
end Behavioral;

