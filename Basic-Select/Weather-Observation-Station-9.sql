select city
from station 
where lower(left(city,1)) not in ('a','e','i','o','u')
group by city
