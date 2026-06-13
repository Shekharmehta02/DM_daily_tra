use sm;

CREATE TABLE employee_salary_report (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    city VARCHAR(30),
    job_role VARCHAR(40),
    salary INT,
    bonus INT,
    deduction INT,
    age INT,
    experience_years INT,
    project_count INT,
    working_hours INT,
    performance_score INT,
    joining_year INT,
    status VARCHAR(20)
);

INSERT INTO employee_salary_report VALUES
(101, 'Amit', 'IT', 'Pune', 'Developer', 55000, 5000, 2000, 28, 4, 3, 160, 82, 2021, 'Active'),
(102, 'Neha', 'HR', 'Mumbai', 'HR Executive', 42000, 3000, 1500, 30, 5, 2, 150, 76, 2020, 'Active'),
(103, 'Rahul', 'Finance', 'Delhi', 'Analyst', 60000, 7000, 2500, 32, 6, 4, 170, 88, 2019, 'Active'),
(104, 'Priya', 'IT', 'Pune', 'Tester', 48000, 4000, 1800, 26, 3, 2, 145, 79, 2022, 'Active'),
(105, 'Karan', 'Sales', 'Nagpur', 'Sales Executive', 35000, 2000, 1000, 25, 2, 1, 135, 68, 2023, 'Inactive'),
(106, 'Sneha', 'Finance', 'Mumbai', 'Accountant', 52000, 4500, 1600, 29, 4, 3, 155, 81, 2021, 'Active'),
(107, 'Vikas', 'IT', 'Bangalore', 'Developer', 75000, 8000, 3000, 35, 8, 5, 180, 91, 2018, 'Active'),
(108, 'Anjali', 'HR', 'Pune', 'Recruiter', 39000, 2500, 1200, 27, 3, 2, 140, 72, 2022, 'Inactive'),
(109, 'Rohit', 'Sales', 'Delhi', 'Manager', 68000, 6000, 2200, 34, 9, 4, 175, 86, 2017, 'Active'),
(110, 'Meera', 'Finance', 'Mumbai', 'Manager', 82000, 9000, 3500, 38, 10, 6, 190, 94, 2016, 'Active'),
(111, 'Suresh', 'IT', 'Pune', 'Support', 30000, 1500, 800, 24, 1, 1, 130, 65, 2024, 'Active'),
(112, 'Pooja', 'Sales', 'Bangalore', 'Sales Executive', 37000, 2200, 900, 26, 2, 2, 138, 70, 2023, 'Active'),
(113, 'Nitin', 'HR', 'Delhi', 'Manager', 72000, 7500, 2800, 36, 11, 5, 185, 89, 2015, 'Active'),
(114, 'Riya', 'IT', 'Mumbai', 'Developer', 64000, 6500, 2100, 31, 6, 4, 168, 84, 2020, 'Inactive'),
(115, 'Manish', 'Finance', 'Pune', 'Analyst', 58000, 5500, 1900, 33, 7, 3, 165, 83, 2019, 'Active');

# ✅ 150 SQL Practice Questions

## Arithmetic Operations + Aggregate Functions + `GROUP BY` + `WHERE` + `HAVING`

---

## A. Arithmetic Operations Without Grouping

#1. Display employee name, salary, bonus, deduction, and net salary using salary plus bonus minus deduction.
Select emp_name , salary , bonus,deduction ,(salary+bonus- deduction) as net_salary from employee_salary_report;

#2. Display employee name and annual salary.
Select emp_name , salary, (salary*12) as annual_salary from employee_salary_report;

#3. Display employee name and annual bonus.
Select emp_name , (bonus*12) as annual_bonus from employee_salary_report;

#4. Display employee name and annual deduction.
Select emp_name , ( deduction*12) as annual_deduction from employee_salary_report;

#5. Display employee name and annual net income using salary, bonus, and deduction.
 Select emp_name , ((salary+ bonus+ deduction)*12) as net_income from employee_salary_report;

#6. Display employee name and salary after 10% increment.
 Select emp_name ,salary, (salary+salary*10/100) as Update_salary from employee_salary_report;

#7. Display employee name and salary after 15% increment.
 Select emp_name ,salary, (salary+salary*15/100) as Update_salary from employee_salary_report;

#8. Display employee name and salary after 20% increment.
 Select emp_name ,salary, (salary+salary*20/100) as Update_salary from employee_salary_report;

#9. Display employee name and salary after 10% deduction.
 Select emp_name ,salary, (salary-salary*10/100) as Update_salary from employee_salary_report;

#10. Display employee name and salary after 15% deduction.
 Select emp_name ,salary, (salary-salary*15/100) as Update_salary from employee_salary_report;

