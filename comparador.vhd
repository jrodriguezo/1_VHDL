----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Jesus
-- 
-- Create Date:    18:35:55 10/03/2017 
-- Design Name: 
-- Module Name:    comparador - Behavioral 
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

entity comparador is
    Port ( dato1 : in  STD_LOGIC;
           dato2 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end comparador;

architecture Behavioral of comparador is

begin
	
	Y <= dato1 xnor dato2;

end Behavioral;

