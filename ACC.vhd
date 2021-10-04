library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;
entity  CX  is
	port(
	       reset    : in std_logic;
	       clk      : in std_logic;
	       Load_CX  : in std_logic;
	      CX_input : in std_logic_vector (7 downto 0);
	       CX_output :buffer std_logic_vector (7 downto 0)       
	);
end CX  ;
ARCHITECTURE CX_body OF CX   IS
BEGIN	
	PROCESS (Load_CX  ,CX_input,reset)		 
begin					
    if(reset = '1') then 
       CX_output <= "00000000";
     elsif (clk'event and clk = '1' and Load_CX  = '1') then 
       CX_output <= CX_input;
     end if;
end process;
end;