select city
from station
where lower(left(city,1)) in ('a','e','i','o','u') 
and lower(right(city,1)) in ('a','e','i','o','u')
