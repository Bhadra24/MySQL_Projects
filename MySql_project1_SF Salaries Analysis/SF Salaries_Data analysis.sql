create database data_new;
use data_new;

-- 1	Show all columns and rows in the table.
select*from salaries;

-- 2	Show only the EmployeeName and JobTitle columns.
select EmployeeName,JobTitle from salaries;

-- 3	Show the number of employees in the table.
select count(*) from salaries;

-- 4	Show the unique job titles and count the unique jobtitle in the table.
select distinct JobTitle from salaries;
select count(distinct JobTitle) from salaries;

-- 5	Show the job title and overtime pay for all employees with overtime pay greater than 50000.
select JobTitle,OvertimePay from salaries where OvertimePay > 50000;

-- 6	Show the average base pay for all employees.
select avg(BasePay) as "AVG BasePay" from salaries;

-- 7	Show the top 10 highest paid employees.
select EmployeeName,TotalPay from salaries order by TotalPay desc limit 10; 

-- 8	Show the average of BasePay, OvertimePay, and OtherPay for each employee:
select EmployeeName, (BasePay+ OvertimePay+ OtherPay)/3 as "Avg_BP_OP_otherpay" from salaries;

-- 9	Show all employees who have the word "Manager" in their job title.
select EmployeeName, JobTitle from salaries where JobTitle like "%Manager%" ;

-- 10	Show all employees with a job title not equal to "Manager".
select EmployeeName, JobTitle from salaries where JobTitle !="Manager" ;

-- 11	Show all employees with a total pay between 50,000 and 75,000.
select * from salaries where TotalPay>=50000 and TotalPay<=75000 ;
select * from salaries where TotalPay between 50000 and 75000 ;

-- 12	Show all employees with a base pay less than 50,000 or a total pay greater than 100,000.
select * from salaries where BasePay<50000 or TotalPay>100000 ;

-- 13	Show all employees with a total pay benefits value between 125,000 and 150,000 and a job title containing the word "Director".
select * from salaries where TotalPayBenefits between 125000 and 150000 and  JobTitle like "%Director%" ;

-- 14	Show all employees ordered by their total pay benefits in descending order.
select * from salaries order by TotalPayBenefits desc ;

-- 15	Show all job titles with an average base pay of 
-- at least 100,000 and order them by the average base pay in descending order.
select JobTitle, avg(BasePay) as "Avgbasepay" from salaries group by JobTitle having avg(BasePay)>=100000 order by Avgbasepay desc ;

-- 16	Delete the column.
select * from salaries;
alter table salaries drop column Notes;

-- 17	Update the base pay of all employees with the job title containing "Manager" by increasing it by 10%.
SET SQL_SAFE_UPDATES = 0;
UPDATE salaries 
SET BasePay = BasePay * 1.1 
WHERE JobTitle LIKE "%Manager%";
SET SQL_SAFE_UPDATES = 1;

select*from salaries;

-- 18	Delete all employees who have no OvertimePay.
select count(*) from salaries where OvertimePay=0;
SET SQL_SAFE_UPDATES = 0;
delete from salaries where OvertimePay=0;


