library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity  is port (
	mux_select 	: in std_logic_vector(4 downto 0);
	x0, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23, x24, x25, x26, x27, x28, x29, x30, x31		: in	std_logic_vector(31 downto 0);

	outputx		: out	std_logic_vector(31 downto 0);
	
); 
end ;

architecture mux_circuit of  is
--
begin
	with mux_select(4 downto 0) select
		outputx <=		x0 when "00000";
							x1 when "00001";
							x2 when "00010";
							x3 when "00011";
							x4 when "00100";
							x5 when "00101";
							x6 when "00110";
							x7 when "00111";
							x8 when "01000";
							x9 when "01001";
							x10 when "01010";
							x11 when "01011";
							x12 when "01100";
							x13 when "01101";
							x14 when "01110";
							x15 when "01111";
							x16 when "10000";
							x17 when "10001";
							x18 when "10010";
							x19 when "10011";
							x20 when "10100";
							x21 when "10101";
							x22 when "10110";
							x23 when "10111";
							x24 when "11000";
							x25 when "11001";
							x26 when "11010";
							x27 when "11011";
							x28 when "11100";
							x29 when "11101";
							x30 when "11110";
							x31 when "11111";

	
end 