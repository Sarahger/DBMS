CREATE OR REPLACE FUNCTION factorial(num INTEGER)
RETURNS INTEGER AS $$
DECLARE
    result INTEGER := 1;
    i INTEGER;
BEGIN
    IF num < 0 THEN
        RAISE EXCEPTION 'Input must be a non-negative integer';
    END IF;

    FOR i IN 1..num LOOP
        result := result * i;
    END LOOP;

    RETURN result;
END;
$$ LANGUAGE plpgsql;

-- Example usage
DO $$
DECLARE
    num INTEGER := 5;
    fact INTEGER;
BEGIN
    fact := factorial(num);
    RAISE NOTICE 'Factorial of % is %', num, fact;
END $$;
