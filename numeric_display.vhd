library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.BCD_TOOLS.all;
 
entity numeric_display is
  port (
    i_clock      : in  std_logic;
	 i_seg_clk	  : in  std_logic;
    i_number	  : in  std_logic_vector(9 downto 0);
	 o_digit_en   : out std_logic_vector(3 downto 0) := (others => '1');
	 o_segments   : out std_logic_vector(7 downto 0) := (others => '0')
    );
end numeric_display;
 
architecture numeric_display_arch of numeric_display is
	signal w_bcd: std_logic_vector(3 downto 0) := (others => '0');
begin
	with w_bcd select o_segments <= "11000000" when "0000",
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
	

	digit_selector: process(i_seg_clk)
		variable digit_counter : unsigned(3 downto 0) := "0001";
		variable bcd_digits: unsigned(15 downto 0) := (others => '0');
	begin
		if rising_edge(i_seg_clk) then
			o_digit_en <= std_logic_vector(not digit_counter);
			bcd_digits := to_bcd(unsigned(i_number))(15 downto 0);
			
			case digit_counter is
				when "0001" => w_bcd <= std_logic_vector(bcd_digits(3 downto 0));
				when "0010" => w_bcd <= std_logic_vector(bcd_digits(7 downto 4));
				when "0100" => w_bcd <= std_logic_vector(bcd_digits(11 downto 8));
				when "1000" => w_bcd <= std_logic_vector(bcd_digits(15 downto 12));
				when others => w_bcd <= "0000";
			end case;
			
			digit_counter := shift_left(digit_counter, 1);
			
			if digit_counter = "0000" then
				digit_counter := "0001";
			end if;
		end if;
	end process;
end numeric_display_arch;