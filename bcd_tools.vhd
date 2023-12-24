library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package BCD_TOOLS is
	function decimal_size(n : natural) return natural;
	function to_bcd(Binary : unsigned) return unsigned;
end BCD_TOOLS;

use work.sizing.all;

package body BCD_TOOLS is
  function decimal_size(n : natural) return natural is
  begin
    if n = 0 then
      return 1;
    else
      return floor_log(n, 10) + 1;
    end if;
  end function;
  

  function to_bcd(Binary : unsigned) return unsigned is
    variable b : unsigned(Binary'length-1 downto 0) := Binary;

    constant DIGITS : natural := decimal_size(2**Binary'length - 1);
    variable bcd : unsigned(DIGITS*4-1 downto 0) := (others => '0');
  begin

    for i in b'range loop

      -- iterate over each group of 4 bits that comprise a digit
      for d in 0 to DIGITS-1 loop
        if bcd(d*4+3 downto d*4) >= 5 then -- will be 10 to 18 on next shift
          -- add 3 to make it carry over to next digit on next shift
          -- (5+3)*2 = 16 = 2#1_0000#
          bcd(d*4+3 downto d*4) := bcd(d*4+3 downto d*4) + 3;
        end if;
      end loop;

      -- shift left -> multiply by 2
      bcd := bcd(bcd'left-1 downto 0) & b(b'left);
      b := b(b'left-1 downto 0) & '0';

    end loop;

    return bcd;
  end function;

end BCD_TOOLS;