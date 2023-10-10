LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

ENTITY S_Box IS
PORT(
     s_box_in: IN std_logic_vector (7 downto 0);
     s_box_out: OUT std_logic_vector (7 downto 0)
     );
END ENTITY;

ARCHITECTURE Circuit OF S_Box IS 
BEGIN

PROCESS(s_box_in)
BEGIN
    CASE s_box_in IS
     --1st line. 0x
        WHEN x"00" => s_box_out <= x"63"; -- x is used to indicate that we work with hexadecimal numbers
        when x"01" => s_box_out <= x"7c";
        when x"02" => s_box_out <= x"77";
        when x"03" => s_box_out <= x"7b";
        when x"04" => s_box_out <= x"f2";
        when x"05" => s_box_out <= x"6b";
        when x"06" => s_box_out <= x"6f";
        when x"07" => s_box_out <= x"c5";
        when x"08" => s_box_out <= x"30";
        when x"09" => s_box_out <= x"01";
        when x"0a" => s_box_out <= x"67";
        when x"0b" => s_box_out <= x"2b";
        when x"0c" => s_box_out <= x"fe";
        when x"0d" => s_box_out <= x"d7";
        when x"0e" => s_box_out <= x"ab";
        when x"0f" => s_box_out <= x"76";
    --2nd line. 1x
        when x"10" => s_box_out <= x"ca";
        when x"11" => s_box_out <= x"82";
        when x"12" => s_box_out <= x"c9";
        when x"13" => s_box_out <= x"7d";
        when x"14" => s_box_out <= x"fa";
        when x"15" => s_box_out <= x"59";
        when x"16" => s_box_out <= x"47";
        when x"17" => s_box_out <= x"f0";
        when x"18" => s_box_out <= x"ad";
        when x"19" => s_box_out <= x"d4";
        when x"1a" => s_box_out <= x"a2";
        when x"1b" => s_box_out <= x"af";
        when x"1c" => s_box_out <= x"9c";
        when x"1d" => s_box_out <= x"a4";
        when x"1e" => s_box_out <= x"72";
        when x"1f" => s_box_out <= x"c0"; 
     --3rd line. 2x
        when x"20" => s_box_out <= x"b7";
        when x"21" => s_box_out <= x"fd";
        when x"22" => s_box_out <= x"93";
        when x"23" => s_box_out <= x"26";
        when x"24" => s_box_out <= x"36";
        when x"25" => s_box_out <= x"3f";
        when x"26" => s_box_out <= x"f7";
        when x"27" => s_box_out <= x"cc";
        when x"28" => s_box_out <= x"34";
        when x"29" => s_box_out <= x"a5";
        when x"2a" => s_box_out <= x"e5";
        when x"2b" => s_box_out <= x"f1";
        when x"2c" => s_box_out <= x"71";
        when x"2d" => s_box_out <= x"d8";
        when x"2e" => s_box_out <= x"31";
        when x"2f" => s_box_out <= x"15";
      --4th line. 3x
        when x"30" => s_box_out <= x"04";
        when x"31" => s_box_out <= x"c7";
        when x"32" => s_box_out <= x"23";
        when x"33" => s_box_out <= x"c3";
        when x"34" => s_box_out <= x"18";
        when x"35" => s_box_out <= x"96";
        when x"36" => s_box_out <= x"05";
        when x"37" => s_box_out <= x"9a";
        when x"38" => s_box_out <= x"07";
        when x"39" => s_box_out <= x"12";
        when x"3a" => s_box_out <= x"80";
        when x"3b" => s_box_out <= x"e2";
        when x"3c" => s_box_out <= x"eb";
        when x"3d" => s_box_out <= x"27";
        when x"3e" => s_box_out <= x"b2";
        when x"3f" => s_box_out <= x"75"; 
     --5th line. 4x
        when x"40" => s_box_out <= x"09";
        when x"41" => s_box_out <= x"83";
        when x"42" => s_box_out <= x"2c";
        when x"43" => s_box_out <= x"1a";
        when x"44" => s_box_out <= x"1b";
        when x"45" => s_box_out <= x"6e";
        when x"46" => s_box_out <= x"5a";
        when x"47" => s_box_out <= x"a0";
        when x"48" => s_box_out <= x"52";
        when x"49" => s_box_out <= x"3b";
        when x"4a" => s_box_out <= x"d6";
        when x"4b" => s_box_out <= x"b3";
        when x"4c" => s_box_out <= x"29";
        when x"4d" => s_box_out <= x"e3";
        when x"4e" => s_box_out <= x"2f";
        when x"4f" => s_box_out <= x"84";
     --6th line. 5x
        when x"50" => s_box_out <= x"53";
        when x"51" => s_box_out <= x"d1";
        when x"52" => s_box_out <= x"00";
        when x"53" => s_box_out <= x"ed";
        when x"54" => s_box_out <= x"20";
        when x"55" => s_box_out <= x"fc";
        when x"56" => s_box_out <= x"b1";
        when x"57" => s_box_out <= x"5b";
        when x"58" => s_box_out <= x"6a";
        when x"59" => s_box_out <= x"cb";
        when x"5a" => s_box_out <= x"be";
        when x"5b" => s_box_out <= x"39";
        when x"5c" => s_box_out <= x"4a";
        when x"5d" => s_box_out <= x"4c";
        when x"5e" => s_box_out <= x"58";
        when x"5f" => s_box_out <= x"cf"; 
     --7th line. 6x
        when x"60" => s_box_out <= x"d0";
        when x"61" => s_box_out <= x"ef";
        when x"62" => s_box_out <= x"aa";
        when x"63" => s_box_out <= x"fb";
        when x"64" => s_box_out <= x"43";
        when x"65" => s_box_out <= x"4d";
        when x"66" => s_box_out <= x"33";
        when x"67" => s_box_out <= x"85";
        when x"68" => s_box_out <= x"45";
        when x"69" => s_box_out <= x"f9";
        when x"6a" => s_box_out <= x"02";
        when x"6b" => s_box_out <= x"7f";
        when x"6c" => s_box_out <= x"50";
        when x"6d" => s_box_out <= x"3c";
        when x"6e" => s_box_out <= x"9f";
        when x"6f" => s_box_out <= x"a8";
     --8th line. 7x
        when x"70" => s_box_out <= x"51";
        when x"71" => s_box_out <= x"a3";
        when x"72" => s_box_out <= x"40";
        when x"73" => s_box_out <= x"8f";
        when x"74" => s_box_out <= x"92";
        when x"75" => s_box_out <= x"9d";
        when x"76" => s_box_out <= x"38";
        when x"77" => s_box_out <= x"f5";
        when x"78" => s_box_out <= x"bc";
        when x"79" => s_box_out <= x"b6";
        when x"7a" => s_box_out <= x"da";
        when x"7b" => s_box_out <= x"21";
        when x"7c" => s_box_out <= x"10";
        when x"7d" => s_box_out <= x"ff";
        when x"7e" => s_box_out <= x"f3";
        when x"7f" => s_box_out <= x"d2"; 
     --9th line. 8x
        when x"80" => s_box_out <= x"cd";
        when x"81" => s_box_out <= x"0c";
        when x"82" => s_box_out <= x"13";
        when x"83" => s_box_out <= x"ec";
        when x"84" => s_box_out <= x"5f";
        when x"85" => s_box_out <= x"97";
        when x"86" => s_box_out <= x"44";
        when x"87" => s_box_out <= x"17";
        when x"88" => s_box_out <= x"c4";
        when x"89" => s_box_out <= x"a7";
        when x"8a" => s_box_out <= x"7e";
        when x"8b" => s_box_out <= x"3d";
        when x"8c" => s_box_out <= x"64";
        when x"8d" => s_box_out <= x"5d";
        when x"8e" => s_box_out <= x"19";
        when x"8f" => s_box_out <= x"73";        
     --10th line. 9x
        when x"90" => s_box_out <= x"60";
        when x"91" => s_box_out <= x"81";
        when x"92" => s_box_out <= x"4f";
        when x"93" => s_box_out <= x"dc";
        when x"94" => s_box_out <= x"22";
        when x"95" => s_box_out <= x"2a";
        when x"96" => s_box_out <= x"90";
        when x"97" => s_box_out <= x"88";
        when x"98" => s_box_out <= x"46";
        when x"99" => s_box_out <= x"ee";
        when x"9a" => s_box_out <= x"b8";
        when x"9b" => s_box_out <= x"14";
        when x"9c" => s_box_out <= x"de";
        when x"9d" => s_box_out <= x"5e";
        when x"9e" => s_box_out <= x"0b";
        when x"9f" => s_box_out <= x"db";
     --11th line. ax  
        when x"a0" => s_box_out <= x"e0";
        when x"a1" => s_box_out <= x"32";
        when x"a2" => s_box_out <= x"3a";
        when x"a3" => s_box_out <= x"0a";
        when x"a4" => s_box_out <= x"49";
        when x"a5" => s_box_out <= x"06";
        when x"a6" => s_box_out <= x"24";
        when x"a7" => s_box_out <= x"5c";
        when x"a8" => s_box_out <= x"c2";
        when x"a9" => s_box_out <= x"d3";
        when x"aa" => s_box_out <= x"ac";
        when x"ab" => s_box_out <= x"62";
        when x"ac" => s_box_out <= x"91";
        when x"ad" => s_box_out <= x"95";
        when x"ae" => s_box_out <= x"e4";
        when x"af" => s_box_out <= x"79";
     --12th line. bx
        when x"b0" => s_box_out <= x"e7";
        when x"b1" => s_box_out <= x"c8";
        when x"b2" => s_box_out <= x"37";
        when x"b3" => s_box_out <= x"6d";
        when x"b4" => s_box_out <= x"8d";
        when x"b5" => s_box_out <= x"d5";
        when x"b6" => s_box_out <= x"4e";
        when x"b7" => s_box_out <= x"a9";
        when x"b8" => s_box_out <= x"6c";
        when x"b9" => s_box_out <= x"56";
        when x"ba" => s_box_out <= x"f4";
        when x"bb" => s_box_out <= x"ea";
        when x"bc" => s_box_out <= x"65";
        when x"bd" => s_box_out <= x"7a";
        when x"be" => s_box_out <= x"ae";
        when x"bf" => s_box_out <= x"08";
     --13th line. cx   
        when x"c0" => s_box_out <= x"ba";
        when x"c1" => s_box_out <= x"78";
        when x"c2" => s_box_out <= x"25";
        when x"c3" => s_box_out <= x"2e";
        when x"c4" => s_box_out <= x"1c";
        when x"c5" => s_box_out <= x"a6";
        when x"c6" => s_box_out <= x"b4";
        when x"c7" => s_box_out <= x"c6";
        when x"c8" => s_box_out <= x"e8";
        when x"c9" => s_box_out <= x"dd";
        when x"ca" => s_box_out <= x"74";
        when x"cb" => s_box_out <= x"1f";
        when x"cc" => s_box_out <= x"4b";
        when x"cd" => s_box_out <= x"bd";
        when x"ce" => s_box_out <= x"8b";
        when x"cf" => s_box_out <= x"8a";
     --14th line. dx
        when x"d0" => s_box_out <= x"70";
        when x"d1" => s_box_out <= x"3e";
        when x"d2" => s_box_out <= x"b5";
        when x"d3" => s_box_out <= x"66";
        when x"d4" => s_box_out <= x"48";
        when x"d5" => s_box_out <= x"03";
        when x"d6" => s_box_out <= x"f6";
        when x"d7" => s_box_out <= x"0e";
        when x"d8" => s_box_out <= x"61";
        when x"d9" => s_box_out <= x"35";
        when x"da" => s_box_out <= x"57";
        when x"db" => s_box_out <= x"b9";
        when x"dc" => s_box_out <= x"86";
        when x"dd" => s_box_out <= x"c1";
        when x"de" => s_box_out <= x"1d";
        when x"df" => s_box_out <= x"9e"; 
    --15th line. ex    
        when x"e0" => s_box_out <= x"e1";
        when x"e1" => s_box_out <= x"f8";
        when x"e2" => s_box_out <= x"98";
        when x"e3" => s_box_out <= x"11";
        when x"e4" => s_box_out <= x"69";
        when x"e5" => s_box_out <= x"d9";
        when x"e6" => s_box_out <= x"8e";
        when x"e7" => s_box_out <= x"94";
        when x"e8" => s_box_out <= x"9b";
        when x"e9" => s_box_out <= x"1e";
        when x"ea" => s_box_out <= x"87";
        when x"eb" => s_box_out <= x"e9";
        when x"ec" => s_box_out <= x"ce";
        when x"ed" => s_box_out <= x"55";
        when x"ee" => s_box_out <= x"28";
        when x"ef" => s_box_out <= x"df";
    --16th line. fx
        when x"f0" => s_box_out <= x"8c";
        when x"f1" => s_box_out <= x"a1";
        when x"f2" => s_box_out <= x"89";
        when x"f3" => s_box_out <= x"0d";
        when x"f4" => s_box_out <= x"bf";
        when x"f5" => s_box_out <= x"e6";
        when x"f6" => s_box_out <= x"42";
        when x"f7" => s_box_out <= x"68";
        when x"f8" => s_box_out <= x"41";
        when x"f9" => s_box_out <= x"99";
        when x"fa" => s_box_out <= x"2d";
        when x"fb" => s_box_out <= x"0f";
        when x"fc" => s_box_out <= x"b0";
        when x"fd" => s_box_out <= x"54";
        when x"fe" => s_box_out <= x"bb";
        when x"ff" => s_box_out <= x"16"; 
        when OTHERS => s_box_out <= "XXXXXXXX";
        
    END CASE;
END PROCESS;

END ARCHITECTURE;