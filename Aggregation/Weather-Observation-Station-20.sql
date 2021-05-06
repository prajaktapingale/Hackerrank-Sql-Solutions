select round((case
when count(lat_n)%2!=0 then
    (select lat_n
    from
    (select lat_n,
    row_number() over (order by lat_n) as rn
    from station) t1
    where rn = (select ceil(count(lat_n)/2) from station))
when count(lat_n)%2=0 then
    ((select lat_n
    from
    (select lat_n,
    row_number() over (order by lat_n) as rn
    from station) t1
    where rn = (select (count(lat_n)/2) from station))+
     (select lat_n
    from
    (select lat_n,
    row_number() over (order by lat_n) as rn
    from station) t1
    where rn = (select (count(lat_n)/2)+1 from station)))/2  
else 0
end),4)
from station
