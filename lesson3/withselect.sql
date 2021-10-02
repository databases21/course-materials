do 
$$
declare
   film_count integer;
begin 
   select count(*) into film_count
   from film;
   raise notice 'The number of films: %', film_count;
end;
$$