CREATE OR REPLACE FUNCTION dbms24.is_prime(num INTEGER) 
RETURNS BOOLEAN AS $$
DECLARE
    i INTEGER := 2;
BEGIN
    IF num <= 1 THEN
        RETURN FALSE;
    END IF;
    
    WHILE i * i <= num LOOP
        IF num % i = 0 THEN
            RETURN FALSE;
        END IF;
        i := i + 1;
    END LOOP;
    
    RETURN TRUE;
END;
$$ LANGUAGE plpgsql;
