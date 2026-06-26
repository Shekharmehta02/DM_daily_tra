
hyy

use sm;
CREATE TABLE employee_limit_practice (
    emp_id INT,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    city VARCHAR(50),
    job_role VARCHAR(50),
    salary INT,
    bonus INT,
    experience_years INT,
    performance_score INT,
    status VARCHAR(20),
    joining_year INT
);

INSERT INTO employee_limit_practice
(emp_id, emp_name, department, city, job_role, salary, bonus, experience_years, performance_score, status, joining_year)
VALUES
(1, 'Amit Sharma', 'IT', 'Pune', 'Data Engineer', 65000, 5000, 4, 8, 'Active', 2020),
(2, 'Priya Verma', 'HR', 'Mumbai', 'HR Executive', 42000, 3000, 3, 7, 'Active', 2021),
(3, 'Rahul Singh', 'Finance', 'Delhi', 'Accountant', 55000, 4500, 5, 9, 'Active', 2019),
(4, 'Neha Patel', 'IT', 'Bangalore', 'Software Developer', 72000, 6000, 6, 8, 'Active', 2018),
(5, 'Vikas Mehta', 'Sales', 'Ahmedabad', 'Sales Executive', 38000, 2500, 2, 6, 'Inactive', 2022),
(6, 'Sneha Joshi', 'Marketing', 'Pune', 'Marketing Analyst', 47000, 3500, 3, 7, 'Active', 2021),
(7, 'Rohan Gupta', 'IT', 'Hyderabad', 'Python Developer', 68000, 5500, 4, 8, 'Active', 2020),
(8, 'Pooja Nair', 'Finance', 'Chennai', 'Financial Analyst', 60000, 5000, 5, 9, 'Active', 2019),
(9, 'Karan Malhotra', 'Sales', 'Mumbai', 'Sales Manager', 75000, 7000, 7, 8, 'Active', 2017),
(10, 'Anjali Desai', 'HR', 'Delhi', 'Recruiter', 40000, 2800, 2, 6, 'Active', 2022),
(11, 'Manish Kumar', 'Operations', 'Pune', 'Operations Executive', 45000, 3200, 3, 7, 'Inactive', 2021),
(12, 'Divya Mehta', 'IT', 'Bangalore', 'Data Analyst', 62000, 4800, 4, 9, 'Active', 2020),
(13, 'Suresh Yadav', 'Operations', 'Hyderabad', 'Team Lead', 80000, 7500, 8, 9, 'Active', 2016),
(14, 'Meena Rao', 'Marketing', 'Chennai', 'Content Writer', 35000, 2000, 1, 6, 'Active', 2023),
(15, 'Nitin Jain', 'Finance', 'Ahmedabad', 'Finance Manager', 90000, 8500, 9, 10, 'Active', 2015);

## A. Basic `LIMIT` Questions

#1. Display first 1 employee from the table.
Select * from employee_limit_practice limit 1;

#2. Display first 2 employees from the table.
Select * from employee_limit_practice limit 2;

#3. Display first 3 employees from the table.
Select * from employee_limit_practice limit 3;

#4. Display first 4 employees from the table.
Select * from employee_limit_practice limit 4;

#5. Display first 5 employees from the table.
Select * from employee_limit_practice limit 5;

#6. Display first 10 employees from the table.
Select * from employee_limit_practice limit 10;

#7. Display first 15 employees from the table.
Select * from employee_limit_practice limit 15;

#8. Display first 5 employee names only.
Select emp_name from employee_limit_practice limit 5;

#9. Display first 5 employee ids and names.
Select emp_id from employee_limit_practice limit 5;

#10. Display first 5 employee names and departments.
Select emp_name,department from employee_limit_practice limit 5;

---

## B. `LIMIT` with Selected Columns

#1. Display first 3 employee names and salaries.
Select emp_name,salary from employee_limit_practice limit 3;

#2. Display first 4 employee names and cities.
Select emp_name,city from employee_limit_practice limit 4;

#3. Display first 5 employee names and job roles.
Select emp_name,job_role from employee_limit_practice limit 5;

#4. Display first 6 employee names and status.
Select emp_name,status from employee_limit_practice limit 6;

#5. Display first 7 employee names and joining year.
Select emp_name,joining_year from employee_limit_practice limit 7;

#6. Display first 3 employee names, salary, and bonus.
Select emp_name,salary,bonus from employee_limit_practice limit 3;

#7. Display first 5 employee names, department, and city.
Select emp_name,department, city from employee_limit_practice limit 5;

