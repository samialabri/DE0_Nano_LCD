library verilog;
use verilog.vl_types.all;
entity tester is
    port(
        clk             : out    vl_logic;
        data            : out    vl_logic_vector(7 downto 0)
    );
end tester;