#11. Display employee name and bonus after 10% increase.
 Select emp_name ,bonus, (bonus+bonus*10/100) as Update_bonus from employee_salary_report;

#12. Display employee name and deduction after 10% increase.
 Select emp_name ,deduction, (deduction+deduction*10/100) as Update_deduction from employee_salary_report;

#13. Display employee name and total monthly income using salary plus bonus.
 Select emp_name , (salary+bonus) as total_monthly_income from employee_salary_report;

#14. Display employee name and remaining salary after deduction.
 Select emp_name , (salary-deduction) as remaining_salary from employee_salary_report;

#15. Display employee name and remaining bonus after deduction.
 Select emp_name , (bonus-deduction) as remaining_bonus from employee_salary_report;

#16. Display employee name and salary per working hour.
 Select emp_name , salary ,(salary /working_hours) as salary_per_hour from employee_salary_report;

#17. Display employee name and bonus per project.
 Select emp_name  ,(bonus /project_count) as bonus_par_project from employee_salary_report;

#18. Display employee name and salary per project.
 Select emp_name ,salary ,(salary /project_count) as salary_par_project from employee_salary_report;

#19. Display employee name and deduction per project.
 Select emp_name  ,(deduction /project_count) as deduction_par_project from employee_salary_report;

#20. Display employee name and performance score per experience year.
 Select emp_name  ,(performance_score /experience_years) as performance_score_par_experience_years from employee_salary_report;
---
## B. Arithmetic Operations with `WHERE`

#1. Display employees whose net salary is greater than 60000.
 Select *from employee_salary_report
 where (salary+bonus)>60000;

#2. Display employees whose net salary is less than 45000.
Select *from employee_salary_report
 where (salary+bonus)< 45000;

#3. Display employees whose annual salary is greater than 700000.
Select *from employee_salary_report
 where (salary*12)>700000;

#4. Display employees whose annual net income is greater than 750000.
Select *from employee_salary_report
 where (salary*12+bonus*12)>750000;
 
#5. Display employees whose annual bonus is greater than 60000.
Select *from employee_salary_report
 where (bonus*12)>60000;

#6. Display employees whose annual deduction is less than 25000.
Select *from employee_salary_report
 where (deduction*12)<25000;
 
#7. Display employees whose salary after 10% increment is greater than 70000.
Select *from employee_salary_report
 where (salary+salary*10/100)>70000;
 
#8. Display employees whose salary after 15% increment is greater than 80000.
Select *from employee_salary_report
 where (salary+salary*15/100)>80000;

#9. Display employees whose salary after 10% deduction is less than 45000.
Select *from employee_salary_report
 where (salary-salary*10/100)<45000;
 
#10. Display employees whose salary after 20% deduction is less than 40000.
Select *from employee_salary_report
 where (salary-salary*20/100)<40000;

#11. Display employees whose bonus after 20% increment is greater than 7000.
Select *from employee_salary_report
 where (bonus+bonus*20/100)>7000;

#12. Display employees whose deduction after 10% increment is less than 2500.
Select *from employee_salary_report
 where (deduction+deduction*10/100)<2500;
 
#13. Display employees whose salary plus bonus is greater than 70000.
Select *from employee_salary_report
 where (salary+bonus)>70000;
 
#14. Display employees whose salary minus deduction is less than 50000.
Select *from employee_salary_report
 where (salary-deduction)<50000;
 
#15. Display employees whose bonus minus deduction is greater than 3000.
Select *from employee_salary_report
 where (bonus-deduction)>3000;
 
#16. Display employees whose salary divided by age is greater than 1800.
Select *from employee_salary_report
 where (salary/age)>1800;
 
#17. Display employees whose bonus divided by experience years is greater than 1000.
Select *from employee_salary_report
 where (bonus/ experience_years)>1000;
 
#18. Display employees whose salary divided by project count is greater than 15000.
Select *from employee_salary_report
 where (salary/ project_count)>15000;
 
#19. Display employees whose working hours multiplied by performance score is greater than 15000.
Select *from employee_salary_report
 where (working_hours * performance_score)>15000;
 
#20. Display employees whose experience years multiplied by project count is greater than 20.
Select *from employee_salary_report
 where (experience_years  * project_count)>20;
---

## C. Basic Aggregate Functions

#1. Count total employees.
select count(emp_name) from employee_salary_report;

#2. Count total active employees.
select count(emp_name) from employee_salary_report
where status = 'active';

#3. Count total inactive employees.
select count(emp_name) from employee_salary_report
where status = 'Inactive';

#4. Find total salary of all employees.
select sum(salary) from employee_salary_report;

