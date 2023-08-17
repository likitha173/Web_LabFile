DECLARE
    input_char CHAR := UPPER('&char_input'); -- Replace with user input
    char_type VARCHAR2(20);
BEGIN
    CASE input_char
        WHEN 'A' THEN
            char_type := 'Vowel';
        WHEN 'E' THEN
            char_type := 'Vowel';
        WHEN 'I' THEN
            char_type := 'Vowel';
        WHEN 'O' THEN
            char_type := 'Vowel';
        WHEN 'U' THEN
            char_type := 'Vowel';
        ELSE
            char_type := 'Consonant';
    END CASE;

    DBMS_OUTPUT.PUT_LINE('The character is a ' || char_type);
END;
/
