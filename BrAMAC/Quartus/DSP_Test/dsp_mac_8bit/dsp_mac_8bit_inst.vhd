	component dsp_mac_8bit is
		port (
			ay         : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- ay
			by         : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- by
			ax         : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- ax
			bx         : in  std_logic_vector(7 downto 0)  := (others => 'X'); -- bx
			accumulate : in  std_logic                     := 'X';             -- accumulate
			resulta    : out std_logic_vector(26 downto 0);                    -- resulta
			clk0       : in  std_logic                     := 'X';             -- clk
			clk1       : in  std_logic                     := 'X';             -- clk
			clk2       : in  std_logic                     := 'X';             -- clk
			ena        : in  std_logic_vector(2 downto 0)  := (others => 'X'); -- ena
			aclr0      : in  std_logic                     := 'X';             -- reset
			aclr1      : in  std_logic                     := 'X'              -- reset
		);
	end component dsp_mac_8bit;

	u0 : component dsp_mac_8bit
		port map (
			ay         => CONNECTED_TO_ay,         --         ay.ay
			by         => CONNECTED_TO_by,         --         by.by
			ax         => CONNECTED_TO_ax,         --         ax.ax
			bx         => CONNECTED_TO_bx,         --         bx.bx
			accumulate => CONNECTED_TO_accumulate, -- accumulate.accumulate
			resulta    => CONNECTED_TO_resulta,    --    resulta.resulta
			clk0       => CONNECTED_TO_clk0,       --       clk0.clk
			clk1       => CONNECTED_TO_clk1,       --       clk1.clk
			clk2       => CONNECTED_TO_clk2,       --       clk2.clk
			ena        => CONNECTED_TO_ena,        --        ena.ena
			aclr0      => CONNECTED_TO_aclr0,      --      aclr0.reset
			aclr1      => CONNECTED_TO_aclr1       --      aclr1.reset
		);

