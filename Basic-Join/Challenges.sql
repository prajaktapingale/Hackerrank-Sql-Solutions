select h.hacker_id, h.name, count(c.challenge_id) as tot
from hackers h inner join challenges c
on h.hacker_id=c.hacker_id
group by h.hacker_id, h.name

having

tot = (select max(t2.tot) from (select count(challenge_id) as tot from challenges group by hacker_id) t2)

or

tot in (select t.cnt from (select count(challenge_id) as cnt from challenges group by hacker_id) t group by t.cnt having count(t.cnt) = 1)

order by tot desc, hacker_id
