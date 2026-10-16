LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY axc_zhang IS
    PORT (
        x1, x2, x3, x4 : IN STD_LOGIC;
        sum, carry : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF axc_zhang IS
    SIGNAL not_x4 : STD_LOGIC;
BEGIN
    not_x4 <= NOT x4;
    sum <= x3 OR not_x4;
    carry <= x4;
END ARCHITECTURE;