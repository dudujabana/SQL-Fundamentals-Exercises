select count(*)AS number_of_employees
from workspace.exercises.employees;
----------------------------------
select sum(salary)AS total_salary_in_IT_department
from workspace.exercises.employees
where department='IT';
---------------------------------
select avg(salary)AS avg_salary_in_HR_department
from workspace.exercises.employees
where department='HR';
-------------------------------
select min(salary)AS lowest_salary,
        max(salary)AS highest_salary
from workspace.exercises.employees;
--------------------------------
select department,
    sum(salary)AS total_salary
from workspace.exercises.employees
group by department;
---------------------------------
select city,
    count(distinct id)AS number_of_employees
from workspace.exercises.employees
group by city;
--------------------------------
select department,
    avg(salary)AS avg_salary_in_each_department
from workspace.exercises.employees
group by department
order by avg_salary_In_each_department desc;
---------------------------------
select department,
    sum(salary)AS total_salary
from workspace.exercises.employees
group by department
having total_salary>100000;
-----------------------------
select city,
    count(distinct id)AS number_of_employees
from workspace.exercises.employees
group by city
having number_of_employees >1
order by number_of_employees desc;
-----------------------------------
select department,
    avg(salary)AS highest_avg_salary
from workspace.exercises.employees
group by department
order by highest_avg_salary desc
limit 1;
