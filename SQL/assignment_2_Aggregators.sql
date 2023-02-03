-- question 1) Display the maximum, minimum and average salary and commission earned.
select max(salary), min(salary) , avg(salary) , avg(commission) from employees;

-- question 2). Display the department number, total salary payout and total commission payout for each department.
select department_id, sum(salary) , sum(commission) from employees group by department_id;

-- question 3) Display the department number and number of employees in each department.
select department_id, count(employee_id) from employees group by department_id;

-- question 4) Display the department number and total salary of employees in each department.
select department_id, sum(salary) from employees group by department_id;

-- question 5) Display the employee's name who doesn't eam a commission. Order the result set without using the column name
select first_name from employees where commission != 0 order by 1;

/*question 6) Display the employees name, department id and commission. If an Employee doesn‘ earn the commission, then display as 'No commission: Name the columns
appropriately*/
select first_name , department_id , if (commission = 0 , 'No commission' , commission) as appropriately from employees ;

/* question 7) Display the employee's name, salary and commission multiplied by 2. if an Employee doesn't earn the commission, then display as'No commission. Name the
columns appropriately*/
select first_name , salary , (commission * 2) as commission , if (commission = 0 , 'No commission' , commission) as appropriately from employees ;

-- question 8) Display the employee's name, department id who have the first name same as another employee in the same department
select first_name,last_name,department_id from employees where first_name in(select first_name from employees having 
count(first_name) > 1) ;


-- question 9) Display the sum of salaries of the employees working under each Manager.
select manager_id , sum(salary) from employees group by manager_id order by department_id ;


-- question 10) Select the Managers name, the count of employees working under and the department ID of the manager.
select manager_id,department_id,count(first_name) as no_of_employees_workin_under_particular_manager from employees 
group by manager_id;


-- question 11) Select the employee name, department id, and the salary. Group the result with the manager name and the employee last name should have second letter ‘a
-- select first_name , department_id , salary 
select first_name,last_name,department_id,salary,manager_id from employees where last_name like '_a%' group by manager_id;

-- question 12) Display the average of sum of the salaries and group the result with the department id. Order the result with the department id.
select avg(salary) , sum(salary) from employees  group by department_id ;

-- question 13) Select the maximum salary of each department along with the department id
select max(salary), department_id from employees group by department_id;
 
-- question 14) Display the commission, if not null display 10% of salary, if null display a default value 1 
select if(commission > 0 , ((salary * 10)/100) ,if(commission = 0 , 1,1)) as commission from employees;


