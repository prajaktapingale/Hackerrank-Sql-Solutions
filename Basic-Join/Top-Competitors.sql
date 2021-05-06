select s.hacker_id, h.name
from submissions s
left join challenges c
on s.challenge_id=c.challenge_id
left join difficulty d
on c.difficulty_level=d.difficulty_level
left join hackers h
on h.hacker_id=s.hacker_id
where s.score=d.score
group by s.hacker_id, h.name
having count(s.score)>1
order by count(s.score) desc, hacker_id
