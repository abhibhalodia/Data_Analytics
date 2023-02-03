/* question 1. Write a query that displays the employee's last names only from the string's 2-5th position with the first letter capitalized and all other letters Lowercase, Give
each column an appropriate label.*/
Select CONCAT(UPPER(SUBSTRING(last_name,2,1)),LOWER(SUBSTRING(last_name,3,3))) AS appropriate_label from employees;

/* question 2. Write a query that displays the employee's first name and last name along with a“ in between for e..: frst name : Ram ; last name : Kumar then Ram-Kumar.
Also displays the month on which the employee has joined.*/
select first_name , last_name,month(hire_date) as joined_month from employees where mid(first_name,2,(length(first_name)-1)) like '%a%' and  mid(last_name,2,(length(last_name)-1))like '%a%';

/* question 3, Write a query to display the employee's last name and if half of the salary is greater than ten thousand then increase the salary by 10% else by 11.5% along
with the bonus amount of 1500 each. Provide each column an appropriate label.*/
select last_name , round(if((salary/2) >= 10000,(salary +((salary * 10)/100)),(salary +((salary * 11.5)/100) + 1500)),2) as new_salary from employees;

/* question 4. Display the employee ID by Appending two zeros after 2nd digit and ‘£' in the end, department id, salary and the manager name all in Upper case, ifthe
Manager name consists of '' replace it with’S:*/
select employee_id,concat(insert(employee_id,3,0,'00'),'-E') as new_employee_id,department_id,salary,manager_id from employees ;

/* question 5. Write a query that displays the employee's last names with the first letter capitalized and all other letters lowercase, and the length of the names, for all
‘employees whose name starts with J, A, or M. Give each column an appropriate label, Sort the results by the employees’ last names*/
select first_name,concat(upper(substring(last_name,1,1)),lower(substring(last_name,2))) as last_name,length(first_name) as len_of_name
from employees where first_name like 'J%' or first_name like 'A%' or first_name like 'M%' order by last_name;


-- question 6. Greate a query to display the last name and salary for all employees. Format the salary to be 15 characters long, lef-padded with $. Label the column SALARY
select first_name,last_name,salary,lpad(salary,15,'$') as new_salary from employees;

-- question 7. Display the employee's name if itis a palindrome
SELECT SUBSTRING(first_name,1) from employees where REVERSE (SUBSTRING(first_name,1))=SUBSTRING(first_name,1);

-- question 8. Display First names of all employees with initcaps.
select concat(upper(substring(first_name,1,1)), lower(substring(first_name,2))) as first_name from employees;

-- question 9. From LOCATIONS table, extract the word between first and second space from the STREET_ADDRESS column.
select street_address,substring_index(street_address,' ',2) as new_address from locations;

/* question 10. Extract first letter from First_Name column and append it with the Last Name. Also add “@systechusa.com’” at the end. Name the column as e-mail address. All
characters should be in Lower case. Display this along with their FirstName.*/
select first_name,lower(concat(lower(substring(first_name,1,1)),last_name, "@systechusa@gmail.com")) as email_address from employees;

-- question 11. Display the names and job titles of all employees with the same job as Trenna,
select employees.first_name,jobs.job_title from employees inner join jobs on employees.job_id = jobs.job_id where job_title = 'sales manager';

-- question 12. Display the names and department name of all employees working in the same city as Trenna,
select E.first_name , D.department_name from employees as E inner join departments as D on E.department_id = D.department_id 
inner join locations as L on D.location_id = L.location_id
group by L.city ;


-- question 13. Display the name of the employee whose salary is the lowest.
select first_name from employees order by salary desc limit 1 ;

-- question 14. Display the names of all employees except the lowest paid.
select first_name from employees order by salary desc limit 1 ;
