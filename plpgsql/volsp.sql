create or replace function dbms24.volume_sp(num integer)
returns double precision
as $$
DECLARE
    vol_val double precision;
	x double precision;
BEGIN
	x := 4/3;
	vol_val :=  x *pi() * num * num * num;
	return vol_val;
END 
$$ 
language plpgsql;
