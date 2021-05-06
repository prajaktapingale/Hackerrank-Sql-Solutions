select concat(name,'(',left(occupation, 1),')')
from occupations
order by name;

select case
when occupation='Professor' then concat('There are a total of ',count(name),' ',lower(occupation),'s.')
when occupation='Actor' then concat('There are a total of ',count(name),' ',lower(occupation),'s.')
when occupation='Doctor' then concat('There are a total of ',count(name),' ',lower(occupation),'s.')
when occupation='Singer' then concat('There are a total of ',count(name),' ',lower(occupation),'s.')
else 0
end as tot
from occupations
group by occupation
order by tot, occupation;
