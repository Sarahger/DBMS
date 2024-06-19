CREATE OR REPLACE FUNCTION dbms24.rect_area(num1 INTEGER, num2 INTEGER) 
RETURNS INTEGER AS $$
DECLARE
    area INTEGER;
BEGIN
    area := num1 * num2;
	return area;
END;
$$ LANGUAGE plpgsql;
