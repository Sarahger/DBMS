create trigger t2
before update on dbms24.staff
for each row
execute function dbms24.t2();

create or replace function dbms24.t2()
returns trigger as
$$
begin
	raise exception 'Cannot update this table';
	return new;
end
$$ language plpgsql;