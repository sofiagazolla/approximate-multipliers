LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY axc_2 IS
    PORT (
        x1, x2, x3, x4 : IN STD_LOGIC;
        sum, carry : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF axc_2 IS
BEGIN
    sum <= '1';
    carry <= x4;
END ARCHITECTURE;