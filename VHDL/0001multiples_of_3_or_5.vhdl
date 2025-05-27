/*
 * Aldec, Inc. VHDL Compiler, build 2023.04.112
 * 0001multiples_of_3_or_5.vhdl
 * 
 * Copyright 2025 @GitHub JoergEm
 * 
 * This program is WITHOUT ANY WARRANTY; without even the implied
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * 
*/
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench is
end testbench;

architecture behavior of testbench is
begin
    process
        variable nummer : integer := 1;
        variable summe  : integer := 0;
    begin
        for nummer in 1 to 999 loop
            if (nummer mod 3 = 0) or (nummer mod 5 = 0) then
                summe := summe + nummer;
            end if;
        end loop;
        report "Summe = " & integer'image(summe);
        wait;
    end process;
end behavior;