LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY axc_esposito_testbench IS
END ENTITY;

ARCHITECTURE tb OF axc_esposito_testbench IS

    SIGNAL x4, x3, x2, x1 : STD_LOGIC;
    SIGNAL carry, sum : STD_LOGIC;

BEGIN
    dut : ENTITY work.axc_esposito(rtl)
        PORT MAP(
            x4 => x4,
            x3 => x3,
            x2 => x2,
            x1 => x1,
            carry => carry,
            sum => sum
        );

    stim_proc : PROCESS
    BEGIN
        x4 <= '0';
        x3 <= '0';
        x2 <= '0';
        x1 <= '0';
        WAIT FOR 10 ns;
        ASSERT (carry = '0' AND sum = '0')
        REPORT "Erro no Teste 0 | Esperado: carry=0 sum=0 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '0';
        x3 <= '0';
        x2 <= '0';
        x1 <= '1';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '0')
        REPORT "Erro no Teste 1 | Esperado: carry=1 sum=0 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '0';
        x3 <= '0';
        x2 <= '1';
        x1 <= '0';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '0')
        REPORT "Erro no Teste 2 | Esperado: carry=1 sum=0 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '0';
        x3 <= '0';
        x2 <= '1';
        x1 <= '1';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '1')
        REPORT "Erro no Teste 3 | Esperado: carry=1 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '0';
        x3 <= '1';
        x2 <= '0';
        x1 <= '0';
        WAIT FOR 10 ns;
        ASSERT (carry = '0' AND sum = '1')
        REPORT "Erro no Teste 4 | Esperado: carry=0 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '0';
        x3 <= '1';
        x2 <= '0';
        x1 <= '1';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '1')
        REPORT "Erro no Teste 5 | Esperado: carry=1 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '0';
        x3 <= '1';
        x2 <= '1';
        x1 <= '0';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '1')
        REPORT "Erro no Teste 6 | Esperado: carry=1 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '0';
        x3 <= '1';
        x2 <= '1';
        x1 <= '1';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '1')
        REPORT "Erro no Teste 7 | Esperado: carry=1 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '1';
        x3 <= '0';
        x2 <= '0';
        x1 <= '0';
        WAIT FOR 10 ns;
        ASSERT (carry = '0' AND sum = '1')
        REPORT "Erro no Teste 8 | Esperado: carry=0 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '1';
        x3 <= '0';
        x2 <= '0';
        x1 <= '1';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '1')
        REPORT "Erro no Teste 9 | Esperado: carry=1 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '1';
        x3 <= '0';
        x2 <= '1';
        x1 <= '0';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '1')
        REPORT "Erro no Teste 10 | Esperado: carry=1 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '1';
        x3 <= '0';
        x2 <= '1';
        x1 <= '1';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '1')
        REPORT "Erro no Teste 11 | Esperado: carry=1 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '1';
        x3 <= '1';
        x2 <= '0';
        x1 <= '0';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '1')
        REPORT "Erro no Teste 12 | Esperado: carry=1 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '1';
        x3 <= '1';
        x2 <= '0';
        x1 <= '1';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '1')
        REPORT "Erro no Teste 13 | Esperado: carry=1 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '1';
        x3 <= '1';
        x2 <= '1';
        x1 <= '0';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '1')
        REPORT "Erro no Teste 14 | Esperado: carry=1 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;

        x4 <= '1';
        x3 <= '1';
        x2 <= '1';
        x1 <= '1';
        WAIT FOR 10 ns;
        ASSERT (carry = '1' AND sum = '1')
        REPORT "Erro no Teste 15 | Esperado: carry=1 sum=1 | Obtido: carry=" & STD_LOGIC'image(carry) & " sum=" & STD_LOGIC'image(sum)
            SEVERITY error;
        REPORT "16 testes executados com sucesso!!";
        WAIT;
    END PROCESS;

END ARCHITECTURE;