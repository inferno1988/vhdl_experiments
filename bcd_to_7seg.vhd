library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity bcd_to_7seg is
  port (
		i_bcd			 : in  std_logic_vector(3 downto 0) := (others => '0');
      o_segments   : out std_logic_vector(7 downto 0) := (others => '0')
    );
end bcd_to_7seg;

architecture converter of bcd_to_7seg is
begin
	with i_bcd select o_segments <= "11000000" when "0000",
											  "11111001" when "0001",
											  "10100100" when "0010",
											  "10110000" when "0011",
											  "10011001" when "0100",
											  "10010010" when "0101",
											  "10000010" when "0110",
											  "11111000" when "0111",
											  "10000000" when "1000",
											  "10010000" when "1001",
											  "10000110" when others;
end converter;