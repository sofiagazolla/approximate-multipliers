LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY exact_compressor IS
    PORT (
        x1, x2, x3, x4, cin : IN STD_LOGIC;
        sum, carry, cout : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF exact_compressor IS
    SIGNAL x1_xor_x2 : STD_LOGIC;
    SIGNAL s : STD_LOGIC;
BEGIN

    x1_xor_x2 <= x1 XOR x2;
    s <= x1_xor_x2 XOR x3;
    sum <= s XOR x4 XOR cin;
    carry <= ((s XOR x4) AND cin) OR (s AND x4);
    cout <= (x1_xor_x2 AND x3) OR (x1 AND x2);

END ARCHITECTURE;