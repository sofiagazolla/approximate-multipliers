LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fa_theory IS
    PORT (
        a, b, cin : IN STD_LOGIC;
        s, cout : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF fa_theory IS
    SIGNAL a_xor_b : STD_LOGIC;
BEGIN
    a_xor_b <= a XOR b;
    s <= a_xor_b XOR cin;
    cout <= (a NAND b) NAND (cin NAND a_xor_b);
END ARCHITECTURE;