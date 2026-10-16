LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY multiplier_operator IS
    PORT (
        a : IN unsigned(7 DOWNTO 0);
        b : IN unsigned(7 DOWNTO 0);
        product : OUT unsigned(15 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE rtl OF multiplier_operator IS
BEGIN
    product <= a * b;
END ARCHITECTURE;