library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity instruction_memory is port (
   clk			: in	std_logic; -- clock signal input
	address		: in	std_logic_vector(31 downto 0);
	opcode		: out std_logic_vector(6 downto 0); 
	rd				: out std_logic_vector(3 downto 0);
	fun			: out std_logic_vector(6 downto 0);
	rs1			: out std_logic_vector(6 downto 0);
	rs2			: out std_logic_vector(6 downto 0);
	func7			: out std_logic_vector(6 downto 0);
	
); 
end instruction_memory;

architecture instruction_circuit of instruction_memory is
--
begin
	instr <= --fetch instruction at address from memory 
	
	opcode <= instr(6 downto 0); 
	rd <= instr(11 downto 7);
	fun <= instr(14 downto 12);
	rs1 <= instr(19 downto 15);
	rs2 <= instr(24 downto 20);
	func7 <= instr(31 downto 25);
	
	INST1: SevenSegment port map(adder_sum, seg7_A); -- decode the sum HEX value and record it into seg7_A for later use
end instruction_circuit