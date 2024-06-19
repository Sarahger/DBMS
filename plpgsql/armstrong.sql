CREATE OR REPLACE FUNCTION is_armstrong_number(num INTEGER)
RETURNS BOOLEAN AS $$
DECLARE
    original_num INTEGER;
    digit INTEGER;
    sum INTEGER := 0;
BEGIN
    IF num < 100 OR num > 999 THEN
        RAISE EXCEPTION 'Input must be a three-digit number';
    END IF;

    original_num := num;

    WHILE num > 0 LOOP
        digit := num % 10;
        sum := sum + digit * digit * digit;
        num := num / 10;
    END LOOP;

    RETURN original_num = sum;
END;
$$ LANGUAGE plpgsql;

-- Example usage
DO $$
BEGIN
    IF is_armstrong_number(153) THEN
        RAISE NOTICE '153 is an Armstrong number';
    ELSE
        RAISE NOTICE '153 is not an Armstrong number';
    END IF;
END $$;
