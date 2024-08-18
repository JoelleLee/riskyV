library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity generic_32bit_register is port (
	clk		: in std_logic;								-- send a pulse to update the value of the 32bit register
	data_in	: in  std_logic_vector(31 downto 0);	-- 32 bit value that will be written to the register
	data_out	: out std_logic_vector(31 downto 0);	-- 32 bit value that reflects the value of the register
); 
end generic_32bit_register;

architecture Behavioural of generic_32bit_register is
begin
	process(clk)												-- monitor clk for updater
	begin
		if(rising_edge(clk)) then							-- if a rising edge has been detected on the clk, update the value inside the register
			instruction_number_out <= instruction_number_in;
		end if;
	end process;
end generic_32bit_register