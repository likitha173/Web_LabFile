DECLARE
    num1 NUMBER;
    num2 NUMBER;
    num3 NUMBER;
    greatest NUMBER;
BEGIN
    -- Get user input for three numbers
    num1 := &num1_input; -- Replace with user input
    num2 := &num2_input; -- Replace with user input
    num3 := &num3_input; -- Replace with user input

    -- Check which number is the greatest
    IF num1 >= num2 AND num1 >= num3 THEN
        greatest := num1;
    ELSIF num2 >= num1 AND num2 >= num3 THEN
        greatest := num2;
    ELSE
        greatest := num3;
    END IF;

    -- Display the greatest number
    IF num1 = num2 AND num2 = num3 THEN
        DBMS_OUTPUT.PUT_LINE('All three numbers are equal: ' || num1);
    ELSE
        DBMS_OUTPUT.PUT_LINE('The greatest number is: ' || greatest);
    END IF;
END;
/
