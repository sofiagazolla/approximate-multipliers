LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY axc_majority IS
    PORT (
        x1, x2, x3, x4 : IN STD_LOGIC;
        sum, carry : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF axc_majority IS
BEGIN
    carry <= (x4 AND (x1 OR x3)) OR (x1 AND x3);
    sum <= '1';
END ARCHITECTURE;