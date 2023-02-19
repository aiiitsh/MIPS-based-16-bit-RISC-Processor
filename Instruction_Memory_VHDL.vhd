library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity Instruction_Memory_VHDL is
port (
 inst_add: in std_logic_vector(3 downto 0);
 instruction: out  std_logic_vector(15 downto 0)
);
end Instruction_Memory_VHDL;

architecture Behavioral of Instruction_Memory_VHDL is
signal rom_addr: std_logic_vector(3 downto 0);
 type ROM_type is array (0 to 15 ) of std_logic_vector(15 downto 0);
 constant rom_data: ROM_type:=(
   "0001000001101000", -- op xxxx rs xxx rt xxx rd xxx fun xxx
   "0001101010101000",
	"0001101011101010",
   "0001101100101001",
   "0001101110111010",
   "0001111001111010",
   "0001111010101010",
   "0000000000000000",
   "0000000000000000",
   "0000000000000000",
   "0000000000000000",
   "0000000000000000",
   "0000000000000000",
   "0000000000000000",
   "0000000000000000",
   "0000000000000000"
  );
begin

 rom_addr <= inst_add;
  instruction <= rom_data(to_integer(unsigned(rom_addr)));

end Behavioral;