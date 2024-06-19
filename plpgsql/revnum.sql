CREATE OR REPLACE FUNCTION reverse_number(num INTEGER)
RETURNS INTEGER AS $$
DECLARE
    reversed_num INTEGER := 0;
    digit INTEGER;
BEGIN
    WHILE num > 0 LOOP
        digit := num % 10;
        reversed_num := reversed_num * 10 + digit;
        num := num / 10;
    END LOOP;

    RETURN reversed_num;
END;
$$ LANGUAGE plpgsql;

-- Example usage
DO $$
DECLARE
    input_num INTEGER := 12345;
    reversed INTEGER;
BEGIN
    reversed := reverse_number(input_num);
    RAISE NOTICE 'Reverse of % is %', input_num, reversed;
END $$;
