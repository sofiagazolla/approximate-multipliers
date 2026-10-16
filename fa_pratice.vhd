LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fa_practice IS
    PORT (
        a, b, cin : IN STD_LOGIC;
        s, cout : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF fa_practice IS
BEGIN
    s <= a XOR b XOR cin;
    cout <= (a AND b) OR (a AND cin) OR (b AND cin);
END ARCHITECTURE;