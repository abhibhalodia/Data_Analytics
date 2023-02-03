use assingment_work;
-- assignment_1 basic 

-- QUESTION_1  Display all information in the tables EMP and DEPT.
select * from employees;
select * from departments;

-- QUESTION_2 Display only the hire date and employee name for each employee.
select hire_date , first_name from employees;

-- QUESTION_3  Display the 'name concatenated with the job ID. separated by a comma and space. and name the column Employee and Title 
select concat(first_name,', ',job_id) as Employee_and_titel from employees;

-- QUESTION_4  Display the ire date, name and deparoment number for al clerks
select hire_date , first_name , department_id from employees where department_id in (select department_id from departments where department_name = "clirks");

-- QUESTION_5 Create a query to daplay all he data rom the EMP table Separate eath column by 2 comma, Name the column THE_OUTPUT

select concat(employee_id,',',first_name,',',last_name,',',email,',',phone_number,',',hire_date,',',job_id,',',salary,',',manager_id,',',department_id) as THE_OUTPUT from employees;

-- QUESTION_6 Display the names and saris of ll employee with 2slary reser than 2000,

select 	first_name , salary from employees where salary >= 2000;

-- QUESTION_7 ‘Display the names and dates of employees with he columa heeders"Name" and “Sar Date"

select first_name as Name , hire_date as start_date  from employees ;

-- QUESTION_8 Display the names and hire dates ofall employees inthe order they were hired

select first_name , hire_date from employees order by hire_date;

-- QUESTION_9 Display the names and saris of ll employes in reverse slay order.
select first_name , salary from employees order by salary desc;

-- QUESTION_10 Display name’ anc cept’ who are all ennas commision an cepay salary in ease orca
select first_name,  department_id from employees where commission >= 0 order by salary desc;

-- QUESTION_11 Display telat name ang jo tle of all erpioyass who go net have # manager
select last_name , job_id from employees where manager_id = null;
select * from departments ;

-- QUESTION_12 Display the lastname, ob and salary forall employees whose obs sales representative or stock clerk and whos salary snot equal to $2,500, $3500, $5,000
select last_name, job_id, salary from employees where department_id in (select department_id from departments where department_name = 'Sales') and salary not in (2500 ,3500 ,3000);

