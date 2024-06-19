do
$$
declare
   counter int = 0;                                                         
begin
  
  loop
     counter = counter + 1;
	 
	 -- exit the loop if counter > 20(or desired number)
	 exit when counter > 20;
	 
	 -- skip the current iteration if counter is an odd number
	 continue when mod(counter,2) <> 0;
	 
	 -- print out the counter
	 raise notice '%', counter;
  end loop;
end;

$$;
