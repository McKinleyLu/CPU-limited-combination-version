library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
entity weimingling  is
	port(
	      input   : in  std_logic_vector(4  downto 0);
	      reset   : in  std_logic;
	      clk     : in  std_logic;
		  commamd : out std_logic_vector(30 downto 0);
		  output  : out std_logic_vector(4  downto 0);
	      sign    : out std_logic_vector(1  downto 0)  
	);
end  weimingling ;
ARCHITECTURE register_set_body OF weimingling IS
    TYPE my_array IS ARRAY(20 DOWNTO 0) OF STD_LOGIC_VECTOR(37 DOWNTO 0);
	SIGNAL reg : my_array;
    CONSTANT code : my_array:=(
                    0=>"01000010001000000000000000000000000001",
					1=>"00000001000100000000001000000000000010",
					2=>"00000100000001000000000000000001000011",
					--
					3=>"00000010000000100000000000000000001010",
					4=>"00000010000000100000000000000000001011",
					5=>"10000010000000000000000000000000001100",
					6=>"10000010000000000000000000000000001101",
					7=>"10000010000000000000000000000000001110",
					8=>"00001000000000000001000001100010000000",
					9=>"00000000100000000000000000000000010100",
					--
				   10=>"00000001000100000000100000000000001111",
				   11=>"00000001000100000000100000000000010000",
				   12=>"00000001000100000000100000000000010001",
				   13=>"00000001000100000000100000000000010010",
				   14=>"00000001000000010000010000000000010011",
				   20=>"00000000000000000000000000000000000000",
				   --
				   15=>"00010000000001000000000000000000000000",
				   16=>"00001000000001000010000000000000000000",
				   17=>"00100000000001001000000000000000000000",
				   18=>"00100000000001000100000111000000000000",
				   19=>"00000000000010000000000000000000000000"
			      --

                 			
		        );	

BEGIN	
	PROCESS (reset,clk)			
	VARIABLE i : INTEGER;
	BEGIN
		IF reset='1' THEN
			FOR i IN 20 DOWNTO 0 LOOP
                reg(i) <= code(i);
		    END LOOP;
		    output <= "00000";
		    SIGN   <= "10";
        ELSif clk'event AND clk='0' then 
		       output  <= reg(CONV_INTEGER(input))( 4 downto 0 );
               sign    <= reg(CONV_INTEGER(input))(6 downto 5);
			   commamd <= reg(CONV_INTEGER(input))(37 downto 7);
        end if ;

    end process;
	end register_set_body ;