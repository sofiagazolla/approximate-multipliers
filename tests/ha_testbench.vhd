LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ha_testbench IS
END ENTITY;

ARCHITECTURE tb OF ha_testbench IS

    SIGNAL a, b : STD_LOGIC := '0';
    SIGNAL s, cout : STD_LOGIC;

BEGIN
    dut : ENTITY work.half_adder(rtl)
        PORT MAP(
            a => a,
            b => b,
            s => s,
            cout => cout
        );

    stim_proc : PROCESS
    BEGIN

        a <= '0';
        b <= '0';
        WAIT FOR 10 ns;
        ASSERT (cout = '0' AND s = '0') REPORT "Erro no Teste 0" SEVERITY error;

        a <= '0';
        b <= '1';
        WAIT FOR 10 ns;
        ASSERT (cout = '0' AND s = '1') REPORT "Erro no Teste 1" SEVERITY error;

        a <= '1';
        b <= '0';
        WAIT FOR 10 ns;
        ASSERT (cout = '0' AND s = '1') REPORT "Erro no Teste 2" SEVERITY error;

        a <= '1';
        b <= '1';
        WAIT FOR 10 ns;
        ASSERT (cout = '1' AND s = '0') REPORT "Erro no Teste 3" SEVERITY error;

        REPORT "4 testes executados com sucesso!!";
        WAIT;
    END PROCESS;

END ARCHITECTURE;