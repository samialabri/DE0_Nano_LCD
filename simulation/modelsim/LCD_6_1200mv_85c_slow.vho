-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "08/13/2015 18:35:09"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LCD IS
    PORT (
	clk : IN std_logic;
	data_in : IN std_logic_vector(7 DOWNTO 0);
	data_out : OUT std_logic_vector(7 DOWNTO 0);
	lcd_e : OUT std_logic;
	lcd_r : OUT std_logic;
	LED0 : OUT std_logic;
	LED1 : OUT std_logic;
	LED2 : OUT std_logic;
	LED3 : OUT std_logic
	);
END LCD;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_e	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_r	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED0	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED1	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED2	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED3	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd_e : std_logic;
SIGNAL ww_lcd_r : std_logic;
SIGNAL ww_LED0 : std_logic;
SIGNAL ww_LED1 : std_logic;
SIGNAL ww_LED2 : std_logic;
SIGNAL ww_LED3 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \i[22]~79_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \j[10]~10_combout\ : std_logic;
SIGNAL \j[22]~22_combout\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \lcd_e~output_o\ : std_logic;
SIGNAL \lcd_r~output_o\ : std_logic;
SIGNAL \LED0~output_o\ : std_logic;
SIGNAL \LED1~output_o\ : std_logic;
SIGNAL \LED2~output_o\ : std_logic;
SIGNAL \LED3~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \i[0]~33_combout\ : std_logic;
SIGNAL \i[9]~52\ : std_logic;
SIGNAL \i[10]~55_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \i[11]~32_combout\ : std_logic;
SIGNAL \i[15]~65_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \i[6]~45_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \i[5]~43_combout\ : std_logic;
SIGNAL \i[3]~39_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \i[21]~77_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \i[27]~89_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \i[11]~53_combout\ : std_logic;
SIGNAL \i[11]~54_combout\ : std_logic;
SIGNAL \i[10]~56\ : std_logic;
SIGNAL \i[11]~58\ : std_logic;
SIGNAL \i[12]~60\ : std_logic;
SIGNAL \i[13]~62\ : std_logic;
SIGNAL \i[14]~63_combout\ : std_logic;
SIGNAL \i[14]~64\ : std_logic;
SIGNAL \i[15]~66\ : std_logic;
SIGNAL \i[16]~67_combout\ : std_logic;
SIGNAL \i[16]~68\ : std_logic;
SIGNAL \i[17]~69_combout\ : std_logic;
SIGNAL \i[17]~70\ : std_logic;
SIGNAL \i[18]~71_combout\ : std_logic;
SIGNAL \i[18]~72\ : std_logic;
SIGNAL \i[19]~74\ : std_logic;
SIGNAL \i[20]~75_combout\ : std_logic;
SIGNAL \i[20]~76\ : std_logic;
SIGNAL \i[21]~78\ : std_logic;
SIGNAL \i[22]~80\ : std_logic;
SIGNAL \i[23]~81_combout\ : std_logic;
SIGNAL \i[23]~82\ : std_logic;
SIGNAL \i[24]~83_combout\ : std_logic;
SIGNAL \i[24]~84\ : std_logic;
SIGNAL \i[25]~85_combout\ : std_logic;
SIGNAL \i[25]~86\ : std_logic;
SIGNAL \i[26]~87_combout\ : std_logic;
SIGNAL \i[26]~88\ : std_logic;
SIGNAL \i[27]~90\ : std_logic;
SIGNAL \i[28]~91_combout\ : std_logic;
SIGNAL \i[28]~92\ : std_logic;
SIGNAL \i[29]~94\ : std_logic;
SIGNAL \i[30]~95_combout\ : std_logic;
SIGNAL \i[30]~96\ : std_logic;
SIGNAL \i[31]~97_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \i[29]~93_combout\ : std_logic;
SIGNAL \LessThan5~4_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \i[0]~34\ : std_logic;
SIGNAL \i[1]~35_combout\ : std_logic;
SIGNAL \i[1]~36\ : std_logic;
SIGNAL \i[2]~37_combout\ : std_logic;
SIGNAL \i[2]~38\ : std_logic;
SIGNAL \i[3]~40\ : std_logic;
SIGNAL \i[4]~41_combout\ : std_logic;
SIGNAL \i[4]~42\ : std_logic;
SIGNAL \i[5]~44\ : std_logic;
SIGNAL \i[6]~46\ : std_logic;
SIGNAL \i[7]~47_combout\ : std_logic;
SIGNAL \i[7]~48\ : std_logic;
SIGNAL \i[8]~49_combout\ : std_logic;
SIGNAL \i[8]~50\ : std_logic;
SIGNAL \i[9]~51_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \i[12]~59_combout\ : std_logic;
SIGNAL \i[11]~57_combout\ : std_logic;
SIGNAL \i[13]~61_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \j[0]~2_combout\ : std_logic;
SIGNAL \j[30]~4_combout\ : std_logic;
SIGNAL \j[13]~13_combout\ : std_logic;
SIGNAL \j[6]~6_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~67_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \j[5]~5_combout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \j[7]~7_combout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~20\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \j[9]~9_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \j[11]~11_combout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \j[12]~12_combout\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~31_combout\ : std_logic;
SIGNAL \j[14]~14_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \j[16]~16_combout\ : std_logic;
SIGNAL \Add1~36\ : std_logic;
SIGNAL \Add1~37_combout\ : std_logic;
SIGNAL \j[17]~17_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~43_combout\ : std_logic;
SIGNAL \j[20]~20_combout\ : std_logic;
SIGNAL \Add1~44\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \j[21]~21_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~48\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~51_combout\ : std_logic;
SIGNAL \j[24]~24_combout\ : std_logic;
SIGNAL \Add1~49_combout\ : std_logic;
SIGNAL \j[23]~23_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~53_combout\ : std_logic;
SIGNAL \j[25]~25_combout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \j[26]~26_combout\ : std_logic;
SIGNAL \Add1~56\ : std_logic;
SIGNAL \Add1~57_combout\ : std_logic;
SIGNAL \j[27]~27_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \j[18]~18_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \j[19]~19_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \j[8]~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \j[15]~15_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \j[0]~0_combout\ : std_logic;
SIGNAL \j[0]~1_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~59_combout\ : std_logic;
SIGNAL \j[28]~28_combout\ : std_logic;
SIGNAL \Add1~60\ : std_logic;
SIGNAL \Add1~61_combout\ : std_logic;
SIGNAL \j[29]~29_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~63_combout\ : std_logic;
SIGNAL \j[30]~30_combout\ : std_logic;
SIGNAL \Add1~64\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \j[31]~3_combout\ : std_logic;
SIGNAL \data_out[2]~0_combout\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \data_out[2]~4_combout\ : std_logic;
SIGNAL \i[19]~73_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \data_out[2]~2_combout\ : std_logic;
SIGNAL \data_out[2]~3_combout\ : std_logic;
SIGNAL \data_out[2]~5_combout\ : std_logic;
SIGNAL \data_out[2]~1_combout\ : std_logic;
SIGNAL \data_out[2]~6_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_q\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \data_out[1]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \data_out[2]~reg0_q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \data_out[3]~reg0_q\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \data_out[4]~reg0_q\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \data_out[5]~reg0_q\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \data_out[6]~reg0_q\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \data_out[7]~reg0_q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \lcd_e~reg0_q\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \lcd_r~reg0_q\ : std_logic;
SIGNAL state : std_logic_vector(3 DOWNTO 0);
SIGNAL j : std_logic_vector(31 DOWNTO 0);
SIGNAL i : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_state : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_data_in <= data_in;
data_out <= ww_data_out;
lcd_e <= ww_lcd_e;
lcd_r <= ww_lcd_r;
LED0 <= ww_LED0;
LED1 <= ww_LED1;
LED2 <= ww_LED2;
LED3 <= ww_LED3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
ALT_INV_state(0) <= NOT state(0);

-- Location: FF_X35_Y12_N13
\i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[22]~79_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(22));

