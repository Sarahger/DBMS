CREATE OR REPLACE FUNCTION sum_of_digits(num INTEGER)
RETURNS INTEGER AS $$
DECLARE
    digit_sum INTEGER := 0;
    digit INTEGER;
BEGIN
    IF num < 1000 OR num > 9999 THEN
        RAISE EXCEPTION 'Input must be a four-digit number';
    END IF;

    digit_sum := (num / 1000) % 10 + (num / 100) % 10 + (num / 10) % 10 + num % 10;

    RETURN digit_sum;
END;
$$ LANGUAGE plpgsql;

-- Example usage
DO $$
DECLARE
    num INTEGER := 1234;
    sum INTEGER;
BEGIN
    sum := sum_of_digits(num);
    RAISE NOTICE 'Sum of digits of % is %', num, sum;
END $$;
