library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.BCD_TOOLS.all;
 
entity experiments is
  port (
    i_clock      : in  std_logic;
    i_switch_1   : in  std_logic;
    i_switch_2   : in  std_logic;
    o_segments   : out std_logic_vector(7 downto 0);
	 o_digit_en   : out std_logic_vector(3 downto 0) := (others => '1')
    );
end experiments;
 
architecture rtl of experiments is
	shared variable counter : unsigned(11 downto 0) := (others => '0');

	signal sclk: std_logic;
	signal seg_clk: std_logic;
	signal w_bcd: std_logic_vector(3 downto 0) := (others => '0');
begin
	slow_clock: entity work.pulse_generator
		generic map (
			counter_size => 23
		)
		port map(
			i_clock => i_clock,
			o_pulse => sclk
		);
	
	display_clock: entity work.pulse_generator
		generic map (
			counter_size => 15
		)
		port map(
			i_clock => i_clock,
			o_pulse => seg_clk
		);
	
	bcd_coverter: entity work.bcd_to_7seg
		port map(
			i_bcd => w_bcd,
			o_segments => o_segments
		);

	digit_selector: process(seg_clk)
		variable digit_counter : unsigned(3 downto 0) := "0001";
		variable bcd_digits: unsigned(15 downto 0) := (others => '0');
	begin
		if rising_edge(seg_clk) then
			o_digit_en <= std_logic_vector(not digit_counter);
			bcd_digits := to_bcd(counter);
			
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
		
	sequential_counter : process(sclk)
	begin
		if rising_edge(sclk) then
			counter := counter + 1;
		end if;
	end process;
end rtl;