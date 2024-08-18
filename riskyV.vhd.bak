library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity riskyV is port (
   clkin_50			: in	std_logic; -- clock signal input
	pb_n				: in	std_logic_vector(3 downto 0); -- 4 active-low push buttons as inputs to select functions on the logic processor
 	sw    			: in  std_logic_vector(7 downto 0); -- 8 switch inputs to input the 2 HEX numbers
   leds				: out std_logic_vector(7 downto 0); -- 8 leds for displaying results of the logic processor (only 4 are used)
   seg7_data 		: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  	: out	std_logic;				     		-- seg7 digit1 selector
	seg7_char2  	: out	std_logic				     		-- seg7 digit2 selector
	
); 
end riskyV;

architecture TopLevelCircuit of riskyV is
--
-- Components Used ---
------------------------------------------------------------------- 
-- seven segment display "decoder"
  component SevenSegment port (
    hex    		:  in  std_logic_vector(3 downto 0);    -- The 4 bit data to be displayed
    sevenseg 	:  out std_logic_vector(6 downto 0)     -- 7-bit outputs to a 7-segment
    ); 
    end component;

-- Signals
	signal adder_sum	 : std_logic_vector(3 downto 0); -- signal with the HEX value of the sum of the 2 HEX numbers
	signal adder_carry : std_logic; -- signal with the carry value from the addition of the 2 HEX numbers
-- Here the circuit begins

begin

	hex_A <= sw(3 downto 0); -- record the readings of the switches 0-3 (0 as the lsb) as the first HEX number
	hex_B <= sw(7 downto 4); -- record the readings of the switches 4-7 (4 as the lsb) as the second HEX number
	
	INST1: SevenSegment port map(adder_sum, seg7_A); -- decode the sum HEX value and record it into seg7_A for later use
end TopLevelCircuit;
