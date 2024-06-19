do $$
declare 
	i integer := 1;
	sq integer;
begin
    for i in 1..20 loop
		sq := i*i;
		raise notice 'Square of % = %', i, sq;
	end loop;
end;
$$;