#8. Display first 5 employee names, experience years, and performance score.
Select emp_name,experience_years, performance_score from employee_limit_practice limit 5;

#9. Display first 8 employee records with emp_id, emp_name, and department.
Select emp_id,emp_name,department from employee_limit_practice limit 8;

#10. Display first 10 records with emp_name, job_role, and salary.
Select emp_name,job_role, salary from employee_limit_practice limit 10;

---

## C. `LIMIT` with `WHERE`

#1. Display first 3 Active employees.
Select * from employee_limit_practice 
where status = 'Active'limit 3;

#2. Display first 2 Inactive employees.
Select * from employee_limit_practice 
where status = 'InActive'limit 2;

#3. Display first 3 employees from IT department.
Select * from employee_limit_practice 
where department = 'IT'limit 3;

#4. Display first 2 employees from Finance department.
Select * from employee_limit_practice 
where department = 'Finance'limit 2;

#5. Display first 2 employees from HR department.
Select * from employee_limit_practice 
where department = 'HR'limit 2;

#6. Display first 3 employees from Pune city.
Select * from employee_limit_practice 
where city = 'pune'limit 3;

#7. Display first 2 employees from Mumbai city.
Select * from employee_limit_practice 
where city = 'mumbai'limit 2;

#8. Display first 3 employees whose salary is greater than 60000.
Select * from employee_limit_practice 
where salary  > 60000 limit 3;

#9. Display first 2 employees whose bonus is greater than 5000.
Select * from employee_limit_practice 
where bonus > 5000 limit 2;

#10. Display first 3 employees whose performance score is greater than 80.
Select * from employee_limit_practice 
where performance_score > 80 limit 3;
---

## D. `LIMIT` with `ORDER BY`

#1. Display top 3 employees by highest salary.
Select * from employee_limit_practice 
order by salary desc limit 3;

#2. Display top 5 employees by highest salary.
Select * from employee_limit_practice 
order by salary desc limit 5;

#3. Display top 3 employees by lowest salary.
Select * from employee_limit_practice 
order by salary asc limit 3;

#4. Display top 5 employees by lowest salary.
Select * from employee_limit_practice 
order by salary asc limit 5;

#5. Display top 3 employees by highest bonus.
Select * from employee_limit_practice 
order by bonus desc limit 3;

#6. Display top 5 employees by highest performance score.
Select * from employee_limit_practice 
order by performance_score desc limit 5;

#7. Display top 3 employees by highest experience years.
Select * from employee_limit_practice 
order by experience_years desc limit 3;

#8. Display top 5 employees by latest joining year.
Select * from employee_limit_practice 
order by joining_year desc limit 5;

#9. Display top 5 employees by oldest joining year.
Select * from employee_limit_practice 
order by joining_year asc limit 5;

#10. Display first 5 employees ordered by employee name alphabetically.
Select * from employee_limit_practice 
order by emp_name asc limit 5;
---

## E. `LIMIT` with Aggregate / Business Scenarios

#1. Display top 3 departments by highest total salary.
Select department ,salary ,sum(salary)from employee_limit_practice 
group by department,salary
order by (salary) desc  limit 3;

#2. Display top 3 cities by highest average salary.
Select city,avg(salary)from employee_limit_practice 
group by city
order by avg(salary) desc  limit 3;

#3. Display top 2 departments by employee count.
Select department,count(*)from employee_limit_practice 
group by department
  limit 2;
select* from employee_limit_practice;
#4. Display top 2 statuses by employee count.
Select status,count(*)from employee_limit_practice 
group by status
  limit 2;
  
#5. Display top 3 job roles by highest salary.
Select job_role,sum( salary)from employee_limit_practice 
group by job_role
  limit 3;
  
#6. Display top 3 employees by total income using salary plus bonus.
Select emp_name,salary,sum( salary+ bonus)from employee_limit_practice 
group by emp_name,salary
order by salary desc
  limit 3;

##7. Display top 5 employees by salary after treating NULL bonus as 0.
Select emp_name,salary,sum( salary+ bonus)from employee_limit_practice 
group by emp_name,salary
order by salary desc
  limit 5;

#8. Display top 3 Active employees by highest performance score.
Select *from employee_limit_practice 
where status = 'Active'
order by performance_score desc
limit 3;
  
#9. Display top 3 employees from IT department by highest salary.
Select *from employee_limit_practice 
where department = 'IT'
order by salary desc
limit 3;

#10. Display top 5 employees from all departments ordered by salary descending.
Select *from employee_limit_practice 
order by salary desc
limit 5;

pura ho gaya


