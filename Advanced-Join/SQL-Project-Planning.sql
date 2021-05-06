SELECT Start_Date, min(end_date)
FROM 
(SELECT Start_Date FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) a,
(SELECT end_date FROM PROJECTS WHERE end_date NOT IN (SELECT start_date FROM PROJECTS)) b
where start_date < end_date
group by start_date
order by datediff(start_date, min(end_date)) desc, start_date
