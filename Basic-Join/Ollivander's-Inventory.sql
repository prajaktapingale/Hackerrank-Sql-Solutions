select w.id, t1.age, t1.coins_needed, t1.power
from wands w
right join
(select w.code, wp.age, w.power, min(w.coins_needed) as coins_needed
from wands w
inner join wands_property wp
on w.code=wp.code and is_evil=0
group by w.code, wp.age, w.power) t1
on w.code=t1.code and w.power=t1.power and w.coins_needed=t1.coins_needed
order by power desc, age desc
