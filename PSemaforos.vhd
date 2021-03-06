----------------------------------------------------------------------------------
-- University:    Universidad Polit�cnica de Madrid
-- School			Escuela T�cnica Superior de Ingeneria y Dise�o Industrial
-- Subject			Sistemas Infom�ticos Digitales
-- Engineers: 		Adr�an P�rez
--						Jorge Scharfhausen
--						Alvaro Zornoza
-- 
-- Create Date:    16:02:34 11/22/2016 
-- Design Name:    Trabajo de la asignatura.
-- Module Name:    PSemaforos - Behavioral 
-- Project Name:   Cruce de sem�foros
-- Target Devices: Xilinx Spartan 3
-- Tool versions: 
-- Description: Esta entidad sen encarga de gestionar el parpadeo de los semaforos de peatones.
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

entity PSemaforos is
port(
	onoff: in std_logic;
	blinkenable: in std_logic;
	clk: in std_logic;
	salida: out std_logic
);
end PSemaforos;

architecture Behavioral of PSemaforos is
signal salida_r: std_logic;
begin
	process(onoff, blinkenable, clk)
begin
--		if onoff='1' then
--			salida_r<='1';
--		elsif blinkenable='1' then
--				salida_r<='0';
--			elsif	clk'event then
--				salida_r <= not salida_r;	
--		end if;
		if onoff='0' then
			salida_r<='0';
		elsif blinkenable='0' then
				salida_r<='1';
			elsif	clk'event then
				salida_r <= not salida_r;	
		end if;
	end process;
	salida<=salida_r;
end Behavioral;

