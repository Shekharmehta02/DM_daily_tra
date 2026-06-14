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
#2. Create a CTE to display only Active employees.
#3. Create a CTE to display only Inactive employees.
#4. Create a CTE to display employees from IT department.
#5. Create a CTE to display employees from Finance department.
#6. Create a CTE to display employees from Pune city.
#7. Create a CTE to display employees from Mumbai city.
#8. Create a CTE to display employees whose salary is greater than 60000.
#9. Create a CTE to display employees whose bonus is greater than 5000.
#10. Create a CTE to display employees whose performance score is greater than 80.

---

## B. CTE with Selected Columns

#1. Create a CTE to display employee id, employee name, and department.
#2. Create a CTE to display employee name, salary, and bonus.
#3. Create a CTE to display employee name, city, and status.
#4. Create a CTE to display employee name, job role, and experience years.
#5. Create a CTE to display employee name, performance score, and project count.
#6. Create a CTE to display employee name and joining year.
#7. Create a CTE to display employee name and salary only for Active employees.
#8. Create a CTE to display employee name and bonus only for IT employees.
#9. Create a CTE to display employee name and performance score only for Finance employees.
#10. Create a CTE to display employee name and city only for employees with salary above 70000.

---

## C. CTE with Arithmetic Calculations

#1. Create a CTE to calculate total income using salary plus bonus.
#2. Create a CTE to calculate total income using salary plus `COALESCE(bonus, 0)`.
#3. Create a CTE to calculate annual salary.
#4. Create a CTE to calculate annual bonus.
#5. Create a CTE to calculate annual income using salary and bonus.
#6. Create a CTE to calculate salary after 10% increment.
#7. Create a CTE to calculate salary after 20% increment.
#8. Create a CTE to calculate bonus after 10% increment.
#9. Create a CTE to calculate salary per project.
#10. Create a CTE to calculate performance score per project.

---

## D. CTE with Aggregate Functions

#1. Create a CTE to calculate department-wise employee count.
#2. Create a CTE to calculate city-wise employee count.
#3. Create a CTE to calculate status-wise employee count.
#4. Create a CTE to calculate department-wise total salary.
#5. Create a CTE to calculate department-wise total bonus.
#6. Create a CTE to calculate city-wise average salary.
#7. Create a CTE to calculate department-wise average performance score.
#8. Create a CTE to calculate department-wise maximum salary.
#9. Create a CTE to calculate department-wise minimum salary.
#10. Create a CTE to calculate joining-year-wise employee count.

---

## E. CTE with `WHERE`, `GROUP BY`, and `HAVING`

#1. Create a CTE for Active employees and then calculate department-wise count.
#2. Create a CTE for employees with salary greater than 50000 and then calculate department-wise average salary.
#3. Create a CTE for employees with performance score greater than 80 and then calculate city-wise count.
#4. Create a CTE for IT and Finance employees and then calculate department-wise total salary.
#5. Create a CTE for employees joined after 2020 and then calculate status-wise count.
#6. Create a CTE to calculate department-wise total salary, then display departments where total salary is greater than 150000.
#7. Create a CTE to calculate city-wise employee count, then display cities where employee count is greater than 2.
#8. Create a CTE to calculate department-wise average performance score, then display departments where average score is greater than 80.
#9. Create a CTE to calculate department-wise total bonus, then display departments where total bonus is greater than 10000.
#10. Create a CTE to calculate department-wise maximum salary, then display departments where maximum salary is greater than 80000.