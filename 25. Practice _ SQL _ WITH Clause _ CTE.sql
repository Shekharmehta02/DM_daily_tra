use sm;

CREATE TABLE employee_cte_practice (
    emp_id INT,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    city VARCHAR(50),
    job_role VARCHAR(50),
    salary INT,
    bonus INT,
    experience_years INT,
    performance_score INT,
    project_count INT,
    status VARCHAR(20),
    joining_year INT
);

INSERT INTO employee_cte_practice VALUES
(101, 'Amit Sharma', 'IT', 'Pune', 'Data Engineer', 65000, 5000, 4, 82, 3, 'Active', 2021),
(102, 'Neha Patil', 'HR', 'Mumbai', 'HR Executive', 42000, 3000, 5, 76, 2, 'Active', 2020),
(103, 'Rahul Mehta', 'Finance', 'Delhi', 'Analyst', 58000, 4500, 6, 88, 4, 'Active', 2019),
(104, 'Priya Nair', 'IT', 'Pune', 'Python Developer', 72000, 7000, 3, 79, 2, 'Active', 2022),
(105, 'Karan Singh', 'Sales', 'Nagpur', 'Sales Executive', 36000, 2500, 2, 68, 1, 'Inactive', 2023),
(106, 'Sneha Rao', 'HR', 'Mumbai', 'HR Manager', 75000, 8000, 8, 90, 4, 'Active', 2018),
(107, 'Vikas Jain', 'Sales', 'Bangalore', 'Sales Manager', 82000, 9000, 9, 91, 5, 'Active', 2017),
(108, 'Meera Joshi', 'Finance', 'Delhi', 'Finance Manager', 88000, 9500, 10, 94, 6, 'Active', 2016),
(109, 'Divya Mehta', 'IT', 'Pune', 'Data Analyst', 60000, NULL, 5, 84, 3, 'Active', 2021),
(110, 'Riya Kapoor', 'Marketing', 'Hyderabad', 'Marketing Executive', 39000, 2000, 2, 70, 1, 'Inactive', 2023);

## A. Basic CTE Questions

#1. Create a CTE to display all employees.
with cte as (select * from employee_cte_practice)

select* from cte ;

#2. Create a CTE to display only Active employees.
with cte as (select * from employee_cte_practice 
where status ='active')

select* from cte ;

#3. Create a CTE to display only Inactive employees.
with cte as (select * from employee_cte_practice 
where status ='Inactive')

select* from cte ;

#4. Create a CTE to display employees from IT department.
with cte as (select * from employee_cte_practice 
where department ='it')

select* from cte ;

#5. Create a CTE to display employees from Finance department.
with cte as (select * from employee_cte_practice 
where department ='Finance')

select* from cte ;

#6. Create a CTE to display employees from Pune city.
with cte as (select * from employee_cte_practice 
where city ='pune')

select* from cte ;

#7. Create a CTE to display employees from Mumbai city.
with cte as (select * from employee_cte_practice 
where city ='Mumbai')

select* from cte ;

#8. Create a CTE to display employees whose salary is greater than 60000.
with cte as (select * from employee_cte_practice 
where salary >60000)

select* from cte ;

#9. Create a CTE to display employees whose bonus is greater than 5000.
with cte as (select * from employee_cte_practice 
where bonus >5000)

select* from cte ;

#10. Create a CTE to display employees whose performance score is greater than 80.
with cte as (select * from employee_cte_practice 
where performance_score >80)

select* from cte ;
---

## B. CTE with Selected Columns

#1. Create a CTE to display employee id, employee name, and department.
with cte as (select emp_id, emp_name, department from employee_cte_practice 
)

select* from cte ;

#2. Create a CTE to display employee name, salary, and bonus.
with cte as (select emp_name,salary,bonus from employee_cte_practice 
)

select* from cte ;

#3. Create a CTE to display employee name, city, and status.
with cte as (select emp_name,city,status from employee_cte_practice 
)

select* from cte ;

#4. Create a CTE to display employee name, job role, and experience years.
with cte as (select emp_name,job_role,experience_years from employee_cte_practice 
)

select* from cte ;

#5. Create a CTE to display employee name, performance score, and project count.
with cte as (select emp_name,performance_score,project_count from employee_cte_practice 
)

select* from cte ;

#6. Create a CTE to display employee name and joining year.
with cte as (select emp_name,joining_year from employee_cte_practice 
)

select* from cte ;

#7. Create a CTE to display employee name and salary only for Active employees.
with cte as (select emp_name,salary from employee_cte_practice 
where status = 'active'
)

select* from cte ;

#8. Create a CTE to display employee name and bonus only for IT employees.
with cte as (select emp_name,bonus from employee_cte_practice 
where department = 'it'
)

select* from cte ;

#9. Create a CTE to display employee name and performance score only for Finance employees.
with cte as (select emp_name,performance_score from employee_cte_practice 
where department = 'Finance'
)

select* from cte ;

#10. Create a CTE to display employee name and city only for employees with salary above 70000.
with cte as (select emp_name,city from employee_cte_practice 
where salary > 70000
)

select* from cte ;
---

## C. CTE with Arithmetic Calculations

#1. Create a CTE to calculate total income using salary plus bonus.
with cte as (select emp_name , (salary + bonus) as total_income from employee_cte_practice 
)
select* from cte ;

#2. Create a CTE to calculate total income using salary plus `COALESCE(bonus, 0)`.
with cte as (select emp_name , salary+ COALESCE( bonus, 0) as total_income from employee_cte_practice 
)
select* from cte ;

