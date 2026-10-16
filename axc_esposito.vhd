LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY axc_esposito IS
    PORT (
        x1, x2, x3, x4 : IN STD_LOGIC;
        sum, carry : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF axc_esposito IS
    SIGNAL x1_and_x2 : STD_LOGIC;
    SIGNAL x3_and_x4 : STD_LOGIC;
BEGIN
    x1_and_x2 <= x1 AND x2;
    x3_and_x4 <= x3 AND x4;
    sum <= x1_and_x2 OR x3 OR x4;
    carry <= x3_and_x4 OR x2 OR x1;
END ARCHITECTURE;