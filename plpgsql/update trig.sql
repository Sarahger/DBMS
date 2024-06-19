create trigger t1
after update on dbms24.staff
for each row
execute function dbms24.t1();

create or replace function dbms24.t1()
returns trigger as
$$
begin
	select cast(now() as date);
	return new;
end
$$ language plpgsql;