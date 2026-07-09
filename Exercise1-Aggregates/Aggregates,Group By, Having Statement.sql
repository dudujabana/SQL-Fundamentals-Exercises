--1. Count The Total Numbers of employees
select count(*)AS number_of_employees
from workspace.exercises.employees;
--2. Total Salary in the IT department
select sum(salary)AS total_salary_in_IT_department
from workspace.exercises.employees
where department='IT';
--3. Average Salary in the HR department
select avg(salary)AS avg_salary_in_HR_department
from workspace.exercises.employees
where department='HR';
--4. Minimum and maximum salary of employees
select min(salary)AS lowest_salary,
        max(salary)AS highest_salary
from workspace.exercises.employees;
--5.Calculate the total salary of employees
select department,
    sum(salary)AS total_salary
from workspace.exercises.employees
group by department;
--6. Count employees in each city
select city,
    count(distinct id)AS number_of_employees
from workspace.exercises.employees
group by city;
--7. Average Salary in each deparment
select department,
    avg(salary)AS avg_salary_in_each_department
from workspace.exercises.employees
group by department
order by avg_salary_In_each_department desc;
--8. Employees with salary more than 100000
select department,
    sum(salary)AS total_salary
from workspace.exercises.employees
group by department
having total_salary>100000;
--9. Cities with more than 1 employee,in descending order
select city,
    count(distinct id)AS number_of_employees
from workspace.exercises.employees
group by city
having number_of_employees >1
order by number_of_employees desc;
--10. Highest average salary in descending order
select department,
    avg(salary)AS highest_avg_salary
from workspace.exercises.employees
group by department
order by highest_avg_salary desc
limit 1;
