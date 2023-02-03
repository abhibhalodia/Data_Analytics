-- question 1. Write a query to display the last name, department number, department name for all employees
select E.last_name , D.department_name from employees as E inner join departments as D on E.department_id = D.department_id;

-- question 2. Create a unique list of all jobs that are in department 4, Include the location of the department in the output.
select * from departments;
select J.job_title, D.location_id  from employees as E 
inner join departments as D 
on E.department_id = D.department_id 
inner join jobs as J 
on E.job_id = J.job_id 
where D.department_id = 4 ;

-- question 3. Write a query to display the employee last name,department name ,location id and city of all employees who earn commission.
select E.last_name , D.department_name , D.location_id , L.city from employees as E inner join departments as D on E.department_id = D.department_id inner join locations as L on D.location_id = L.location_id where E.commission != 0 ;

-- question 4. Display the employee last name and department name of all employees who have an'a’ in their last name
select E.last_name , D.department_name from employees as E inner join departments as D on E.department_id = D.department_id where E.last_name like "%a%";

-- question 5. Write a query to display the last name ,job,department number and department name for all employees who work in ATLANTA.
select E.last_name , J.job_title , D.department_id , D.department_name from employees as E 
inner join jobs as J on E.job_id = J.job_id 
inner join departments as D on E.department_id = D.department_id ;


-- question 6. Display the employee last name and employee number along with their manager's last name and manager number.
-- select last_name ,employee_id 
select employee_id,first_name,last_name,manager_id from employees;

-- question 7. lay the employee last name and employee number along with their manager's last name and manager number (inclu:have no manager).


-- question 8. Create a query that displays employees last name department number,and all the employees who work in the same department as a given‘employee.
select E.last_name , D.department_name, count(E.department_id) from employees as E inner join departments as D on E.department_id = D.department_id group by D.department_name;

-- question 9, Create a query that displays the name ,job,department name ,salary,grade for all employees.Derive grade based on salary(>=50000=A,-30000-B,<30000-C)
select E.first_name ,  J.job_title, D.department_name , E.salary , if(E.salary >= 50000, "A" , if( E.salary > 30000 , "B" , if(E.salary < 30000 , "C",null))) as grade
from employees as E inner join departments as D 
on E.department_id = D.department_id
inner join jobs as J 
on E.job_id = J.job_id;

-- question 10. Display the names and hire date for all employees who were hired before their managers along withe their manager names and hire date.Label the columns as Employee name , emp |. date,manager nameyman _hire_date


