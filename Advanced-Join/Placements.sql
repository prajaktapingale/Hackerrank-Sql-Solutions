select s.name
from friends f
left join students s
on f.id=s.id
left join packages p
on f.id=p.id
left join packages p2
on f.friend_id=p2.id
where p.Salary<p2.Salary
order by p2.Salary
