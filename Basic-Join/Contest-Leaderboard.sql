select t1.hacker_id, h.name, sum(t1.m) as sm
from hackers h
right join
(select hacker_id, challenge_id, max(score) as m
from submissions
group by hacker_id, challenge_id
order by hacker_id, challenge_id) t1
on h.hacker_id=t1.hacker_id
group by t1.hacker_id, h.name
having sm>0
order by sm desc, h.hacker_id
