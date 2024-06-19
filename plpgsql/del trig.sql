create trigger t3
before delete on dbms24.bnch
for each row
execute function dbms24.t3();

create or replace function dbms24.t3()
returns trigger as
$$
begin
	raise exception 'Cannot delete this table';
	return new;
end
$$ language plpgsql;