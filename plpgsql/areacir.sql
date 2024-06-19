create or replace function dbms24.area_cir(num integer)
returns double precision
as $$
DECLARE
    a_val double precision;
BEGIN
	a_val := pi() * num * num ;
	return a_val;
END 
$$ 
language plpgsql;