#5. Find total bonus of all employees.
select sum(bonus) from employee_salary_report;

#6. Find total deduction of all employees.
select sum(deduction) from employee_salary_report;

#7. Find total working hours of all employees.
select sum(working_hours) from employee_salary_report;

#8. Find total project count of all employees.
select sum(project_count) from employee_salary_report;

#9. Find average salary of all employees.
select avg(salary) from employee_salary_report;

#10. Find average bonus of all employees.
select avg(bonus) from employee_salary_report;

#11. Find average deduction of all employees.
select avg(deduction) from employee_salary_report;

#12. Find average age of all employees.
select avg(age) from employee_salary_report;

#13. Find average experience years of all employees.
select avg(experience_years) from employee_salary_report;

#14. Find average working hours of all employees.
select avg(working_hours) from employee_salary_report;

#15. Find average performance score of all employees.
select avg(performance_score) from employee_salary_report;

#16. Find minimum salary among all employees.
select min(salary) from employee_salary_report;

#17. Find minimum bonus among all employees.
select min(bonus) from employee_salary_report;

#18. Find minimum deduction among all employees.
select min(deduction) from employee_salary_report;

#19. Find minimum age among all employees.
select min(age) from employee_salary_report;

#20. Find minimum performance score among all employees.
select min(performance_score) from employee_salary_report;

#21. Find maximum salary among all employees.
select max(salary) from employee_salary_report;

#22. Find maximum bonus among all employees.
select max(bonus) from employee_salary_report;

#23. Find maximum deduction among all employees.
select max(deduction) from employee_salary_report;

#24. Find maximum experience years among all employees.
select max(experience_years) from employee_salary_report;

#25. Find maximum performance score among all employees.
select max(performance_score) from employee_salary_report;


---

## D. Aggregate Functions with `GROUP BY`

#1. Display department-wise employee count.
select department, count(*) from employee_salary_report
group by department;

#2. Display city-wise employee count.
select city, count(*) from employee_salary_report
group by city;

#3. Display job-role-wise employee count.
select job_role, count(*) from employee_salary_report
group by job_role;

#4. Display status-wise employee count.
select status, count(*) from employee_salary_report
group by status;

#5. Display joining-year-wise employee count.
select joining_year, count(*) from employee_salary_report
group by joining_year;

#6. Display department-wise total salary.
select department, sum(salary) from employee_salary_report
group by department;

#7. Display department-wise total bonus.
select department, sum(bonus) from employee_salary_report
group by department;

#. Display department-wise total deduction.
select department, sum(deduction) from employee_salary_report
group by department;

#9. Display department-wise total net salary.
select department, sum(salary+bonus) from employee_salary_report
group by department;

#10. Display city-wise total salary.
select city, sum(salary) from employee_salary_report
group by city;

#11. Display city-wise total bonus.
select city, sum(bonus) from employee_salary_report
group by city;

#12. Display city-wise total deduction.
select city, sum(deduction) from employee_salary_report
group by city;

#13. Display city-wise total net salary.
select city, sum(salary + bonus) from employee_salary_report
group by city;

#14. Display job-role-wise total salary.
select job_role, sum(salary) from employee_salary_report
group by job_role;

#15. Display job-role-wise total bonus.
select job_role, sum(bonus) from employee_salary_report
group by job_role;

#16. Display status-wise total salary.
select status, sum(salary) from employee_salary_report
group by status;

#17. Display status-wise total bonus.
select status, sum(bonus) from employee_salary_report
group by status;

#18. Display department-wise average salary.
select department, avg(salary) from employee_salary_report
group by department;

#19. Display department-wise average bonus.
select department, avg(bonus) from employee_salary_report
group by department;

#20. Display department-wise average deduction.
select department, avg(deduction) from employee_salary_report
group by department;

#21. Display city-wise average salary.
select city, avg(salary) from employee_salary_report
group by city;

#22. Display city-wise average bonus.
select city, avg(bonus) from employee_salary_report
group by city;

#23. Display job-role-wise average salary.
select job_role, avg(salary) from employee_salary_report
group by job_role;

#24. Display status-wise average salary.
select status, avg(salary) from employee_salary_report
group by status;

#25. Display joining-year-wise average salary.
select joining_year, avg(salary) from employee_salary_report
group by joining_year;
---

## E. `MIN()` and `MAX()` with `GROUP BY`

#1. Display department-wise minimum salary.
select department, min(salary) from employee_salary_report
group by department;

#2. Display department-wise maximum salary.
select department, max(salary) from employee_salary_report
group by department;

#3. Display city-wise minimum salary.
select city, min(salary) from employee_salary_report
group by city;

