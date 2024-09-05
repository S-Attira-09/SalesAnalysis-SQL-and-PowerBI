select *from sh1 
select *from sh2
-- join two tables
select *from sh1
inner join sh2 on sh1.Id = sh2.Id

-- Remove null values from the wip column
select *from sh1
where wip is not null

-- Q1) Which Department has the highest overtime?
select TOP 1 Department, SUM(over_time) as highest_overtime
from sh1
group by Department
order by highest_overtime DESC 

--Q2)Insert a new row with random values into the table "Employee_dataset".
INSERT INTO sh1 (Id, actual_productivity, Department, targeted_productivity, smv, wip, over_time, no_of_workers, month)
VALUES ('3', 9.8, 'IT', 0.67, 30.8, 1220, 4390, 10, 4);
select *from sh1


--Q3) Order by Highest to lowest Overtime by Department?
select Department, over_time
from sh1 
order by over_time DESC;

--Q4 ) Which Department had the most work?

select Top 1  Department, Sum(no_of_workers) as overall_work
from sh1 
group by Department
order by overall_work DESC;

--Q5) Which two departmentshave the highest productivity?
select Top 2 Department, AVG(actual_productivity) as avg_productivity
from sh1
group  by Department
order  by avg_productivity DESC;

--Q6) Whats the total wip by Month?
Select month, Sum(wip) as total_wip
from sh1 where month is not null
group by month
--order by total_wip DESC;

--Q7) Insert a new row into the table "Employee_dataset" with columns "smv" and "noofworkers"?

insert into sh1 (smv, no_of_workers)
values (999, 12)
select *from sh1
