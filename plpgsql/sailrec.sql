create or replace function dbms24.sailrec(id integer)
returns record
as $$
declare	
	rec record;
begin
	select * into rec from dbms24.sailor where sid=id;
	return rec;
end
$$ language plpgsql;