library verilog;
use verilog.vl_types.all;
entity LCD is
    port(
        clk             : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0);
        lcd_e           : out    vl_logic;
        lcd_r           : out    vl_logic
    );
end LCD;
