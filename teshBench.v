`timescale 1ns/1ps

module teshBench();

wire w1;
wire [7:0] w2;
wire [7:0] w3;
wire w4;
wire w5;

tester t1(

.clk (w1),
.data (w2)
);


LCD L1(

.clk (w1),
.data_in (w2),
.data_out (w3),
.lcd_e (w4),
.lcd_r (w5)


);

initial
begin 
$monitor($time,,"clk = %b , data = %b , data_out = %b, lcd_e = %b , lcd_r = %b",w1,w2,w3,w4,w5);
end 
endmodule 
