LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY multiplier_operator_axc_zhang IS
    PORT (
        a : IN unsigned(7 DOWNTO 0);
        b : IN unsigned(7 DOWNTO 0);
        product : OUT unsigned(15 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE rtl OF multiplier_operator_axc_zhang IS

    -- etapa de geração dos produtos parciais
    SIGNAL a0b0, a1b0, a2b0, a3b0, a4b0, a5b0, a6b0, a7b0 : STD_LOGIC;
    SIGNAL a0b1, a1b1, a2b1, a3b1, a4b1, a5b1, a6b1, a7b1 : STD_LOGIC;
    SIGNAL a0b2, a1b2, a2b2, a3b2, a4b2, a5b2, a6b2, a7b2 : STD_LOGIC;
    SIGNAL a0b3, a1b3, a2b3, a3b3, a4b3, a5b3, a6b3, a7b3 : STD_LOGIC;
    SIGNAL a0b4, a1b4, a2b4, a3b4, a4b4, a5b4, a6b4, a7b4 : STD_LOGIC;
    SIGNAL a0b5, a1b5, a2b5, a3b5, a4b5, a5b5, a6b5, a7b5 : STD_LOGIC;
    SIGNAL a0b6, a1b6, a2b6, a3b6, a4b6, a5b6, a6b6, a7b6 : STD_LOGIC;
    SIGNAL a0b7, a1b7, a2b7, a3b7, a4b7, a5b7, a6b7, a7b7 : STD_LOGIC;

    -- primeira etapa de compressao
    SIGNAL sum_ha40, cout_ha40, sum_ha24, cout_ha24, sum_ha36, cout_ha36 : STD_LOGIC;
    SIGNAL sum_axc50, carry_axc50, sum_axc60, carry_axc60, sum_axc70, carry_axc70, sum_axc71, carry_axc71, sum_axc72, carry_axc72, sum_axc34, carry_axc34 : STD_LOGIC;
    SIGNAL sum_exact73, cout_exact73, carry_exact73 : STD_LOGIC;
    SIGNAL sum_fa35, cout_fa35, sum_fa74, cout_fa74 : STD_LOGIC;

    -- segunda etapa de compressao
    SIGNAL second_axc1_sum, second_axc1_carry, second_axc2_sum, second_axc2_carry, second_axc3_sum, second_axc3_carry, second_axc4_sum, second_axc4_carry, second_axc5_sum, second_axc5_carry, second_axc6_sum, second_axc6_carry : STD_LOGIC;
    SIGNAL second_exact1_sum, second_exact1_carry, second_exact1_cout, second_exact2_sum, second_exact2_carry, second_exact2_cout, second_exact3_sum, second_exact3_carry, second_exact3_cout : STD_LOGIC;
    SIGNAL second_fa_sum, second_fa_cout : STD_LOGIC;

    -- soma dos produtos parciais
    SIGNAL carry_result_ha, carry_result_fa1, carry_result_fa2, carry_result_fa3, carry_result_fa4, carry_result_fa5, carry_result_fa6, carry_result_fa7, carry_result_fa8 : STD_LOGIC;

BEGIN

    -- bits truncados
    product(0) <= '0';
    product(1) <= '1';
    product(2) <= '1';
    product(3) <= '0';

    -- etapa de geração de produtos parciais 

    a0b0 <= a(0) AND b(0);
    a1b0 <= a(1) AND b(0);
    a2b0 <= a(2) AND b(0);
    a3b0 <= a(3) AND b(0);
    a4b0 <= a(4) AND b(0);
    a5b0 <= a(5) AND b(0);
    a6b0 <= a(6) AND b(0);
    a7b0 <= a(7) AND b(0);

    a0b1 <= a(0) AND b(1);
    a1b1 <= a(1) AND b(1);
    a2b1 <= a(2) AND b(1);
    a3b1 <= a(3) AND b(1);
    a4b1 <= a(4) AND b(1);
    a5b1 <= a(5) AND b(1);
    a6b1 <= a(6) AND b(1);
    a7b1 <= a(7) AND b(1);

    a0b2 <= a(0) AND b(2);
    a1b2 <= a(1) AND b(2);
    a2b2 <= a(2) AND b(2);
    a3b2 <= a(3) AND b(2);
    a4b2 <= a(4) AND b(2);
    a5b2 <= a(5) AND b(2);
    a6b2 <= a(6) AND b(2);
    a7b2 <= a(7) AND b(2);

    a0b3 <= a(0) AND b(3);
    a1b3 <= a(1) AND b(3);
    a2b3 <= a(2) AND b(3);
    a3b3 <= a(3) AND b(3);
    a4b3 <= a(4) AND b(3);
    a5b3 <= a(5) AND b(3);
    a6b3 <= a(6) AND b(3);
    a7b3 <= a(7) AND b(3);

    a0b4 <= a(0) AND b(4);
    a1b4 <= a(1) AND b(4);
    a2b4 <= a(2) AND b(4);
    a3b4 <= a(3) AND b(4);
    a4b4 <= a(4) AND b(4);
    a5b4 <= a(5) AND b(4);
    a6b4 <= a(6) AND b(4);
    a7b4 <= a(7) AND b(4);

    a0b5 <= a(0) AND b(5);
    a1b5 <= a(1) AND b(5);
    a2b5 <= a(2) AND b(5);
    a3b5 <= a(3) AND b(5);
    a4b5 <= a(4) AND b(5);
    a5b5 <= a(5) AND b(5);
    a6b5 <= a(6) AND b(5);
    a7b5 <= a(7) AND b(5);

    a0b6 <= a(0) AND b(6);
    a1b6 <= a(1) AND b(6);
    a2b6 <= a(2) AND b(6);
    a3b6 <= a(3) AND b(6);
    a4b6 <= a(4) AND b(6);
    a5b6 <= a(5) AND b(6);
    a6b6 <= a(6) AND b(6);
    a7b6 <= a(7) AND b(6);

    a0b7 <= a(0) AND b(7);
    a1b7 <= a(1) AND b(7);
    a2b7 <= a(2) AND b(7);
    a3b7 <= a(3) AND b(7);
    a4b7 <= a(4) AND b(7);
    a5b7 <= a(5) AND b(7);
    a6b7 <= a(6) AND b(7);
    a7b7 <= a(7) AND b(7);

    -- primeira etapa da redução de produtos parciais
    HA40 : ENTITY work.half_adder(rtl)
        PORT MAP(a => a4b0, b => a3b1, s => sum_ha40, cout => cout_ha40);

    HA24 : ENTITY work.half_adder(rtl)
        PORT MAP(a => a2b4, b => a1b5, s => sum_ha24, cout => cout_ha24);

    ha36 : ENTITY work.half_adder(rtl)
        PORT MAP(a => a3b6, b => a2b7, s => sum_ha36, cout => cout_ha36);

    AXC50 : ENTITY work.axc_zhang(rtl)
        PORT MAP(x4 => a5b0, x3 => a4b1, x2 => a3b2, x1 => a2b3, sum => sum_axc50, carry => carry_axc50);

    AXC60 : ENTITY work.axc_zhang(rtl)
        PORT MAP(x4 => a6b0, x3 => a5b1, x2 => a4b2, x1 => a3b3, sum => sum_axc60, carry => carry_axc60);

    AXC70 : ENTITY work.axc_zhang(rtl)
        PORT MAP(x4 => a7b0, x3 => a6b1, x2 => a5b2, x1 => a4b3, sum => sum_axc70, carry => carry_axc70);

    AXC71 : ENTITY work.axc_zhang(rtl)
        PORT MAP(x4 => a7b1, x3 => a6b2, x2 => a5b3, x1 => a4b4, sum => sum_axc71, carry => carry_axc71);

    AXC72 : ENTITY work.axc_zhang(rtl)
        PORT MAP(x4 => a7b2, x3 => a6b3, x2 => a5b4, x1 => a4b5, sum => sum_axc72, carry => carry_axc72);

    AXC34 : ENTITY work.axc_zhang(rtl)
        PORT MAP(x4 => a3b4, x3 => a2b5, x2 => a1b6, x1 => a0b7, sum => sum_axc34, carry => carry_axc34);

    EXACT73 : ENTITY work.exact_compressor(rtl)
        PORT MAP(x4 => a7b3, x3 => a6b4, x2 => a5b5, x1 => a4b6, cin => '0', sum => sum_exact73, cout => cout_exact73, carry => carry_exact73);

    FA35 : ENTITY work.fa_practice(rtl)
        PORT MAP(a => a3b5, b => a2b6, cin => a1b7, s => sum_fa35, cout => cout_fa35);

    FA74 : ENTITY work.fa_practice(rtl)
        PORT MAP(a => a7b4, b => a6b5, cin => cout_exact73, s => sum_fa74, cout => cout_fa74);

    -- segunda etapa de redução de produtos parciais

    SECOND_AXC_1 : ENTITY work.axc_zhang(rtl)
        PORT MAP(x4 => sum_ha40, x3 => a2b2, x2 => a1b3, x1 => a0b4, sum => second_axc1_sum, carry => second_axc1_carry);

    product(4) <= second_axc1_sum;

    SECOND_AXC_2 : ENTITY work.axc_zhang(rtl)
        PORT MAP(x4 => sum_axc50, x3 => a1b4, x2 => a0b5, x1 => cout_ha40, sum => second_axc2_sum, carry => second_axc2_carry);

    SECOND_AXC_3 : ENTITY work.axc_zhang(rtl)
        PORT MAP(x4 => sum_axc60, x3 => carry_axc50, x2 => sum_ha24, x1 => a0b6, sum => second_axc3_sum, carry => second_axc3_carry);

    SECOND_AXC_4 : ENTITY work.axc_zhang(rtl)
        PORT MAP(x4 => sum_axc70, x3 => carry_axc60, x2 => sum_axc34, x1 => cout_ha24, sum => second_axc4_sum, carry => second_axc4_carry);

    SECOND_AXC_5 : ENTITY work.axc_zhang(rtl)
        PORT MAP(x4 => sum_axc71, x3 => carry_axc70, x2 => sum_fa35, x1 => carry_axc34, sum => second_axc5_sum, carry => second_axc5_carry);

    SECOND_AXC_6 : ENTITY work.axc_zhang(rtl)
        PORT MAP(x4 => sum_axc72, x3 => carry_axc71, x2 => sum_ha36, x1 => cout_fa35, sum => second_axc6_sum, carry => second_axc6_carry);

    SECOND_EXACT_1 : ENTITY work.exact_compressor(rtl)
        PORT MAP(x4 => sum_exact73, x3 => carry_axc72, x2 => a3b7, x1 => cout_ha36, cin => '0', cout => second_exact1_cout, sum => second_exact1_sum, carry => second_exact1_carry);

    SECOND_EXACT_2 : ENTITY work.exact_compressor(rtl)
        PORT MAP(x4 => sum_fa74, x3 => carry_exact73, x2 => a5b6, x1 => a4b7, cin => second_exact1_cout, cout => second_exact2_cout, sum => second_exact2_sum, carry => second_exact2_carry);

    SECOND_EXACT_3 : ENTITY work.exact_compressor(rtl)
        PORT MAP(x4 => a7b5, x3 => a6b6, x2 => a5b7, x1 => cout_fa74, cin => second_exact2_cout, cout => second_exact3_cout, sum => second_exact3_sum, carry => second_exact3_carry);

    SECOND_FA : ENTITY work.fa_practice(rtl)
        PORT MAP(a => a7b6, b => a6b7, cin => second_exact3_cout, s => second_fa_sum, cout => second_fa_cout);

    -- etapa de soma de produtos parciais
    RESULT_HA : ENTITY work.half_adder(rtl)
        PORT MAP(a => second_axc2_sum, b => second_axc1_carry, s => product(5), cout => carry_result_ha);

    RESULT_FA_1 : ENTITY work.fa_practice(rtl)
        PORT MAP(a => second_axc3_sum, b => second_axc2_carry, cin => carry_result_ha, s => product(6), cout => carry_result_fa1);

    RESULT_FA_2 : ENTITY work.fa_practice(rtl)
        PORT MAP(a => second_axc4_sum, b => second_axc3_carry, cin => carry_result_fa1, s => product(7), cout => carry_result_fa2);

    RESULT_FA_3 : ENTITY work.fa_practice(rtl)
        PORT MAP(a => second_axc5_sum, b => second_axc4_carry, cin => carry_result_fa2, s => product(8), cout => carry_result_fa3);

    RESULT_FA_4 : ENTITY work.fa_practice(rtl)
        PORT MAP(a => second_axc6_sum, b => second_axc5_carry, cin => carry_result_fa3, s => product(9), cout => carry_result_fa4);

    RESULT_FA_5 : ENTITY work.fa_practice(rtl)
        PORT MAP(a => second_exact1_sum, b => second_axc6_carry, cin => carry_result_fa4, s => product(10), cout => carry_result_fa5);

    RESULT_FA_6 : ENTITY work.fa_practice(rtl)
        PORT MAP(a => second_exact2_sum, b => second_exact1_carry, cin => carry_result_fa5, s => product(11), cout => carry_result_fa6);

    RESULT_FA_7 : ENTITY work.fa_practice(rtl)
        PORT MAP(a => second_exact3_sum, b => second_exact2_carry, cin => carry_result_fa6, s => product(12), cout => carry_result_fa7);

    RESULT_FA_8 : ENTITY work.fa_practice(rtl)
        PORT MAP(a => second_fa_sum, b => second_exact3_carry, cin => carry_result_fa7, s => product(13), cout => carry_result_fa8);

    RESULT_FA_9 : ENTITY work.fa_practice(rtl)
        PORT MAP(a => second_fa_cout, b => a7b7, cin => carry_result_fa8, s => product(14), cout => product(15));

END ARCHITECTURE;