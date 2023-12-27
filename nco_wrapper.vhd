library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nco_wrapper is
	port(
		i_clock		: in  std_logic;
		fsin_o    	: out std_logic_vector(9 downto 0);
		fcos_o    	: out std_logic_vector(9 downto 0);
		out_valid	: out std_logic
	);
end nco_wrapper;

architecture nco_wrapper_arch of nco_wrapper is
	component nco is
		port (
			clk       : in  std_logic                     := 'X';             -- clk
			reset_n   : in  std_logic                     := 'X';             -- reset_n
			clken     : in  std_logic                     := 'X';             -- clken
			phi_inc_i : in  std_logic_vector(47 downto 0) := (others => 'X'); -- phi_inc_i
			fsin_o    : out std_logic_vector(9 downto 0);                    -- fsin_o
			fcos_o    : out std_logic_vector(9 downto 0);                    -- fcos_o
			out_valid : out std_logic                                         -- out_valid
		);
	end component nco;
begin
	u0 : component nco
		port map (
			clk       => i_clock,       -- clk.clk
			reset_n   => '1',   -- rst.reset_n
			clken     => '1',     --  in.clken
			phi_inc_i => std_logic_vector(to_unsigned(562950, 48)), --    .phi_inc_i
			fsin_o    => fsin_o,    -- out.fsin_o
			fcos_o    => fcos_o,    --    .fcos_o
			out_valid => out_valid  --    .out_valid
		);
end nco_wrapper_arch;