LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY half_adder IS
    PORT (
        a, b : IN STD_LOGIC;
        s, cout : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF half_adder IS
    SIGNAL a_xor_b : STD_LOGIC;
BEGIN
    s <= a XOR b;
    cout <= a AND b;
END ARCHITECTURE;