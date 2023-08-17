CREATE OR REPLACE FUNCTION factorial(n NUMBER) RETURN NUMBER IS
    result NUMBER := 1;
BEGIN
    FOR i IN 1..n LOOP
        result := result * i;
    END LOOP;

    RETURN result;
END;
/

DECLARE
    n NUMBER := &n_input; -- Replace with user input for n
    r NUMBER := &r_input; -- Replace with user input for r
    nCr NUMBER;
BEGIN
    IF r <= n THEN
        nCr := factorial(n) / (factorial(r) * factorial(n - r));
        DBMS_OUTPUT.PUT_LINE('nCr is: ' || nCr);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Invalid input. r cannot be greater than n.');
    END IF;
END;
/
