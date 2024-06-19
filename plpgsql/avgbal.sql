create or replace function dbms24.avgbal()
returns numeric
as $$
declare
	bal dbms24.deposit.balance%type;
	avgbal numeric;
begin
	select balance into bal from dbms24.deposit;
	avgbal := sum(bal)/count(bal);
	return avgbal;
end
$$ language plpgsql