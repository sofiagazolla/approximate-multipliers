LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fa_testbench IS
END ENTITY;

ARCHITECTURE tb OF fa_testbench IS

    SIGNAL a, b, cin : STD_LOGIC := '0';
    SIGNAL s, cout : STD_LOGIC;

BEGIN
    dut : ENTITY work.fa_practice(rtl)
        PORT MAP(
            a => a,
            b => b,
            cin => cin,
            s => s,
            cout => cout
        );

    stim_proc : PROCESS
    BEGIN

        a <= '0';
        b <= '0';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (cout = '0' AND s = '0') REPORT "Erro no Teste 0" SEVERITY error;

        a <= '0';
        b <= '0';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (cout = '0' AND s = '1') REPORT "Erro no Teste 1" SEVERITY error;

        a <= '0';
        b <= '1';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (cout = '0' AND s = '1') REPORT "Erro no Teste 2" SEVERITY error;

        a <= '0';
        b <= '1';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (cout = '1' AND s = '0') REPORT "Erro no Teste 3" SEVERITY error;

        a <= '1';
        b <= '0';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (cout = '0' AND s = '1') REPORT "Erro no Teste 4" SEVERITY error;

        a <= '1';
        b <= '0';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (cout = '1' AND s = '0') REPORT "Erro no Teste 5" SEVERITY error;

        a <= '1';
        b <= '1';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (cout = '1' AND s = '0') REPORT "Erro no Teste 6" SEVERITY error;

        a <= '1';
        b <= '1';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (cout = '1' AND s = '1') REPORT "Erro no Teste 7" SEVERITY error;

        REPORT "8 testes executados com sucesso!!";
        WAIT;
    END PROCESS;

END ARCHITECTURE;