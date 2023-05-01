--getting feel for employee table
select *
from employee;

--step1- List all employee first and last names only that live in Calgary.
select first_name, last_name
from employee
where city = 'Calgary';


--step2- Find the birthdate for the youngest employee.
select birth_date as youngest_employee_bday
from employee
order by birth_date desc
limit 1;

--step3- Find the birthdate for the oldest employee.
select birth_date as oldest_employee_bday
from employee
order by birth_date ASC
limit 1;

--step4- Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
select *
from employee
where reports_to = (select employee_id
from employee
where first_name = 'Nancy' and last_name = 'Edwards');

--step5- Count how many people live in Lethbridge.
select count(*)
from employee
where city = 'Lethbridge';