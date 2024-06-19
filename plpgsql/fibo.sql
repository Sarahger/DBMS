CREATE OR REPLACE FUNCTION generate_fibonacci_series()
RETURNS SETOF INTEGER AS $$
DECLARE
    n1 INTEGER := 0;
    n2 INTEGER := 1;
    next_term INTEGER;
    counter INTEGER := 0;
BEGIN
    RETURN NEXT n1;
    RETURN NEXT n2;

    WHILE counter < 6 LOOP
        next_term := n1 + n2;
        n1 := n2;
        n2 := next_term;
        RETURN NEXT next_term;
        counter := counter + 1;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

-- Example usage
SELECT * FROM generate_fibonacci_series();
