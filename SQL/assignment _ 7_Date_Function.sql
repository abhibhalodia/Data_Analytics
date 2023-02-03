/* question 1) Find the date difference between the hire_date and resignation_date for all the employees. Display in no. of days, months and year(1 year 3 months 5 days).

Emp_ID Hire Date Resignation Date
1/1/2000 7/10/2013
4/12/2003 3/8/2017
22/9/2012 21/6/2015
13/4/2015 NULL

3/06/2016 NULL

(08/08/2017 NULL
13/11/2016 NULL

Noo hw ne*/
 select concat(timestampdiff(year,registration_date,hire_date),' year ',timestampdiff(month,registration_date,hire_date),' months ',
  timestampdiff(day,registration_date,hire_date),' days') as difference from employees;
-- question 2) Format the hire_date as _mm/dd/yyyy(09/22/2003) and resignation_date as mon da, yyyy(Aug 12th, 2004), Display the null as (DEC, 01th 1900)
select employee_id,date_format(hire_date,'%m/%d/%Y') as updated_hire_date,date_format(registration_date,'%b %D, %Y') 
as updated_registration_date from employees;

/* question 3) Calcuate experience of the employee till date in Years and months(example 1 year and 3 months)
Use Getdate) as input date for the below three questions.*/
select concat(timestampdiff(year,hire_date,curdate()),' year',' ', 'and',' ', timestampdiff(month,hire_date,curdate()),' months')  as experience from employees ;

-- question 4) Display the count of days in the previous quarter

-- question 5) Fetch the previous Quarter’s second week's frst day's date

-- question 6 Fetch the financial year's 15th week's dates (Format: Mon DD YYYY)

-- question 7) Find out the date that corresponds to the last Saturday of January, 2015 using with clause. Use Airport database for the below two question:

-- question 8) Find the number of days elapsed between first and last flights of a passenger.

-- question 9) Find the total duration in minutes and in seconds of the flight from Rostov to Moscow.
