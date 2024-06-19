do
$$
declare
   counter int = 100;                                                         
begin

  for counter in 100..250 by 25 loop
    raise notice 'counter: %', counter;
  end loop;
  
end;
$$;