-- Location: LCCOMB_X31_Y14_N12
\Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (j(6) & (\Add1~14\ $ (GND))) # (!j(6) & (!\Add1~14\ & VCC))
-- \Add1~16\ = CARRY((j(6) & !\Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(6),
	datad => VCC,
	cin => \Add1~14\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X31_Y14_N20
\Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (j(10) & (\Add1~22\ $ (GND))) # (!j(10) & (!\Add1~22\ & VCC))
-- \Add1~24\ = CARRY((j(10) & !\Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(10),
	datad => VCC,
	cin => \Add1~22\,
	combout => \Add1~23_combout\,
	cout => \Add1~24\);

-- Location: LCCOMB_X31_Y14_N26
\Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (j(13) & (!\Add1~28\)) # (!j(13) & ((\Add1~28\) # (GND)))
-- \Add1~30\ = CARRY((!\Add1~28\) # (!j(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(13),
	datad => VCC,
	cin => \Add1~28\,
	combout => \Add1~29_combout\,
	cout => \Add1~30\);

-- Location: LCCOMB_X31_Y14_N30
\Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = (j(15) & (!\Add1~32\)) # (!j(15) & ((\Add1~32\) # (GND)))
-- \Add1~34\ = CARRY((!\Add1~32\) # (!j(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(15),
	datad => VCC,
	cin => \Add1~32\,
	combout => \Add1~33_combout\,
	cout => \Add1~34\);

-- Location: LCCOMB_X31_Y13_N12
\Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (j(22) & (\Add1~46\ $ (GND))) # (!j(22) & (!\Add1~46\ & VCC))
-- \Add1~48\ = CARRY((j(22) & !\Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(22),
	datad => VCC,
	cin => \Add1~46\,
	combout => \Add1~47_combout\,
	cout => \Add1~48\);

-- Location: LCCOMB_X35_Y12_N12
\i[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[22]~79_combout\ = (i(22) & (\i[21]~78\ $ (GND))) # (!i(22) & (!\i[21]~78\ & VCC))
-- \i[22]~80\ = CARRY((i(22) & !\i[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(22),
	datad => VCC,
	cin => \i[21]~78\,
	combout => \i[22]~79_combout\,
	cout => \i[22]~80\);

-- Location: LCCOMB_X30_Y12_N6
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!j(2) & (j(1) & (!state(0) & j(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(2),
	datab => j(1),
	datac => state(0),
	datad => j(0),
	combout => \Mux20~0_combout\);

-- Location: FF_X32_Y14_N21
\j[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(10));

-- Location: LCCOMB_X32_Y14_N6
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!j(9) & (!j(10) & (!j(11) & !j(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(9),
	datab => j(10),
	datac => j(11),
	datad => j(12),
	combout => \LessThan0~1_combout\);

-- Location: FF_X32_Y13_N7
\j[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[22]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(22));

-- Location: LCCOMB_X30_Y13_N4
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!j(30) & !j(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => j(30),
	datad => j(29),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X32_Y12_N6
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ((\lcd_e~reg0_q\ & ((i(30)) # (!\LessThan5~4_combout\)))) # (!\data_out[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_e~reg0_q\,
	datab => i(30),
	datac => \LessThan5~4_combout\,
	datad => \data_out[2]~5_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X31_Y11_N10
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (state(0) & ((state(2) & ((!state(1)))) # (!state(2) & (\lcd_r~reg0_q\ & state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => \lcd_r~reg0_q\,
	datad => state(1),
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X32_Y14_N20
\j[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[10]~10_combout\ = (\j[0]~2_combout\ & (\Add1~23_combout\ & ((\j[30]~4_combout\)))) # (!\j[0]~2_combout\ & ((j(10)) # ((\Add1~23_combout\ & \j[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~2_combout\,
	datab => \Add1~23_combout\,
	datac => j(10),
	datad => \j[30]~4_combout\,
	combout => \j[10]~10_combout\);

-- Location: LCCOMB_X32_Y13_N6
\j[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[22]~22_combout\ = (\j[30]~4_combout\ & ((\Add1~47_combout\) # ((j(22) & !\j[0]~2_combout\)))) # (!\j[30]~4_combout\ & (((j(22) & !\j[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \Add1~47_combout\,
	datac => j(22),
	datad => \j[0]~2_combout\,
	combout => \j[22]~22_combout\);

-- Location: IOIBUF_X36_Y0_N8
\data_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\data_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: IOOBUF_X29_Y34_N16
\data_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\data_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\data_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\data_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\data_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\data_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\data_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\data_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\lcd_e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_e~reg0_q\,
	devoe => ww_devoe,
	o => \lcd_e~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\lcd_r~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd_r~reg0_q\,
	devoe => ww_devoe,
	o => \lcd_r~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_state(0),
	devoe => ww_devoe,
	o => \LED0~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(1),
	devoe => ww_devoe,
	o => \LED1~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => state(2),
	devoe => ww_devoe,
	o => \LED2~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED3~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G18
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y14_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = j(0) $ (VCC)
-- \Add1~1\ = CARRY(j(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X35_Y13_N0
\i[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[0]~33_combout\ = i(0) $ (VCC)
-- \i[0]~34\ = CARRY(i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(0),
	datad => VCC,
	combout => \i[0]~33_combout\,
	cout => \i[0]~34\);

-- Location: LCCOMB_X35_Y13_N18
\i[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[9]~51_combout\ = (i(9) & (!\i[8]~50\)) # (!i(9) & ((\i[8]~50\) # (GND)))
-- \i[9]~52\ = CARRY((!\i[8]~50\) # (!i(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(9),
	datad => VCC,
	cin => \i[8]~50\,
	combout => \i[9]~51_combout\,
	cout => \i[9]~52\);

-- Location: LCCOMB_X35_Y13_N20
\i[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[10]~55_combout\ = (i(10) & (\i[9]~52\ $ (GND))) # (!i(10) & (!\i[9]~52\ & VCC))
-- \i[10]~56\ = CARRY((i(10) & !\i[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(10),
	datad => VCC,
	cin => \i[9]~52\,
	combout => \i[10]~55_combout\,
	cout => \i[10]~56\);

-- Location: LCCOMB_X31_Y12_N14
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (j(31)) # ((!j(4) & (\LessThan0~9_combout\ & \LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(4),
	datab => j(31),
	datac => \LessThan0~9_combout\,
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X31_Y11_N24
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!state(0) & (!state(2) & (!\LessThan0~10_combout\ & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datac => \LessThan0~10_combout\,
	datad => state(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X31_Y11_N22
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (state(0) & (!state(2) & state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datad => state(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X31_Y12_N20
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (j(31)) # ((!j(4) & \LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(4),
	datab => j(31),
	datad => \LessThan0~8_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y11_N0
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux11~0_combout\) # ((\Mux9~0_combout\ & \LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~0_combout\,
	datac => \Mux9~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: FF_X31_Y11_N1
\state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(1));

-- Location: LCCOMB_X31_Y11_N2
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (state(0) & ((state(1) & (!state(2) & !\LessThan2~0_combout\)) # (!state(1) & (state(2) & \LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => state(2),
	datad => \LessThan2~0_combout\,
	combout => \Mux8~2_combout\);

-- Location: FF_X31_Y11_N3
\state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux8~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(2));

-- Location: LCCOMB_X31_Y11_N16
\i[11]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[11]~32_combout\ = (state(0) & (state(2) $ (state(1)))) # (!state(0) & (!state(2) & !state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datad => state(1),
	combout => \i[11]~32_combout\);

-- Location: LCCOMB_X35_Y13_N30
\i[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[15]~65_combout\ = (i(15) & (!\i[14]~64\)) # (!i(15) & ((\i[14]~64\) # (GND)))
-- \i[15]~66\ = CARRY((!\i[14]~64\) # (!i(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(15),
	datad => VCC,
	cin => \i[14]~64\,
	combout => \i[15]~65_combout\,
	cout => \i[15]~66\);

-- Location: FF_X34_Y12_N27
\i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i[15]~65_combout\,
	sclr => \Mux21~0_combout\,
	sload => VCC,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(15));

-- Location: LCCOMB_X34_Y12_N14
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (i(15) & (i(20) & !i(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(15),
	datac => i(20),
	datad => i(31),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X35_Y13_N12
\i[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[6]~45_combout\ = (i(6) & (\i[5]~44\ $ (GND))) # (!i(6) & (!\i[5]~44\ & VCC))
-- \i[6]~46\ = CARRY((i(6) & !\i[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datad => VCC,
	cin => \i[5]~44\,
	combout => \i[6]~45_combout\,
	cout => \i[6]~46\);

-- Location: FF_X35_Y13_N13
\i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[6]~45_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(6));

-- Location: LCCOMB_X34_Y13_N4
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (i(10) & (!i(8) & (i(7) & !i(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(10),
	datab => i(8),
	datac => i(7),
	datad => i(9),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X34_Y12_N8
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~0_combout\ & (\Equal0~9_combout\ & (!i(6) & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~9_combout\,
	datac => i(6),
	datad => \Equal0~8_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X35_Y13_N10
\i[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[5]~43_combout\ = (i(5) & (!\i[4]~42\)) # (!i(5) & ((\i[4]~42\) # (GND)))
-- \i[5]~44\ = CARRY((!\i[4]~42\) # (!i(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(5),
	datad => VCC,
	cin => \i[4]~42\,
	combout => \i[5]~43_combout\,
	cout => \i[5]~44\);

-- Location: FF_X35_Y13_N11
\i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[5]~43_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(5));

-- Location: LCCOMB_X35_Y13_N6
\i[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[3]~39_combout\ = (i(3) & (!\i[2]~38\)) # (!i(3) & ((\i[2]~38\) # (GND)))
-- \i[3]~40\ = CARRY((!\i[2]~38\) # (!i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datad => VCC,
	cin => \i[2]~38\,
	combout => \i[3]~39_combout\,
	cout => \i[3]~40\);

-- Location: FF_X35_Y13_N7
\i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[3]~39_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(3));

-- Location: LCCOMB_X34_Y13_N28
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!i(2) & (!i(0) & (!i(1) & !i(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(0),
	datac => i(1),
	datad => i(3),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X34_Y13_N30
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!i(5) & (!i(4) & \Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(5),
	datac => i(4),
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X35_Y12_N10
\i[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[21]~77_combout\ = (i(21) & (!\i[20]~76\)) # (!i(21) & ((\i[20]~76\) # (GND)))
-- \i[21]~78\ = CARRY((!\i[20]~76\) # (!i(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(21),
	datad => VCC,
	cin => \i[20]~76\,
	combout => \i[21]~77_combout\,
	cout => \i[21]~78\);

-- Location: FF_X35_Y12_N11
\i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[21]~77_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(21));

-- Location: LCCOMB_X31_Y12_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!i(22) & (!i(21) & (!i(23) & !i(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(22),
	datab => i(21),
	datac => i(23),
	datad => i(24),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X35_Y12_N22
\i[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[27]~89_combout\ = (i(27) & (!\i[26]~88\)) # (!i(27) & ((\i[26]~88\) # (GND)))
-- \i[27]~90\ = CARRY((!\i[26]~88\) # (!i(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(27),
	datad => VCC,
	cin => \i[26]~88\,
	combout => \i[27]~89_combout\,
	cout => \i[27]~90\);

-- Location: FF_X36_Y12_N21
\i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i[27]~89_combout\,
	sclr => \Mux21~0_combout\,
	sload => VCC,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(27));

-- Location: LCCOMB_X36_Y12_N4
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!i(28) & (!i(26) & (!i(25) & !i(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(28),
	datab => i(26),
	datac => i(25),
	datad => i(27),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X31_Y12_N28
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!i(29) & (!i(30) & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(29),
	datab => i(30),
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X34_Y12_N22
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (\Equal0~7_combout\ & (\Equal0~10_combout\ & (\Equal0~5_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~10_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X34_Y12_N10
\i[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[11]~53_combout\ = (i(31)) # ((\Equal0~11_combout\) # ((\LessThan5~3_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~3_combout\,
	datab => i(31),
	datac => \Equal0~11_combout\,
	datad => \Equal0~3_combout\,
	combout => \i[11]~53_combout\);

-- Location: LCCOMB_X34_Y12_N0
\i[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[11]~54_combout\ = (\j[0]~1_combout\ & (\i[11]~32_combout\ & \i[11]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~1_combout\,
	datab => \i[11]~32_combout\,
	datad => \i[11]~53_combout\,
	combout => \i[11]~54_combout\);

-- Location: FF_X35_Y13_N21
\i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[10]~55_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(10));

-- Location: LCCOMB_X35_Y13_N22
\i[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[11]~57_combout\ = (i(11) & (!\i[10]~56\)) # (!i(11) & ((\i[10]~56\) # (GND)))
-- \i[11]~58\ = CARRY((!\i[10]~56\) # (!i(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(11),
	datad => VCC,
	cin => \i[10]~56\,
	combout => \i[11]~57_combout\,
	cout => \i[11]~58\);

-- Location: LCCOMB_X35_Y13_N24
\i[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[12]~59_combout\ = (i(12) & (\i[11]~58\ $ (GND))) # (!i(12) & (!\i[11]~58\ & VCC))
-- \i[12]~60\ = CARRY((i(12) & !\i[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(12),
	datad => VCC,
	cin => \i[11]~58\,
	combout => \i[12]~59_combout\,
	cout => \i[12]~60\);

-- Location: LCCOMB_X35_Y13_N26
\i[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[13]~61_combout\ = (i(13) & (!\i[12]~60\)) # (!i(13) & ((\i[12]~60\) # (GND)))
-- \i[13]~62\ = CARRY((!\i[12]~60\) # (!i(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(13),
	datad => VCC,
	cin => \i[12]~60\,
	combout => \i[13]~61_combout\,
	cout => \i[13]~62\);

-- Location: LCCOMB_X35_Y13_N28
\i[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[14]~63_combout\ = (i(14) & (\i[13]~62\ $ (GND))) # (!i(14) & (!\i[13]~62\ & VCC))
-- \i[14]~64\ = CARRY((i(14) & !\i[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(14),
	datad => VCC,
	cin => \i[13]~62\,
	combout => \i[14]~63_combout\,
	cout => \i[14]~64\);

-- Location: FF_X34_Y12_N17
\i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i[14]~63_combout\,
	sclr => \Mux21~0_combout\,
	sload => VCC,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(14));

-- Location: LCCOMB_X35_Y12_N0
\i[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[16]~67_combout\ = (i(16) & (\i[15]~66\ $ (GND))) # (!i(16) & (!\i[15]~66\ & VCC))
-- \i[16]~68\ = CARRY((i(16) & !\i[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(16),
	datad => VCC,
	cin => \i[15]~66\,
	combout => \i[16]~67_combout\,
	cout => \i[16]~68\);

-- Location: FF_X35_Y12_N1
\i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[16]~67_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(16));

-- Location: LCCOMB_X35_Y12_N2
\i[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[17]~69_combout\ = (i(17) & (!\i[16]~68\)) # (!i(17) & ((\i[16]~68\) # (GND)))
-- \i[17]~70\ = CARRY((!\i[16]~68\) # (!i(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(17),
	datad => VCC,
	cin => \i[16]~68\,
	combout => \i[17]~69_combout\,
	cout => \i[17]~70\);

-- Location: FF_X35_Y12_N3
\i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[17]~69_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(17));

-- Location: LCCOMB_X35_Y12_N4
\i[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[18]~71_combout\ = (i(18) & (\i[17]~70\ $ (GND))) # (!i(18) & (!\i[17]~70\ & VCC))
-- \i[18]~72\ = CARRY((i(18) & !\i[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(18),
	datad => VCC,
	cin => \i[17]~70\,
	combout => \i[18]~71_combout\,
	cout => \i[18]~72\);

-- Location: FF_X35_Y12_N5
\i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[18]~71_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(18));

-- Location: LCCOMB_X35_Y12_N6
\i[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[19]~73_combout\ = (i(19) & (!\i[18]~72\)) # (!i(19) & ((\i[18]~72\) # (GND)))
-- \i[19]~74\ = CARRY((!\i[18]~72\) # (!i(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(19),
	datad => VCC,
	cin => \i[18]~72\,
	combout => \i[19]~73_combout\,
	cout => \i[19]~74\);

-- Location: LCCOMB_X35_Y12_N8
\i[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[20]~75_combout\ = (i(20) & (\i[19]~74\ $ (GND))) # (!i(20) & (!\i[19]~74\ & VCC))
-- \i[20]~76\ = CARRY((i(20) & !\i[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(20),
	datad => VCC,
	cin => \i[19]~74\,
	combout => \i[20]~75_combout\,
	cout => \i[20]~76\);

-- Location: FF_X35_Y12_N9
\i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[20]~75_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(20));

-- Location: LCCOMB_X35_Y12_N14
\i[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[23]~81_combout\ = (i(23) & (!\i[22]~80\)) # (!i(23) & ((\i[22]~80\) # (GND)))
-- \i[23]~82\ = CARRY((!\i[22]~80\) # (!i(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(23),
	datad => VCC,
	cin => \i[22]~80\,
	combout => \i[23]~81_combout\,
	cout => \i[23]~82\);

-- Location: FF_X35_Y12_N15
\i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[23]~81_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(23));

-- Location: LCCOMB_X35_Y12_N16
\i[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[24]~83_combout\ = (i(24) & (\i[23]~82\ $ (GND))) # (!i(24) & (!\i[23]~82\ & VCC))
-- \i[24]~84\ = CARRY((i(24) & !\i[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(24),
	datad => VCC,
	cin => \i[23]~82\,
	combout => \i[24]~83_combout\,
	cout => \i[24]~84\);

-- Location: FF_X35_Y12_N17
\i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[24]~83_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(24));

-- Location: LCCOMB_X35_Y12_N18
\i[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[25]~85_combout\ = (i(25) & (!\i[24]~84\)) # (!i(25) & ((\i[24]~84\) # (GND)))
-- \i[25]~86\ = CARRY((!\i[24]~84\) # (!i(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(25),
	datad => VCC,
	cin => \i[24]~84\,
	combout => \i[25]~85_combout\,
	cout => \i[25]~86\);

-- Location: FF_X36_Y12_N9
\i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i[25]~85_combout\,
	sclr => \Mux21~0_combout\,
	sload => VCC,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(25));

-- Location: LCCOMB_X35_Y12_N20
\i[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[26]~87_combout\ = (i(26) & (\i[25]~86\ $ (GND))) # (!i(26) & (!\i[25]~86\ & VCC))
-- \i[26]~88\ = CARRY((i(26) & !\i[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(26),
	datad => VCC,
	cin => \i[25]~86\,
	combout => \i[26]~87_combout\,
	cout => \i[26]~88\);

-- Location: FF_X36_Y12_N19
\i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i[26]~87_combout\,
	sclr => \Mux21~0_combout\,
	sload => VCC,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(26));

-- Location: LCCOMB_X35_Y12_N24
\i[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[28]~91_combout\ = (i(28) & (\i[27]~90\ $ (GND))) # (!i(28) & (!\i[27]~90\ & VCC))
-- \i[28]~92\ = CARRY((i(28) & !\i[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(28),
	datad => VCC,
	cin => \i[27]~90\,
	combout => \i[28]~91_combout\,
	cout => \i[28]~92\);

-- Location: FF_X36_Y12_N27
\i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i[28]~91_combout\,
	sclr => \Mux21~0_combout\,
	sload => VCC,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(28));

-- Location: LCCOMB_X35_Y12_N26
\i[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[29]~93_combout\ = (i(29) & (!\i[28]~92\)) # (!i(29) & ((\i[28]~92\) # (GND)))
-- \i[29]~94\ = CARRY((!\i[28]~92\) # (!i(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(29),
	datad => VCC,
	cin => \i[28]~92\,
	combout => \i[29]~93_combout\,
	cout => \i[29]~94\);

-- Location: LCCOMB_X35_Y12_N28
\i[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[30]~95_combout\ = (i(30) & (\i[29]~94\ $ (GND))) # (!i(30) & (!\i[29]~94\ & VCC))
-- \i[30]~96\ = CARRY((i(30) & !\i[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(30),
	datad => VCC,
	cin => \i[29]~94\,
	combout => \i[30]~95_combout\,
	cout => \i[30]~96\);

-- Location: FF_X35_Y12_N29
\i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[30]~95_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(30));

-- Location: LCCOMB_X35_Y12_N30
\i[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[31]~97_combout\ = i(31) $ (\i[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(31),
	cin => \i[30]~96\,
	combout => \i[31]~97_combout\);

-- Location: FF_X35_Y12_N31
\i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[31]~97_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(31));

-- Location: LCCOMB_X34_Y12_N26
\LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~3_combout\ = (\LessThan5~2_combout\) # (!i(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(20),
	datad => \LessThan5~2_combout\,
	combout => \LessThan5~3_combout\);

-- Location: FF_X35_Y12_N27
\i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[29]~93_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(29));

-- Location: LCCOMB_X34_Y12_N28
\LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\LessThan5~3_combout\ & !i(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \LessThan5~3_combout\,
	datad => i(29),
	combout => \LessThan5~4_combout\);

-- Location: LCCOMB_X34_Y12_N16
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!i(31) & ((i(30)) # (!\LessThan5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(30),
	datab => i(31),
	datad => \LessThan5~4_combout\,
	combout => \Mux21~0_combout\);

-- Location: FF_X35_Y13_N1
\i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[0]~33_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(0));

-- Location: LCCOMB_X35_Y13_N2
\i[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[1]~35_combout\ = (i(1) & (!\i[0]~34\)) # (!i(1) & ((\i[0]~34\) # (GND)))
-- \i[1]~36\ = CARRY((!\i[0]~34\) # (!i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datad => VCC,
	cin => \i[0]~34\,
	combout => \i[1]~35_combout\,
	cout => \i[1]~36\);

-- Location: FF_X35_Y13_N3
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[1]~35_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LCCOMB_X35_Y13_N4
\i[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[2]~37_combout\ = (i(2) & (\i[1]~36\ $ (GND))) # (!i(2) & (!\i[1]~36\ & VCC))
-- \i[2]~38\ = CARRY((i(2) & !\i[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datad => VCC,
	cin => \i[1]~36\,
	combout => \i[2]~37_combout\,
	cout => \i[2]~38\);

-- Location: FF_X35_Y13_N5
\i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[2]~37_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(2));

-- Location: LCCOMB_X35_Y13_N8
\i[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[4]~41_combout\ = (i(4) & (\i[3]~40\ $ (GND))) # (!i(4) & (!\i[3]~40\ & VCC))
-- \i[4]~42\ = CARRY((i(4) & !\i[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(4),
	datad => VCC,
	cin => \i[3]~40\,
	combout => \i[4]~41_combout\,
	cout => \i[4]~42\);

-- Location: FF_X35_Y13_N9
\i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[4]~41_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(4));

-- Location: LCCOMB_X35_Y13_N14
\i[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[7]~47_combout\ = (i(7) & (!\i[6]~46\)) # (!i(7) & ((\i[6]~46\) # (GND)))
-- \i[7]~48\ = CARRY((!\i[6]~46\) # (!i(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(7),
	datad => VCC,
	cin => \i[6]~46\,
	combout => \i[7]~47_combout\,
	cout => \i[7]~48\);

-- Location: FF_X35_Y13_N15
\i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[7]~47_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(7));

-- Location: LCCOMB_X35_Y13_N16
\i[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[8]~49_combout\ = (i(8) & (\i[7]~48\ $ (GND))) # (!i(8) & (!\i[7]~48\ & VCC))
-- \i[8]~50\ = CARRY((i(8) & !\i[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(8),
	datad => VCC,
	cin => \i[7]~48\,
	combout => \i[8]~49_combout\,
	cout => \i[8]~50\);

-- Location: FF_X35_Y13_N17
\i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[8]~49_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(8));

-- Location: FF_X35_Y13_N19
\i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[9]~51_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(9));

-- Location: LCCOMB_X34_Y12_N4
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = ((!i(7) & (!i(9) & !i(8)))) # (!i(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(7),
	datab => i(9),
	datac => i(8),
	datad => i(10),
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X34_Y12_N30
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (!i(16) & !i(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i(16),
	datad => i(15),
	combout => \LessThan5~0_combout\);

-- Location: FF_X34_Y12_N1
\i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \i[12]~59_combout\,
	sclr => \Mux21~0_combout\,
	sload => VCC,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(12));

-- Location: FF_X35_Y13_N23
\i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[11]~57_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(11));

-- Location: FF_X35_Y13_N27
\i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[13]~61_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(13));

-- Location: LCCOMB_X34_Y12_N18
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!i(14) & (!i(12) & (!i(11) & !i(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(14),
	datab => i(12),
	datac => i(11),
	datad => i(13),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X34_Y12_N12
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!i(16) & \Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i(16),
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X34_Y12_N2
\LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = ((\LessThan5~0_combout\) # ((\LessThan5~1_combout\ & \Equal0~7_combout\))) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \LessThan5~1_combout\,
	datac => \LessThan5~0_combout\,
	datad => \Equal0~7_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X34_Y12_N24
\j[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[0]~2_combout\ = (\i[11]~32_combout\ & (((!\LessThan5~2_combout\ & \Equal0~11_combout\)) # (!\j[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[11]~32_combout\,
	datab => \LessThan5~2_combout\,
	datac => \Equal0~11_combout\,
	datad => \j[0]~1_combout\,
	combout => \j[0]~2_combout\);

-- Location: LCCOMB_X32_Y14_N30
\j[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[30]~4_combout\ = (\i[11]~32_combout\ & (!\LessThan5~2_combout\ & (\j[0]~1_combout\ & \Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[11]~32_combout\,
	datab => \LessThan5~2_combout\,
	datac => \j[0]~1_combout\,
	datad => \Equal0~11_combout\,
	combout => \j[30]~4_combout\);

-- Location: LCCOMB_X32_Y14_N28
\j[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[13]~13_combout\ = (\Add1~29_combout\ & ((\j[30]~4_combout\) # ((!\j[0]~2_combout\ & j(13))))) # (!\Add1~29_combout\ & (!\j[0]~2_combout\ & (j(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~29_combout\,
	datab => \j[0]~2_combout\,
	datac => j(13),
	datad => \j[30]~4_combout\,
	combout => \j[13]~13_combout\);

-- Location: FF_X32_Y14_N29
\j[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(13));

-- Location: LCCOMB_X32_Y14_N18
\j[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[6]~6_combout\ = (\Add1~15_combout\ & ((\j[30]~4_combout\) # ((!\j[0]~2_combout\ & j(6))))) # (!\Add1~15_combout\ & (!\j[0]~2_combout\ & (j(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~15_combout\,
	datab => \j[0]~2_combout\,
	datac => j(6),
	datad => \j[30]~4_combout\,
	combout => \j[6]~6_combout\);

-- Location: FF_X32_Y14_N19
\j[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(6));

-- Location: LCCOMB_X31_Y14_N2
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (j(1) & (!\Add1~1\)) # (!j(1) & ((\Add1~1\) # (GND)))
-- \Add1~4\ = CARRY((!\Add1~1\) # (!j(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X30_Y14_N30
\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\Add1~3_combout\ & ((j(31)) # ((\j[0]~0_combout\ & \LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~0_combout\,
	datab => j(31),
	datac => \Add1~3_combout\,
	datad => \LessThan0~8_combout\,
	combout => \Add1~5_combout\);

-- Location: FF_X30_Y14_N31
\j[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~5_combout\,
	ena => \j[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(1));

-- Location: LCCOMB_X31_Y14_N4
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (j(2) & (\Add1~4\ $ (GND))) # (!j(2) & (!\Add1~4\ & VCC))
-- \Add1~7\ = CARRY((j(2) & !\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X30_Y14_N4
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~6_combout\ & ((j(31)) # ((\j[0]~0_combout\ & \LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~0_combout\,
	datab => j(31),
	datac => \Add1~6_combout\,
	datad => \LessThan0~8_combout\,
	combout => \Add1~8_combout\);

-- Location: FF_X30_Y14_N5
\j[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	ena => \j[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(2));

-- Location: LCCOMB_X31_Y14_N6
\Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (j(3) & (!\Add1~7\)) # (!j(3) & ((\Add1~7\) # (GND)))
-- \Add1~10\ = CARRY((!\Add1~7\) # (!j(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(3),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X30_Y14_N24
\Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (\Add1~9_combout\ & ((j(31)) # ((\j[0]~0_combout\ & \LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~0_combout\,
	datab => j(31),
	datac => \LessThan0~8_combout\,
	datad => \Add1~9_combout\,
	combout => \Add1~68_combout\);

-- Location: FF_X30_Y14_N25
\j[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~68_combout\,
	ena => \j[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(3));

-- Location: LCCOMB_X31_Y14_N8
\Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (j(4) & (\Add1~10\ $ (GND))) # (!j(4) & (!\Add1~10\ & VCC))
-- \Add1~12\ = CARRY((j(4) & !\Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(4),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~11_combout\,
	cout => \Add1~12\);

-- Location: LCCOMB_X30_Y14_N22
\Add1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~67_combout\ = (\Add1~11_combout\ & ((j(31)) # ((\j[0]~0_combout\ & \LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~0_combout\,
	datab => j(31),
	datac => \Add1~11_combout\,
	datad => \LessThan0~8_combout\,
	combout => \Add1~67_combout\);

-- Location: FF_X30_Y14_N23
\j[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~67_combout\,
	ena => \j[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(4));

-- Location: LCCOMB_X31_Y14_N10
\Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = (j(5) & (!\Add1~12\)) # (!j(5) & ((\Add1~12\) # (GND)))
-- \Add1~14\ = CARRY((!\Add1~12\) # (!j(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(5),
	datad => VCC,
	cin => \Add1~12\,
	combout => \Add1~13_combout\,
	cout => \Add1~14\);

-- Location: LCCOMB_X32_Y14_N12
\j[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[5]~5_combout\ = (\j[30]~4_combout\ & ((\Add1~13_combout\) # ((!\j[0]~2_combout\ & j(5))))) # (!\j[30]~4_combout\ & (!\j[0]~2_combout\ & (j(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \j[0]~2_combout\,
	datac => j(5),
	datad => \Add1~13_combout\,
	combout => \j[5]~5_combout\);

-- Location: FF_X32_Y14_N13
\j[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(5));

-- Location: LCCOMB_X31_Y14_N14
\Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (j(7) & (!\Add1~16\)) # (!j(7) & ((\Add1~16\) # (GND)))
-- \Add1~18\ = CARRY((!\Add1~16\) # (!j(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(7),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~17_combout\,
	cout => \Add1~18\);

-- Location: LCCOMB_X32_Y14_N8
\j[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[7]~7_combout\ = (\j[0]~2_combout\ & (\Add1~17_combout\ & ((\j[30]~4_combout\)))) # (!\j[0]~2_combout\ & ((j(7)) # ((\Add1~17_combout\ & \j[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~2_combout\,
	datab => \Add1~17_combout\,
	datac => j(7),
	datad => \j[30]~4_combout\,
	combout => \j[7]~7_combout\);

-- Location: FF_X32_Y14_N9
\j[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(7));

-- Location: LCCOMB_X31_Y14_N16
\Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = (j(8) & (\Add1~18\ $ (GND))) # (!j(8) & (!\Add1~18\ & VCC))
-- \Add1~20\ = CARRY((j(8) & !\Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(8),
	datad => VCC,
	cin => \Add1~18\,
	combout => \Add1~19_combout\,
	cout => \Add1~20\);

-- Location: LCCOMB_X31_Y14_N18
\Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (j(9) & (!\Add1~20\)) # (!j(9) & ((\Add1~20\) # (GND)))
-- \Add1~22\ = CARRY((!\Add1~20\) # (!j(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(9),
	datad => VCC,
	cin => \Add1~20\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X32_Y14_N22
\j[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[9]~9_combout\ = (\j[0]~2_combout\ & (\Add1~21_combout\ & ((\j[30]~4_combout\)))) # (!\j[0]~2_combout\ & ((j(9)) # ((\Add1~21_combout\ & \j[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~2_combout\,
	datab => \Add1~21_combout\,
	datac => j(9),
	datad => \j[30]~4_combout\,
	combout => \j[9]~9_combout\);

-- Location: FF_X32_Y14_N23
\j[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(9));

-- Location: LCCOMB_X31_Y14_N22
\Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~25_combout\ = (j(11) & (!\Add1~24\)) # (!j(11) & ((\Add1~24\) # (GND)))
-- \Add1~26\ = CARRY((!\Add1~24\) # (!j(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(11),
	datad => VCC,
	cin => \Add1~24\,
	combout => \Add1~25_combout\,
	cout => \Add1~26\);

-- Location: LCCOMB_X32_Y14_N26
\j[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[11]~11_combout\ = (\j[0]~2_combout\ & (\Add1~25_combout\ & ((\j[30]~4_combout\)))) # (!\j[0]~2_combout\ & ((j(11)) # ((\Add1~25_combout\ & \j[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~2_combout\,
	datab => \Add1~25_combout\,
	datac => j(11),
	datad => \j[30]~4_combout\,
	combout => \j[11]~11_combout\);

-- Location: FF_X32_Y14_N27
\j[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(11));

-- Location: LCCOMB_X31_Y14_N24
\Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (j(12) & (\Add1~26\ $ (GND))) # (!j(12) & (!\Add1~26\ & VCC))
-- \Add1~28\ = CARRY((j(12) & !\Add1~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(12),
	datad => VCC,
	cin => \Add1~26\,
	combout => \Add1~27_combout\,
	cout => \Add1~28\);

-- Location: LCCOMB_X32_Y14_N16
\j[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[12]~12_combout\ = (\j[0]~2_combout\ & (\Add1~27_combout\ & ((\j[30]~4_combout\)))) # (!\j[0]~2_combout\ & ((j(12)) # ((\Add1~27_combout\ & \j[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~2_combout\,
	datab => \Add1~27_combout\,
	datac => j(12),
	datad => \j[30]~4_combout\,
	combout => \j[12]~12_combout\);

-- Location: FF_X32_Y14_N17
\j[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(12));

-- Location: LCCOMB_X31_Y14_N28
\Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~31_combout\ = (j(14) & (\Add1~30\ $ (GND))) # (!j(14) & (!\Add1~30\ & VCC))
-- \Add1~32\ = CARRY((j(14) & !\Add1~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(14),
	datad => VCC,
	cin => \Add1~30\,
	combout => \Add1~31_combout\,
	cout => \Add1~32\);

-- Location: LCCOMB_X32_Y14_N10
\j[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[14]~14_combout\ = (\j[0]~2_combout\ & (\Add1~31_combout\ & ((\j[30]~4_combout\)))) # (!\j[0]~2_combout\ & ((j(14)) # ((\Add1~31_combout\ & \j[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~2_combout\,
	datab => \Add1~31_combout\,
	datac => j(14),
	datad => \j[30]~4_combout\,
	combout => \j[14]~14_combout\);

-- Location: FF_X32_Y14_N11
\j[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(14));

-- Location: LCCOMB_X31_Y13_N0
\Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = (j(16) & (\Add1~34\ $ (GND))) # (!j(16) & (!\Add1~34\ & VCC))
-- \Add1~36\ = CARRY((j(16) & !\Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(16),
	datad => VCC,
	cin => \Add1~34\,
	combout => \Add1~35_combout\,
	cout => \Add1~36\);

-- Location: LCCOMB_X32_Y14_N14
\j[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[16]~16_combout\ = (\j[0]~2_combout\ & (\Add1~35_combout\ & ((\j[30]~4_combout\)))) # (!\j[0]~2_combout\ & ((j(16)) # ((\Add1~35_combout\ & \j[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~2_combout\,
	datab => \Add1~35_combout\,
	datac => j(16),
	datad => \j[30]~4_combout\,
	combout => \j[16]~16_combout\);

-- Location: FF_X32_Y14_N15
\j[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[16]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(16));

-- Location: LCCOMB_X31_Y13_N2
\Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~37_combout\ = (j(17) & (!\Add1~36\)) # (!j(17) & ((\Add1~36\) # (GND)))
-- \Add1~38\ = CARRY((!\Add1~36\) # (!j(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(17),
	datad => VCC,
	cin => \Add1~36\,
	combout => \Add1~37_combout\,
	cout => \Add1~38\);

-- Location: LCCOMB_X32_Y13_N10
\j[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[17]~17_combout\ = (\j[30]~4_combout\ & ((\Add1~37_combout\) # ((j(17) & !\j[0]~2_combout\)))) # (!\j[30]~4_combout\ & (((j(17) & !\j[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \Add1~37_combout\,
	datac => j(17),
	datad => \j[0]~2_combout\,
	combout => \j[17]~17_combout\);

-- Location: FF_X32_Y13_N11
\j[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[17]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(17));

-- Location: LCCOMB_X31_Y13_N4
\Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (j(18) & (\Add1~38\ $ (GND))) # (!j(18) & (!\Add1~38\ & VCC))
-- \Add1~40\ = CARRY((j(18) & !\Add1~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(18),
	datad => VCC,
	cin => \Add1~38\,
	combout => \Add1~39_combout\,
	cout => \Add1~40\);

-- Location: LCCOMB_X31_Y13_N6
\Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (j(19) & (!\Add1~40\)) # (!j(19) & ((\Add1~40\) # (GND)))
-- \Add1~42\ = CARRY((!\Add1~40\) # (!j(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(19),
	datad => VCC,
	cin => \Add1~40\,
	combout => \Add1~41_combout\,
	cout => \Add1~42\);

-- Location: LCCOMB_X31_Y13_N8
\Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~43_combout\ = (j(20) & (\Add1~42\ $ (GND))) # (!j(20) & (!\Add1~42\ & VCC))
-- \Add1~44\ = CARRY((j(20) & !\Add1~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(20),
	datad => VCC,
	cin => \Add1~42\,
	combout => \Add1~43_combout\,
	cout => \Add1~44\);

-- Location: LCCOMB_X32_Y13_N24
\j[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[20]~20_combout\ = (\j[30]~4_combout\ & ((\Add1~43_combout\) # ((j(20) & !\j[0]~2_combout\)))) # (!\j[30]~4_combout\ & (((j(20) & !\j[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \Add1~43_combout\,
	datac => j(20),
	datad => \j[0]~2_combout\,
	combout => \j[20]~20_combout\);

-- Location: FF_X32_Y13_N25
\j[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[20]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(20));

-- Location: LCCOMB_X31_Y13_N10
\Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = (j(21) & (!\Add1~44\)) # (!j(21) & ((\Add1~44\) # (GND)))
-- \Add1~46\ = CARRY((!\Add1~44\) # (!j(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(21),
	datad => VCC,
	cin => \Add1~44\,
	combout => \Add1~45_combout\,
	cout => \Add1~46\);

-- Location: LCCOMB_X32_Y13_N8
\j[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[21]~21_combout\ = (\j[30]~4_combout\ & ((\Add1~45_combout\) # ((j(21) & !\j[0]~2_combout\)))) # (!\j[30]~4_combout\ & (((j(21) & !\j[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \Add1~45_combout\,
	datac => j(21),
	datad => \j[0]~2_combout\,
	combout => \j[21]~21_combout\);

-- Location: FF_X32_Y13_N9
\j[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[21]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(21));

-- Location: LCCOMB_X31_Y13_N14
\Add1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~49_combout\ = (j(23) & (!\Add1~48\)) # (!j(23) & ((\Add1~48\) # (GND)))
-- \Add1~50\ = CARRY((!\Add1~48\) # (!j(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(23),
	datad => VCC,
	cin => \Add1~48\,
	combout => \Add1~49_combout\,
	cout => \Add1~50\);

-- Location: LCCOMB_X31_Y13_N16
\Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~51_combout\ = (j(24) & (\Add1~50\ $ (GND))) # (!j(24) & (!\Add1~50\ & VCC))
-- \Add1~52\ = CARRY((j(24) & !\Add1~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(24),
	datad => VCC,
	cin => \Add1~50\,
	combout => \Add1~51_combout\,
	cout => \Add1~52\);

-- Location: LCCOMB_X32_Y13_N18
\j[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[24]~24_combout\ = (\j[30]~4_combout\ & ((\Add1~51_combout\) # ((j(24) & !\j[0]~2_combout\)))) # (!\j[30]~4_combout\ & (((j(24) & !\j[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \Add1~51_combout\,
	datac => j(24),
	datad => \j[0]~2_combout\,
	combout => \j[24]~24_combout\);

-- Location: FF_X32_Y13_N19
\j[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[24]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(24));

-- Location: LCCOMB_X32_Y13_N20
\j[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[23]~23_combout\ = (\j[30]~4_combout\ & ((\Add1~49_combout\) # ((j(23) & !\j[0]~2_combout\)))) # (!\j[30]~4_combout\ & (((j(23) & !\j[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \Add1~49_combout\,
	datac => j(23),
	datad => \j[0]~2_combout\,
	combout => \j[23]~23_combout\);

-- Location: FF_X32_Y13_N21
\j[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[23]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(23));

-- Location: LCCOMB_X32_Y13_N0
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!j(22) & (!j(24) & (!j(21) & !j(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(22),
	datab => j(24),
	datac => j(21),
	datad => j(23),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X31_Y13_N18
\Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~53_combout\ = (j(25) & (!\Add1~52\)) # (!j(25) & ((\Add1~52\) # (GND)))
-- \Add1~54\ = CARRY((!\Add1~52\) # (!j(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(25),
	datad => VCC,
	cin => \Add1~52\,
	combout => \Add1~53_combout\,
	cout => \Add1~54\);

-- Location: LCCOMB_X32_Y13_N14
\j[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[25]~25_combout\ = (\j[30]~4_combout\ & ((\Add1~53_combout\) # ((j(25) & !\j[0]~2_combout\)))) # (!\j[30]~4_combout\ & (((j(25) & !\j[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \Add1~53_combout\,
	datac => j(25),
	datad => \j[0]~2_combout\,
	combout => \j[25]~25_combout\);

-- Location: FF_X32_Y13_N15
\j[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[25]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(25));

-- Location: LCCOMB_X31_Y13_N20
\Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~55_combout\ = (j(26) & (\Add1~54\ $ (GND))) # (!j(26) & (!\Add1~54\ & VCC))
-- \Add1~56\ = CARRY((j(26) & !\Add1~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(26),
	datad => VCC,
	cin => \Add1~54\,
	combout => \Add1~55_combout\,
	cout => \Add1~56\);

-- Location: LCCOMB_X32_Y13_N16
\j[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[26]~26_combout\ = (\j[30]~4_combout\ & ((\Add1~55_combout\) # ((j(26) & !\j[0]~2_combout\)))) # (!\j[30]~4_combout\ & (((j(26) & !\j[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \Add1~55_combout\,
	datac => j(26),
	datad => \j[0]~2_combout\,
	combout => \j[26]~26_combout\);

-- Location: FF_X32_Y13_N17
\j[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[26]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(26));

-- Location: LCCOMB_X31_Y13_N22
\Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~57_combout\ = (j(27) & (!\Add1~56\)) # (!j(27) & ((\Add1~56\) # (GND)))
-- \Add1~58\ = CARRY((!\Add1~56\) # (!j(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(27),
	datad => VCC,
	cin => \Add1~56\,
	combout => \Add1~57_combout\,
	cout => \Add1~58\);

-- Location: LCCOMB_X32_Y13_N2
\j[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[27]~27_combout\ = (\j[30]~4_combout\ & ((\Add1~57_combout\) # ((j(27) & !\j[0]~2_combout\)))) # (!\j[30]~4_combout\ & (((j(27) & !\j[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \Add1~57_combout\,
	datac => j(27),
	datad => \j[0]~2_combout\,
	combout => \j[27]~27_combout\);

-- Location: FF_X32_Y13_N3
\j[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[27]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(27));

-- Location: LCCOMB_X32_Y13_N22
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!j(28) & (!j(26) & (!j(25) & !j(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(28),
	datab => j(26),
	datac => j(25),
	datad => j(27),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X32_Y13_N4
\j[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[18]~18_combout\ = (\j[30]~4_combout\ & ((\Add1~39_combout\) # ((j(18) & !\j[0]~2_combout\)))) # (!\j[30]~4_combout\ & (((j(18) & !\j[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \Add1~39_combout\,
	datac => j(18),
	datad => \j[0]~2_combout\,
	combout => \j[18]~18_combout\);

-- Location: FF_X32_Y13_N5
\j[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(18));

-- Location: LCCOMB_X32_Y13_N26
\j[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[19]~19_combout\ = (\j[30]~4_combout\ & ((\Add1~41_combout\) # ((j(19) & !\j[0]~2_combout\)))) # (!\j[30]~4_combout\ & (((j(19) & !\j[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \Add1~41_combout\,
	datac => j(19),
	datad => \j[0]~2_combout\,
	combout => \j[19]~19_combout\);

-- Location: FF_X32_Y13_N27
\j[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(19));

-- Location: LCCOMB_X32_Y13_N30
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!j(17) & (!j(18) & (!j(19) & !j(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(17),
	datab => j(18),
	datac => j(19),
	datad => j(20),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y14_N2
\j[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[8]~8_combout\ = (\j[0]~2_combout\ & (\Add1~19_combout\ & ((\j[30]~4_combout\)))) # (!\j[0]~2_combout\ & ((j(8)) # ((\Add1~19_combout\ & \j[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~2_combout\,
	datab => \Add1~19_combout\,
	datac => j(8),
	datad => \j[30]~4_combout\,
	combout => \j[8]~8_combout\);

-- Location: FF_X32_Y14_N3
\j[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(8));

-- Location: LCCOMB_X32_Y14_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!j(5) & (!j(6) & (!j(7) & !j(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(5),
	datab => j(6),
	datac => j(7),
	datad => j(8),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y14_N4
\j[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[15]~15_combout\ = (\Add1~33_combout\ & ((\j[30]~4_combout\) # ((!\j[0]~2_combout\ & j(15))))) # (!\Add1~33_combout\ & (!\j[0]~2_combout\ & (j(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~33_combout\,
	datab => \j[0]~2_combout\,
	datac => j(15),
	datad => \j[30]~4_combout\,
	combout => \j[15]~15_combout\);

-- Location: FF_X32_Y14_N5
\j[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(15));

-- Location: LCCOMB_X32_Y14_N24
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!j(14) & (!j(15) & (!j(16) & !j(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(14),
	datab => j(15),
	datac => j(16),
	datad => j(13),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y12_N18
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\ & (\LessThan0~3_combout\ & (\LessThan0~0_combout\ & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X31_Y12_N0
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~7_combout\ & (\LessThan0~5_combout\ & (\LessThan0~6_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan0~5_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X30_Y14_N16
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add1~0_combout\ & ((j(31)) # ((\j[0]~0_combout\ & \LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~0_combout\,
	datab => j(31),
	datac => \Add1~0_combout\,
	datad => \LessThan0~8_combout\,
	combout => \Add1~2_combout\);

-- Location: FF_X30_Y14_N17
\j[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	ena => \j[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(0));

-- Location: LCCOMB_X30_Y14_N26
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (!j(3) & (((!j(1) & !j(0))) # (!j(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(1),
	datab => j(0),
	datac => j(2),
	datad => j(3),
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X31_Y11_N12
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (state(1) & (((state(2))))) # (!state(1) & ((state(2) & ((!\data_out[2]~0_combout\))) # (!state(2) & (state(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => state(2),
	datad => \data_out[2]~0_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X31_Y11_N6
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (!\Mux10~0_combout\ & ((state(0)) # ((!\LessThan0~10_combout\ & !state(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => state(1),
	datac => state(0),
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: FF_X31_Y11_N7
\state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => state(0));

-- Location: LCCOMB_X30_Y14_N28
\j[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[0]~0_combout\ = (!j(4) & ((\LessThan0~9_combout\) # (state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(4),
	datac => \LessThan0~9_combout\,
	datad => state(0),
	combout => \j[0]~0_combout\);

-- Location: LCCOMB_X31_Y12_N6
\j[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[0]~1_combout\ = (j(31)) # ((\j[0]~0_combout\ & \LessThan0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => j(31),
	datac => \j[0]~0_combout\,
	datad => \LessThan0~8_combout\,
	combout => \j[0]~1_combout\);

-- Location: LCCOMB_X31_Y13_N24
\Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~59_combout\ = (j(28) & (\Add1~58\ $ (GND))) # (!j(28) & (!\Add1~58\ & VCC))
-- \Add1~60\ = CARRY((j(28) & !\Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(28),
	datad => VCC,
	cin => \Add1~58\,
	combout => \Add1~59_combout\,
	cout => \Add1~60\);

-- Location: LCCOMB_X32_Y13_N12
\j[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[28]~28_combout\ = (\j[30]~4_combout\ & ((\Add1~59_combout\) # ((j(28) & !\j[0]~2_combout\)))) # (!\j[30]~4_combout\ & (((j(28) & !\j[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[30]~4_combout\,
	datab => \Add1~59_combout\,
	datac => j(28),
	datad => \j[0]~2_combout\,
	combout => \j[28]~28_combout\);

-- Location: FF_X32_Y13_N13
\j[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[28]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(28));

-- Location: LCCOMB_X31_Y13_N26
\Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~61_combout\ = (j(29) & (!\Add1~60\)) # (!j(29) & ((\Add1~60\) # (GND)))
-- \Add1~62\ = CARRY((!\Add1~60\) # (!j(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(29),
	datad => VCC,
	cin => \Add1~60\,
	combout => \Add1~61_combout\,
	cout => \Add1~62\);

-- Location: LCCOMB_X30_Y13_N20
\j[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[29]~29_combout\ = (\j[0]~2_combout\ & (\j[0]~1_combout\ & (\Add1~61_combout\))) # (!\j[0]~2_combout\ & (((j(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~1_combout\,
	datab => \Add1~61_combout\,
	datac => j(29),
	datad => \j[0]~2_combout\,
	combout => \j[29]~29_combout\);

-- Location: FF_X30_Y13_N21
\j[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(29));

-- Location: LCCOMB_X31_Y13_N28
\Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~63_combout\ = (j(30) & (\Add1~62\ $ (GND))) # (!j(30) & (!\Add1~62\ & VCC))
-- \Add1~64\ = CARRY((j(30) & !\Add1~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(30),
	datad => VCC,
	cin => \Add1~62\,
	combout => \Add1~63_combout\,
	cout => \Add1~64\);

-- Location: LCCOMB_X30_Y13_N22
\j[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[30]~30_combout\ = (\j[0]~2_combout\ & (\j[0]~1_combout\ & (\Add1~63_combout\))) # (!\j[0]~2_combout\ & (((j(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~1_combout\,
	datab => \Add1~63_combout\,
	datac => j(30),
	datad => \j[0]~2_combout\,
	combout => \j[30]~30_combout\);

-- Location: FF_X30_Y13_N23
\j[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[30]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(30));

-- Location: LCCOMB_X31_Y13_N30
\Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~65_combout\ = \Add1~64\ $ (j(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => j(31),
	cin => \Add1~64\,
	combout => \Add1~65_combout\);

-- Location: LCCOMB_X32_Y13_N28
\j[31]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[31]~3_combout\ = (\j[0]~2_combout\ & (\j[0]~1_combout\ & ((\Add1~65_combout\)))) # (!\j[0]~2_combout\ & (((j(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \j[0]~2_combout\,
	datab => \j[0]~1_combout\,
	datac => j(31),
	datad => \Add1~65_combout\,
	combout => \j[31]~3_combout\);

-- Location: FF_X32_Y13_N29
\j[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[31]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(31));

-- Location: LCCOMB_X31_Y11_N28
\data_out[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~0_combout\ = (state(0) & ((j(31)) # ((!j(4) & \LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => j(31),
	datac => j(4),
	datad => \LessThan0~8_combout\,
	combout => \data_out[2]~0_combout\);

-- Location: IOIBUF_X34_Y34_N8
\data_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: LCCOMB_X30_Y12_N20
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\) # ((\data_out[2]~0_combout\ & \data_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datac => \data_out[2]~0_combout\,
	datad => \data_in[0]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X32_Y12_N22
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (i(19) & (i(17) & (i(18) & i(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(19),
	datab => i(17),
	datac => i(18),
	datad => i(16),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X32_Y12_N0
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (i(12)) # ((i(10)) # ((i(11)) # (i(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(12),
	datab => i(10),
	datac => i(11),
	datad => i(13),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X32_Y12_N10
\data_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~4_combout\ = (\LessThan1~1_combout\ & ((i(15)) # ((i(14) & \LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(15),
	datab => i(14),
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~2_combout\,
	combout => \data_out[2]~4_combout\);

-- Location: FF_X35_Y12_N7
\i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[19]~73_combout\,
	sclr => \Mux21~0_combout\,
	ena => \i[11]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(19));

-- Location: LCCOMB_X34_Y12_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (i(17) & (i(18) & i(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(17),
	datac => i(18),
	datad => i(19),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X34_Y12_N20
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (i(14) & (i(9) & (i(16) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(14),
	datab => i(9),
	datac => i(16),
	datad => \Equal0~0_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y12_N2
\data_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~2_combout\ = ((\LessThan1~0_combout\ & ((i(7)) # (i(8))))) # (!\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(7),
	datab => i(8),
	datac => \LessThan1~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \data_out[2]~2_combout\);

-- Location: LCCOMB_X31_Y12_N16
\data_out[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~3_combout\ = (\data_out[2]~2_combout\) # ((i(6) & (\LessThan1~0_combout\ & !\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datab => \data_out[2]~2_combout\,
	datac => \LessThan1~0_combout\,
	datad => \Equal0~5_combout\,
	combout => \data_out[2]~3_combout\);

-- Location: LCCOMB_X31_Y12_N22
\data_out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~5_combout\ = (!i(31) & ((i(20)) # ((\data_out[2]~4_combout\) # (\data_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(31),
	datab => i(20),
	datac => \data_out[2]~4_combout\,
	datad => \data_out[2]~3_combout\,
	combout => \data_out[2]~5_combout\);

-- Location: LCCOMB_X31_Y12_N12
\data_out[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~1_combout\ = (state(0) & (state(1) $ (((!state(2)))))) # (!state(0) & ((state(1)) # ((state(2)) # (!\LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => \LessThan0~10_combout\,
	datad => state(2),
	combout => \data_out[2]~1_combout\);

-- Location: LCCOMB_X31_Y12_N10
\data_out[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_out[2]~6_combout\ = (!\data_out[2]~1_combout\ & (((state(0) & !\LessThan2~0_combout\)) # (!\data_out[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => \LessThan2~0_combout\,
	datac => \data_out[2]~5_combout\,
	datad => \data_out[2]~1_combout\,
	combout => \data_out[2]~6_combout\);

-- Location: FF_X30_Y12_N21
\data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux20~1_combout\,
	ena => \data_out[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[0]~reg0_q\);

-- Location: LCCOMB_X30_Y12_N12
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!j(2) & (!state(0) & !j(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(2),
	datac => state(0),
	datad => j(0),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X30_Y12_N22
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\data_in[1]~input_o\ & ((\data_out[2]~0_combout\) # ((j(1) & \Mux19~0_combout\)))) # (!\data_in[1]~input_o\ & (j(1) & ((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[1]~input_o\,
	datab => j(1),
	datac => \data_out[2]~0_combout\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: FF_X30_Y12_N23
\data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux19~1_combout\,
	ena => \data_out[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[1]~reg0_q\);

-- Location: LCCOMB_X30_Y12_N2
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (!j(2) & (!state(0) & (j(1) $ (j(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(2),
	datab => j(1),
	datac => state(0),
	datad => j(0),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X30_Y12_N8
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\) # ((\data_in[2]~input_o\ & \data_out[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[2]~input_o\,
	datab => \Mux18~0_combout\,
	datac => \data_out[2]~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: FF_X30_Y12_N9
\data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux18~1_combout\,
	ena => \data_out[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[2]~reg0_q\);

-- Location: LCCOMB_X30_Y12_N16
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (!j(2) & (!state(0) & !j(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(2),
	datac => state(0),
	datad => j(1),
	combout => \Mux17~0_combout\);

-- Location: IOIBUF_X36_Y0_N22
\data_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: LCCOMB_X31_Y12_N24
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\) # ((\data_out[2]~0_combout\ & \data_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux17~0_combout\,
	datac => \data_out[2]~0_combout\,
	datad => \data_in[3]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: FF_X31_Y12_N25
\data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux17~1_combout\,
	ena => \data_out[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[3]~reg0_q\);

-- Location: IOIBUF_X31_Y34_N1
\data_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X30_Y12_N26
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux19~0_combout\ & (((\data_in[4]~input_o\ & \data_out[2]~0_combout\)) # (!j(1)))) # (!\Mux19~0_combout\ & (\data_in[4]~input_o\ & (\data_out[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \data_in[4]~input_o\,
	datac => \data_out[2]~0_combout\,
	datad => j(1),
	combout => \Mux16~0_combout\);

-- Location: FF_X30_Y12_N27
\data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux16~0_combout\,
	ena => \data_out[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[4]~reg0_q\);

-- Location: IOIBUF_X34_Y0_N15
\data_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: LCCOMB_X30_Y12_N28
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux19~0_combout\ & (((\data_in[5]~input_o\ & \data_out[2]~0_combout\)) # (!j(1)))) # (!\Mux19~0_combout\ & (\data_in[5]~input_o\ & (\data_out[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \data_in[5]~input_o\,
	datac => \data_out[2]~0_combout\,
	datad => j(1),
	combout => \Mux15~0_combout\);

-- Location: FF_X30_Y12_N29
\data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux15~0_combout\,
	ena => \data_out[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[5]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N22
\data_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X30_Y12_N10
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (state(0)) # ((j(2) & j(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(2),
	datac => state(0),
	datad => j(0),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X30_Y12_N18
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\data_out[2]~0_combout\ & (\data_in[6]~input_o\)) # (!\data_out[2]~0_combout\ & ((\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_in[6]~input_o\,
	datac => \data_out[2]~0_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: FF_X30_Y12_N19
\data_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux14~1_combout\,
	ena => \data_out[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[6]~reg0_q\);

-- Location: IOIBUF_X25_Y0_N15
\data_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X30_Y12_N0
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (j(2) & (((\data_in[7]~input_o\) # (!\data_out[2]~0_combout\)))) # (!j(2) & (state(0) & ((\data_in[7]~input_o\) # (!\data_out[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(2),
	datab => state(0),
	datac => \data_out[2]~0_combout\,
	datad => \data_in[7]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: FF_X30_Y12_N1
\data_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux13~0_combout\,
	ena => \data_out[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_out[7]~reg0_q\);

-- Location: LCCOMB_X31_Y12_N8
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\LessThan0~10_combout\ & !state(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~10_combout\,
	datad => state(0),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X32_Y12_N28
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (state(1) & (!state(2) & (\data_out[2]~0_combout\))) # (!state(1) & ((state(2) & (\data_out[2]~0_combout\)) # (!state(2) & ((\Mux12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => state(2),
	datac => \data_out[2]~0_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X31_Y12_N4
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (state(2) & (!state(1) & ((!\LessThan2~0_combout\)))) # (!state(2) & ((state(1) & ((!\LessThan2~0_combout\))) # (!state(1) & (!\LessThan0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(1),
	datac => \LessThan0~10_combout\,
	datad => \LessThan2~0_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X31_Y12_N30
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux12~5_combout\ & ((state(0) & (state(1) $ (state(2)))) # (!state(0) & (!state(1) & !state(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(1),
	datac => \Mux12~5_combout\,
	datad => state(2),
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X32_Y12_N12
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux12~2_combout\ & ((\Mux12~1_combout\) # ((\lcd_e~reg0_q\ & \Mux12~6_combout\)))) # (!\Mux12~2_combout\ & (((\lcd_e~reg0_q\ & \Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux12~1_combout\,
	datac => \lcd_e~reg0_q\,
	datad => \Mux12~6_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X31_Y11_N18
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (state(0) & (state(2) $ (state(1)))) # (!state(0) & (!state(2) & !state(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datab => state(2),
	datad => state(1),
	combout => \Mux12~4_combout\);

-- Location: FF_X32_Y12_N13
\lcd_e~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux12~3_combout\,
	ena => \Mux12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_e~reg0_q\);

-- Location: LCCOMB_X31_Y11_N20
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux11~0_combout\) # ((\Mux11~1_combout\ & \LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux11~0_combout\,
	datad => \LessThan2~0_combout\,
	combout => \Mux11~2_combout\);

-- Location: FF_X31_Y11_N21
\lcd_r~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux11~2_combout\,
	ena => \Mux12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd_r~reg0_q\);

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_lcd_e <= \lcd_e~output_o\;

ww_lcd_r <= \lcd_r~output_o\;

ww_LED0 <= \LED0~output_o\;

ww_LED1 <= \LED1~output_o\;

ww_LED2 <= \LED2~output_o\;

ww_LED3 <= \LED3~output_o\;
END structure;