#3. Create a CTE to calculate annual salary.
with cte as (select emp_name , salary, salary*12  as annual_salary from employee_cte_practice 
)
select* from cte ;

#4. Create a CTE to calculate annual bonus.
with cte as (select emp_name , bonus, bonus*12  as annual_bonus from employee_cte_practice 
)
select* from cte ;

#5. Create a CTE to calculate annual income using salary and bonus.
with cte as (select emp_name , salary, bonus,(salary*12+ bonus*12 ) as annual_totle_income from employee_cte_practice 
)
select* from cte ;

#6. Create a CTE to calculate salary after 10% increment.
with cte as (select emp_name , salary,(salary+salary*10/100) as update_salary from employee_cte_practice 
)
select* from cte ;

#7. Create a CTE to calculate salary after 20% increment.
With cte as (select emp_name , salary,(salary+salary*20/100) as update_salary from employee_cte_practice 
)
select* from cte ;

#8. Create a CTE to calculate bonus after 10% increment.
With cte as (select emp_name , bonus,(bonus+bonus*10/100) as update_bonus from employee_cte_practice 
)
select* from cte ;

#9. Create a CTE to calculate salary per project.
With cte as (select emp_name, salary,(salary/project_count) as salary_per_project from employee_cte_practice 
)
select* from cte ;

#10. Create a CTE to calculate performance score per project.
With cte as (select emp_name,performance_score ,(performance_score/project_count) as performance_score_per_project from employee_cte_practice 
)
select* from cte ;
---

## D. CTE with Aggregate Functions

#1. Create a CTE to calculate department-wise employee count.
With cte as (select department , count(*) from employee_cte_practice 
group by department
)
select* from cte ;

#2. Create a CTE to calculate city-wise employee count.
With cte as (select city , count(*) from employee_cte_practice 
group by city
)
select* from cte ;

#3. Create a CTE to calculate status-wise employee count.
With cte as (select status , count(*) from employee_cte_practice 
group by status
)
select* from cte ;

#4. Create a CTE to calculate department-wise total salary.
With cte as (select department , sum(salary) as total_salary from employee_cte_practice 
group by department
)
select* from cte ;

#5. Create a CTE to calculate department-wise total bonus.
With cte as (select department , sum(bonus) as total_bonus from employee_cte_practice 
group by department
)
select* from cte ;

#6. Create a CTE to calculate city-wise average salary.
With cte as (select city , avg(salary)  from employee_cte_practice 
group by city
)
select* from cte ;

#7. Create a CTE to calculate department-wise average performance score.
With cte as (select department , avg(performance_score)  from employee_cte_practice 
group by department
)
select* from cte ;

#8. Create a CTE to calculate department-wise maximum salary.
With cte as (select department , max(salary)  from employee_cte_practice 
group by department
)
select* from cte ;

#9. Create a CTE to calculate department-wise minimum salary.
With cte as (select department , min(salary)  from employee_cte_practice 
group by department
)
select* from cte ;

#10. Create a CTE to calculate joining-year-wise employee count.
With cte as (select joining_year , count(*)  from employee_cte_practice 
group by joining_year
)
select* from cte ;
---

## E. CTE with `WHERE`, `GROUP BY`, and `HAVING`

#1. Create a CTE for Active employees and then calculate department-wise count.
With cte as (select department , count(*)  from employee_cte_practice 
where status ='active'
group by department
)
select* from cte ;

#2. Create a CTE for employees with salary greater than 50000 and then calculate department-wise average salary.
With cte as (select department , avg(salary)  from employee_cte_practice 
where salary >50000
group by department
)
select* from cte ;

#3. Create a CTE for employees with performance score greater than 80 and then calculate city-wise count.
With cte as (select city , count(*)  from employee_cte_practice 
where performance_score >80
group by city
)
select* from cte ;

#4. Create a CTE for IT and Finance employees and then calculate department-wise total salary.
With cte as (select department , sum(salary)  from employee_cte_practice 
where department ='It' or department= 'Finance'
group by department
)
select* from cte ;

#5. Create a CTE for employees joined after 2020 and then calculate status-wise count.
With cte as (select status , sum(salary)  from employee_cte_practice 
where joining_year >2020
group by status
)
select* from cte ;

#6. Create a CTE to calculate department-wise total salary, then display departments where total salary is greater than 150000.
With cte as (select department , sum(salary)  from employee_cte_practice 
group by department 
having  sum(salary)> 150000
)
select* from cte  ;

#7. Create a CTE to calculate city-wise employee count, then display cities where employee count is greater than 2.
With cte as (select city , count(*)  from employee_cte_practice 
group by city 
having  count(*)> 2
)
select* from cte  ;

#8. Create a CTE to calculate department-wise average performance score, then display departments where average score is greater than 80.
With cte as (select department , avg(performance_score)  from employee_cte_practice 
group by department 
having   avg(performance_score)> 80
)
select* from cte  ;

#9. Create a CTE to calculate department-wise total bonus, then display departments where total bonus is greater than 10000.
With cte as (select department , sum(bonus) as total_bonus from employee_cte_practice 
group by department 
having   sum(bonus)> 10000
)
select* from cte  ;

#10. Create a CTE to calculate department-wise maximum salary, then display departments where maximum salary is greater than 80000.
With cte as (select department , max(salary) as total_salary from employee_cte_practice 
group by department 
having   max(salary)> 80000
)
select* from cte  ;


