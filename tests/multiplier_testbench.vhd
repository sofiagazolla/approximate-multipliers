LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY multiplier_testbench IS
END ENTITY;

ARCHITECTURE tb OF multiplier_testbench IS

    SIGNAL a : unsigned(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL b : unsigned(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL product : unsigned(15 DOWNTO 0);

BEGIN

    dut : ENTITY work.multiplier_operator_axc_esposito(rtl)
        PORT MAP(
            a => a,
            b => b,
            product => product
        );

    stim_proc : PROCESS

        VARIABLE acertos : INTEGER := 0;
        VARIABLE erros : INTEGER := 0;
        VARIABLE esperado : unsigned(15 DOWNTO 0);

    BEGIN

        FOR i IN 0 TO 255 LOOP
            FOR j IN 0 TO 255 LOOP

                a <= to_unsigned(i, 8);
                b <= to_unsigned(j, 8);

                WAIT FOR 1 ns;

                esperado := to_unsigned(i * j, 16);

                IF product = esperado THEN
                    acertos := acertos + 1;
                ELSE
                    erros := erros + 1;
                END IF;

            END LOOP;
        END LOOP;

        REPORT "65536 testes executados com sucesso!!"
        REPORT "resultados exatos: " & INTEGER'image(acertos);
        REPORT "resultados diferentes: " & INTEGER'image(erros);

        WAIT;

    END PROCESS;

END ARCHITECTURE;