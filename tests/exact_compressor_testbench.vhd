LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY exact_compressor_testbench IS
END ENTITY;

ARCHITECTURE tb OF exact_compressor_testbench IS

    SIGNAL x4, x3, x2, x1, cin : STD_LOGIC;
    SIGNAL sum, carry, cout : STD_LOGIC;

BEGIN

    dut : ENTITY work.exact_compressor(rtl)
        PORT MAP(
            x4 => x4,
            x3 => x3,
            x2 => x2,
            x1 => x1,
            cin => cin,
            sum => sum,
            carry => carry,
            cout => cout
        );

    stim_proc : PROCESS
    BEGIN

        x4 <= '0';
        x3 <= '0';
        x2 <= '0';
        x1 <= '0';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '0' AND cout = '0')
        REPORT "Erro no Teste 0" SEVERITY error;

        x4 <= '0';
        x3 <= '0';
        x2 <= '0';
        x1 <= '0';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '0' AND cout = '0')
        REPORT "Erro no Teste 1" SEVERITY error;

        x4 <= '0';
        x3 <= '0';
        x2 <= '0';
        x1 <= '1';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '0' AND cout = '0')
        REPORT "Erro no Teste 2" SEVERITY error;

        x4 <= '0';
        x3 <= '0';
        x2 <= '0';
        x1 <= '1';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '1' AND cout = '0')
        REPORT "Erro no Teste 3" SEVERITY error;

        x4 <= '0';
        x3 <= '0';
        x2 <= '1';
        x1 <= '0';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '0' AND cout = '0')
        REPORT "Erro no Teste 4" SEVERITY error;

        x4 <= '0';
        x3 <= '0';
        x2 <= '1';
        x1 <= '0';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '1' AND cout = '0')
        REPORT "Erro no Teste 5" SEVERITY error;

        x4 <= '0';
        x3 <= '0';
        x2 <= '1';
        x1 <= '1';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '0' AND cout = '1')
        REPORT "Erro no Teste 6" SEVERITY error;

        x4 <= '0';
        x3 <= '0';
        x2 <= '1';
        x1 <= '1';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '0' AND cout = '1')
        REPORT "Erro no Teste 7" SEVERITY error;

        x4 <= '0';
        x3 <= '1';
        x2 <= '0';
        x1 <= '0';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '0' AND cout = '0')
        REPORT "Erro no Teste 8" SEVERITY error;

        x4 <= '0';
        x3 <= '1';
        x2 <= '0';
        x1 <= '0';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '1' AND cout = '0')
        REPORT "Erro no Teste 9" SEVERITY error;

        x4 <= '0';
        x3 <= '1';
        x2 <= '0';
        x1 <= '1';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '0' AND cout = '1')
        REPORT "Erro no Teste 10" SEVERITY error;

        x4 <= '0';
        x3 <= '1';
        x2 <= '0';
        x1 <= '1';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '0' AND cout = '1')
        REPORT "Erro no Teste 11" SEVERITY error;

        x4 <= '0';
        x3 <= '1';
        x2 <= '1';
        x1 <= '0';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '0' AND cout = '1')
        REPORT "Erro no Teste 12" SEVERITY error;

        x4 <= '0';
        x3 <= '1';
        x2 <= '1';
        x1 <= '0';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '0' AND cout = '1')
        REPORT "Erro no Teste 13" SEVERITY error;

        x4 <= '0';
        x3 <= '1';
        x2 <= '1';
        x1 <= '1';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '0' AND cout = '1')
        REPORT "Erro no Teste 14" SEVERITY error;

        x4 <= '0';
        x3 <= '1';
        x2 <= '1';
        x1 <= '1';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '1' AND cout = '1')
        REPORT "Erro no Teste 15" SEVERITY error;

        x4 <= '1';
        x3 <= '0';
        x2 <= '0';
        x1 <= '0';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '0' AND cout = '0')
        REPORT "Erro no Teste 16" SEVERITY error;

        x4 <= '1';
        x3 <= '0';
        x2 <= '0';
        x1 <= '0';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '1' AND cout = '0')
        REPORT "Erro no Teste 17" SEVERITY error;

        x4 <= '1';
        x3 <= '0';
        x2 <= '0';
        x1 <= '1';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '1' AND cout = '0')
        REPORT "Erro no Teste 18" SEVERITY error;

        x4 <= '1';
        x3 <= '0';
        x2 <= '0';
        x1 <= '1';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '1' AND cout = '0')
        REPORT "Erro no Teste 19" SEVERITY error;

        x4 <= '1';
        x3 <= '0';
        x2 <= '1';
        x1 <= '0';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '1' AND cout = '0')
        REPORT "Erro no Teste 20" SEVERITY error;

        x4 <= '1';
        x3 <= '0';
        x2 <= '1';
        x1 <= '0';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '1' AND cout = '0')
        REPORT "Erro no Teste 21" SEVERITY error;

        x4 <= '1';
        x3 <= '0';
        x2 <= '1';
        x1 <= '1';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '0' AND cout = '1')
        REPORT "Erro no Teste 22" SEVERITY error;

        x4 <= '1';
        x3 <= '0';
        x2 <= '1';
        x1 <= '1';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '1' AND cout = '1')
        REPORT "Erro no Teste 23" SEVERITY error;

        x4 <= '1';
        x3 <= '1';
        x2 <= '0';
        x1 <= '0';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '1' AND cout = '0')
        REPORT "Erro no Teste 24" SEVERITY error;

        x4 <= '1';
        x3 <= '1';
        x2 <= '0';
        x1 <= '0';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '1' AND cout = '0')
        REPORT "Erro no Teste 25" SEVERITY error;

        x4 <= '1';
        x3 <= '1';
        x2 <= '0';
        x1 <= '1';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '0' AND cout = '1')
        REPORT "Erro no Teste 26" SEVERITY error;

        x4 <= '1';
        x3 <= '1';
        x2 <= '0';
        x1 <= '1';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '1' AND cout = '1')
        REPORT "Erro no Teste 27" SEVERITY error;

        x4 <= '1';
        x3 <= '1';
        x2 <= '1';
        x1 <= '0';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '0' AND cout = '1')
        REPORT "Erro no Teste 28" SEVERITY error;

        x4 <= '1';
        x3 <= '1';
        x2 <= '1';
        x1 <= '0';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '1' AND cout = '1')
        REPORT "Erro no Teste 29" SEVERITY error;

        x4 <= '1';
        x3 <= '1';
        x2 <= '1';
        x1 <= '1';
        cin <= '0';
        WAIT FOR 10 ns;
        ASSERT (sum = '0' AND carry = '1' AND cout = '1')
        REPORT "Erro no Teste 30" SEVERITY error;

        x4 <= '1';
        x3 <= '1';
        x2 <= '1';
        x1 <= '1';
        cin <= '1';
        WAIT FOR 10 ns;
        ASSERT (sum = '1' AND carry = '1' AND cout = '1')
        REPORT "Erro no Teste 31" SEVERITY error;

        REPORT "32 testes executados com sucesso!!";
        WAIT;

    END PROCESS;

END ARCHITECTURE;