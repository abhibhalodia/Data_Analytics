-- question 1.Write a query to display the last name and hire date of any employee in the same department as SALES.
select E.last_name, E.hire_date from employees as E inner join departments as D on E.department_id = D.department_id where department_name = 'sales';

-- question 2. Create a query to display the employee numbers and last names of all employees who eamn more than the average salary. Sort the results in ascending order of salary.
select employee_id , last_name  from employees where salary > (select avg(salary) from employees ) order by salary;

-- question 3. White a query that displays the employee numbers and last names of all employees who work in department with any employee whose last name contains a" u
SELECT employee_id, last_name FROM employees WHERE department_id IN (SELECT department_id FROM employees WHERE last_name like '%u%');

-- question 4. Display the last name, department number, and job ID of all employees whose department location is ATLANTA.
SELECT E.employee_id, E.last_name , E.job_id FROM employees as E 
inner join departments as D 
on E.department_id = D.department_id 
inner join locations as L 
on D.location_id = L.location_id 
where L.city = "atlanta";

-- question 5. Display the last name and salary of every employee who reports to FILLMORE.
select last_name, salary from employees where manager_id = (select employee_id from employees where last_name = 'king');

-- question 6. Display the department number, last name, and job ID for every employee in the OPERATIONS department.
select E.employee_id, E.last_name , E.job_id FROM employees as E inner join  departments  on E.department_id = departments.department_id where department_name = "operations";

/* question 7.Modify the above query to display the employee numbers, last names, and salaries of all employees who earn more than the average salary and who work in a
department with any employee with a ‘u’in their name.*/
select employee_id,first_name,last_name from employees where department_id in (select department_id from employees where last_name like '%ts%') 
and salary > (select avg(salary) from employees);

-- question 8. Display the names of all employees whose job title is the same as anyone in the sales dept.
select first_name  from employees where job_id in (select job_id from jobs  where job_title  like "sales%");

/* question 9. write @ compound query to produce a list of employees showing raise percentages, employee IDs, and salaries. Employees in department 1 and 3 are glven a 5% raise,
employees in department 2 are given a 10% raise, employees in departments 4 and § are given a 15% raise, and employees in department 6 are not given a raise.*/
select employee_id,salary,salary * 0.05 as new_salary from employees where department_id in (1,3) union
select employee_id,salary,salary * 0.1 as new_salary from employees where department_id in (2) union
select employee_id,salary,salary * 0.15 as new_salary from employees where department_id in (4,5) union
select employee_id,salary,salary as new_salary from employees where department_id in (6);


-- question 10. Write a query to display the top three earners in the EMPLOYEES table. Display their last names and salaries.
select * from employees order by salary desc limit 3 ;

-- question 11. Display the names of all employees with their salary and commission earned. Employees with a null commission should have 0 in the commission column
select first_name from employees where salary > 0 and commission > 0;

-- question 12. Display the Managers (name) with top three salaries along with their salaries and department information.
select manager_id from employees  order by Salary desc limit 3;