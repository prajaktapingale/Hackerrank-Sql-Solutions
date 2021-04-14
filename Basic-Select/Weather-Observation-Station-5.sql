select city, length(city) as l
from station
where length(city) = (select min(length(city)) 
                     from station)
order by l, city
limit 1;


select city, length(city) as l
from station
where length(city) = (select max(length(city)) 
                     from station)
order by l, city
limit 1
