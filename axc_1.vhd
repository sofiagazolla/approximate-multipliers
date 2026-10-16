LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY axc_1 IS
    PORT (
        x1, x2, x3, x4 : IN STD_LOGIC;
        sum, carry : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF axc_1 IS
BEGIN
    sum <= x2;
    carry <= x3 OR x4;
END ARCHITECTURE;