DO $$
DECLARE
    radius_val INTEGER;
    area_val DOUBLE PRECISION;
BEGIN
    FOR radius_val IN 3..7 LOOP
        area_val := pi() * radius_val * radius_val;
        INSERT INTO dbms24.circle_area VALUES (radius_val, area_val);
    END LOOP;
END $$;