#4. Display city-wise maximum salary.
select city, max(salary) from employee_salary_report
group by city;

#5. Display job-role-wise minimum salary.
select job_role, min(salary) from employee_salary_report
group by job_role;

#6. Display job-role-wise maximum salary.
select job_role, max(salary) from employee_salary_report
group by job_role;

#7. Display status-wise minimum salary.
select status, min(salary) from employee_salary_report
group by status;

#8. Display status-wise maximum salary.
select status, max(salary) from employee_salary_report
group by status;

#9. Display department-wise minimum bonus.
select department, min(bonus) from employee_salary_report
group by department;

#10. Display department-wise maximum bonus.
select department, max(bonus) from employee_salary_report
group by department;

#11. Display city-wise minimum bonus.
select city, min(bonus) from employee_salary_report
group by city;

#12. Display city-wise maximum bonus.
select city, max(bonus) from employee_salary_report
group by city;

#13. Display department-wise minimum deduction.
select department, min(deduction) from employee_salary_report
group by department;

#14. Display department-wise maximum deduction.
select department, max(deduction) from employee_salary_report
group by department;

#15. Display department-wise minimum performance score.
select department, min(performance_score) from employee_salary_report
group by department;

#6. Display department-wise maximum performance score.
select department, max(performance_score) from employee_salary_report
group by department;

#17. Display city-wise minimum working hours.
select department, min(working_hours) from employee_salary_report
group by department;

#18. Display city-wise maximum working hours.
select department, max(working_hours) from employee_salary_report
group by department;

#19. Display job-role-wise minimum experience years.
select job_role, min(experience_years) from employee_salary_report
group by job_role;

#20. Display job-role-wise maximum experience years.
select job_role, max(experience_years) from employee_salary_report
group by job_role;
---

## F. Aggregate Functions with `WHERE` + `GROUP BY`

#1. Display department-wise total salary for active employees only.
select department, sum(salary) from employee_salary_report
where status in ('active')
group by department;

#2. Display department-wise total bonus for active employees only.
select department, sum(bonus) from employee_salary_report
where status in ('active')
group by department;

#3. Display department-wise total deduction for inactive employees only.
select department, sum(deduction) from employee_salary_report
where status in ('active')
group by department;

#4. Display city-wise average salary for active employees only.
select city, avg(salary) from employee_salary_report
where status in ('active')
group by city;

#5. Display city-wise average bonus for inactive employees only.
select city, avg(bonus) from employee_salary_report
where status in ('Inactive')
group by city;

#6. Display department-wise employee count for employees whose salary is greater than 50000.
#7. Display city-wise employee count for employees whose bonus is greater than 5000.
#8. Display department-wise total salary for employees who joined after 2020.
#9. Display city-wise total bonus for employees who joined before 2020.
#10. Display department-wise average performance score for active employees only.
#11. Display city-wise maximum salary for active employees only.
#12. Display department-wise minimum salary for inactive employees only.
#13. Display job-role-wise average salary for employees from Pune city.
#14. Display department-wise total working hours for employees from Mumbai city.
#15. Display status-wise total salary for employees from IT and Finance departments.

---

## G. Aggregate Functions with `GROUP BY` + `HAVING`

#1. Display departments having more than 3 employees.
#2. Display cities having more than 2 employees.
#3. Display job roles having more than 1 employee.
#4. Display departments whose total salary is greater than 200000.
#5. Display departments whose total bonus is greater than 20000.
#6. Display departments whose total deduction is greater than 8000.
#7. Display cities whose total salary is greater than 150000.
#8. Display cities whose total bonus is greater than 15000.
#9. Display job roles whose average salary is greater than 60000.
#10. Display departments whose average salary is greater than 55000.
#11. Display cities whose average salary is greater than 50000.
#12. Display departments whose minimum salary is greater than 35000.
#13. Display departments whose maximum salary is greater than 75000.
#14. Display cities whose maximum bonus is greater than 7000.
#15. Display statuses whose total salary is greater than 500000.

---

## H. `WHERE` + `GROUP BY` + `HAVING`

#1. Display departments having more than 2 active employees.
#2. Display cities having more than 1 active employee.
#3. Display departments whose active employee total salary is greater than 200000.
#4. Display cities whose active employee total bonus is greater than 10000.
#5. Display departments whose active employee average salary is greater than 55000.
#6. Display cities whose active employee maximum salary is greater than 70000.
#7. Display job roles having more than 1 employee from IT department.
#8. Display departments whose total net salary is greater than 200000 for active employees.
#9. Display cities whose average net salary is greater than 50000 for active employees.
#10. Display departments whose maximum salary after 10% increment is greater than 90000 for active employees.