library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity pulse_generator is
  generic(
	 counter_size: integer
  );
  port (
    i_clock   : in   std_logic;
    o_pulse   : out  std_logic
    );
end pulse_generator;

architecture generator of pulse_generator is 
begin
	slow_clock: process(i_clock)
		variable scnt: unsigned(counter_size downto 0) := (others => '0');
	begin
		if rising_edge(i_clock) then
			if scnt(counter_size) = '1' then
				o_pulse <= '1';
			else
				o_pulse <= '0';
			end if;
			
			scnt := scnt + 1;
		end if;
	end process;
end generator;