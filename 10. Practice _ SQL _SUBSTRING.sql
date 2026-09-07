use sm;
CREATE TABLE employee_function_practice (
    emp_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    full_name VARCHAR(100),
    department VARCHAR(50),
    job_role VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    manager_name VARCHAR(100),
    salary INT,
    bonus INT,
    status VARCHAR(20),
    joining_date DATE,
    remarks VARCHAR(200)
);


INSERT INTO employee_function_practice VALUES
(101, 'Amit', 'Sharma', 'Amit Sharma', 'IT', 'Data Engineer', 'Pune', 'amit.sharma@company.com', '9876543210', 'Rohit Verma', 65000, 5000, 'Active', '2021-04-15', ' good performer '),
(102, 'Neha', 'Patil', 'Neha Patil', 'HR', 'HR Executive', 'Mumbai', 'neha.patil@company.com', '9876543211', 'Sneha Rao', 42000, 3000, 'Active', '2020-06-10', ' handles recruitment '),
(103, 'Rahul', 'Mehta', 'Rahul Mehta', 'Finance', 'Analyst', 'Delhi', 'rahul.mehta@company.com', '9876543212', 'Meera Joshi', 58000, 4500, 'Active', '2019-08-20', ' finance reporting '),
(104, 'Priya', 'Nair', 'Priya Nair', 'IT', 'Python Developer', 'Pune', 'priya.nair@company.com', '9876543213', 'Rohit Verma', 72000, 7000, 'Active', '2022-01-05', ' python and sql '),
(105, 'Karan', 'Singh', 'Karan Singh', 'Sales', 'Sales Executive', 'Nagpur', 'karan.singh@company.com', '9876543214', 'Vikas Jain', 36000, 2500, 'Inactive', '2023-03-18', ' field sales '),
(106, 'Sneha', 'Rao', 'Sneha Rao', 'HR', 'HR Manager', 'Mumbai', 'sneha.rao@company.com', '9876543215', NULL, 75000, 8000, 'Active', '2018-11-25', ' senior hr manager '),
(107, 'Vikas', 'Jain', 'Vikas Jain', 'Sales', 'Sales Manager', 'Bangalore', 'vikas.jain@company.com', '9876543216', NULL, 82000, 9000, 'Active', '2017-09-12', ' sales head '),
(108, 'Meera', 'Joshi', 'Meera Joshi', 'Finance', 'Finance Manager', 'Delhi', 'meera.joshi@company.com', '9876543217', NULL, 88000, 9500, 'Active', '2016-12-01', ' finance lead '),
(109, 'Divya', 'Mehta', 'Divya Mehta', 'IT', 'Data Analyst', 'Pune', 'divya.mehta@company.com', NULL, 'Rohit Verma', 60000, NULL, 'Active', '2021-07-22', ' data validation '),
(110, 'Riya', 'Kapoor', 'Riya Kapoor', 'Marketing', 'Marketing Executive', 'Hyderabad', 'riya.kapoor@company.com', '9876543219', 'Anil Kumar', 39000, 2000, 'Inactive', '2023-05-30', ' digital marketing ');


## A. Basic `SUBSTRING()` Questions

#1. Display the first 3 characters from employee first name.
SELECT
    full_name,
    SUBSTRING(full_name, 1, 3) AS short_name
FROM employee_function_practice;

#2. Display the first 4 characters from employee first name.
select full_name ,
SUBSTRING(full_name ,1,4) as short_name
 from employee_function_practice;

#3. Display the first 5 characters from employee full name.
select full_name ,
(SUBSTRING(full_name ,1,5)) as short_name
 from employee_function_practice;
 
#4. Display the first 2 characters from employee last name.
select last_name ,
(SUBSTRING(last_name ,1,2)) as short_name
 from employee_function_practice;
 
#5. Display the first 3 characters from department name.
select department ,
(SUBSTRING(department ,1,3)) as short_name
 from employee_function_practice;
 
#6. Display the first 4 characters from job role.
#type 1
select job_role ,
(SUBSTRING(job_role ,1,4)) as short_name
 from employee_function_practice;
 
 #type 2
 SELECT job_role, LEFT(job_role, 4) AS short_name_job_role
FROM employee_function_practice;

#7. Display the first 3 characters from city name.
SELECT city, LEFT(city, 3) AS short_name_city
FROM employee_function_practice;

#8. Display the first 5 characters from email.
SELECT email, LEFT(email, 5) AS short_name_email 
FROM employee_function_practice;

#9. Display the first 4 characters from status.
SELECT status, LEFT(status, 4) AS short_name_status
FROM employee_function_practice;

#10. Display the first 6 characters from remarks.
SELECT remarks, LEFT(remarks, 6) AS short_name_remarks
FROM employee_function_practice;
---

## B. `SUBSTRING()` with Alias

#1. Display employee id and first 3 characters of first name as `short_first_name`.
SELECT emp_id,first_name, substring(first_name,1,3) AS short_first_name
FROM employee_function_practice;

#2. Display full name and first 5 characters of full name as `short_full_name`.
SELECT full_name, substring(full_name,1,5) AS short_full_name
FROM employee_function_practice;

#3. Display department and first 2 characters of department as `dept_code`.
SELECT department, substring(department,1,2) AS dept_code
FROM employee_function_practice;

#4. Display job role and first 4 characters of job role as `role_code`.
SELECT job_role, substring(job_role,1,4) AS role_code
FROM employee_function_practice;

#5. Display city and first 3 characters of city as `city_code`.
SELECT city, substring(city,1,3) AS city_code
FROM employee_function_practice;

#6. Display email and first 5 characters of email as `email_start`.
SELECT email, substring(email,1,5) AS email_start
FROM employee_function_practice;

#7. Display status and first 3 characters of status as `status_code`.
SELECT status, substring(status,1,3) AS status_code
FROM employee_function_practice;

#8. Display remarks and first 6 characters of remarks as `short_remarks`.
SELECT remarks, substring(remarks,1,6) AS short_remarks
FROM employee_function_practice;

#9. Display manager name and first 4 characters of manager name as `manager_code`.
SELECT manager_name, substring(manager_name,1,4) AS manager_code
FROM employee_function_practice;

#10. Display last name and first 3 characters of last name as `last_name_code`.
SELECT last_name, substring(last_name,1,3) AS last_name_code
FROM employee_function_practice;
---

## C. `SUBSTRING()` from Middle Position

#1. Display characters from position 2 to 4 from first name.
SELECT first_name, substring(first_name,2,4) AS first_name_code
FROM employee_function_practice;

#2. Display characters from position 3 to 5 from full name.
SELECT full_name, substring(full_name,3,5) AS full_name_code
FROM employee_function_practice;

#3. Display characters from position 2 to 6 from department.
SELECT department, substring(department,2,6) AS department_code
FROM employee_function_practice;

#4. Display characters from position 4 to 8 from job role.
SELECT job_role, substring(job_role,4,8) AS job_role_code
FROM employee_function_practice;

#5. Display characters from position 2 to 5 from city.
SELECT city, substring(city,2,5) AS short_city
FROM employee_function_practice;

#6. Display characters from position 5 to 10 from email.
SELECT email, substring(email,5,10) AS short_email
FROM employee_function_practice;

#7. Display characters from position 2 to 6 from status.
SELECT status, substring(status,2,6) AS short_status
FROM employee_function_practice;

#8. Display characters from position 3 to 8 from remarks.
SELECT remarks, substring(remarks,3,8) AS short_remarks
FROM employee_function_practice;

#9. Display characters from position 4 to 9 from manager name.
SELECT manager_name, substring(manager_name,4,9) AS short_manager_name
FROM employee_function_practice;

#10. Display characters from position 2 to 5 from last name.
SELECT last_name, substring(last_name,2,5) AS short_last_name
FROM employee_function_practice;

---

## D. `SUBSTRING()` with `WHERE`

1. Display first 3 characters of first name only for Active employees.
2. Display first 3 characters of last name only for Inactive employees.
3. Display first 4 characters of full name for employees from Pune.
4. Display first 3 characters of department for employees from Mumbai.
5. Display first 5 characters of job role for IT employees.
6. Display first 3 characters of city for Finance employees.
7. Display first 5 characters of manager name where manager name is not NULL.
8. Display first 6 characters of remarks where remarks contain `data`.
9. Display first 4 characters of first name where salary is greater than 60000.
10. Display first 5 characters of full name where bonus is greater than 5000.

---

## E. `SUBSTRING()` with Email

1. Display first 5 characters of email.
2. Display first 10 characters of email.
3. Display first 4 characters of email as employee short email code.
4. Display characters from position 1 to 8 from email.
5. Display characters from position 6 to 12 from email.
6. Display characters from position 1 to 3 from email as email prefix.
7. Display characters from position 2 to 6 from email.
8. Display first character of email.
9. Display first 2 characters of email.
10. Display first 15 characters of email.

---

## F. `SUBSTRING()` with Phone Number

1. Display first 3 digits of phone number.
2. Display first 5 digits of phone number.
3. Display last 4 digits of phone number using `SUBSTRING()`.
4. Display digits from position 4 to 7 of phone number.
5. Display digits from position 6 to 10 of phone number.
6. Display first 2 digits of phone as country/operator code practice.
7. Display phone number from position 3 onward.
8. Display first 6 digits of phone where phone is not NULL.
9. Display last 5 digits of phone where phone is not NULL.
10. Display masked phone format using first 3 digits and last 2 digits.

---

## G. `SUBSTRING()` with Joining Date

1. Display year from joining date using `SUBSTRING()`.
2. Display month from joining date using `SUBSTRING()`.
3. Display day from joining date using `SUBSTRING()`.
4. Display first 4 characters from joining date as joining year.
5. Display characters from position 6 to 7 from joining date as joining month.
6. Display characters from position 9 to 10 from joining date as joining day.
7. Display employee name and joining year using `SUBSTRING()`.
8. Display employee name and joining month using `SUBSTRING()`.
9. Display employee name and joining day using `SUBSTRING()`.
10. Display employees who joined in year 2021 using `SUBSTRING()`.

---

## H. `SUBSTRING()` with Filtering

1. Display employees whose first 2 characters of department are `IT`.
2. Display employees whose first 3 characters of city are `Pun`.
3. Display employees whose first 3 characters of status are `Act`.
4. Display employees whose first 4 characters of job role are `Data`.
5. Display employees whose first 5 characters of email are `amit.`.
6. Display employees whose first 4 characters of full name are `Amit`.
7. Display employees whose first 3 characters of last name are `Meh`.
8. Display employees whose email substring from position 1 to 5 equals `divya`.
9. Display employees whose joining year extracted by `SUBSTRING()` is `2021`.
10. Display employees whose joining month extracted by `SUBSTRING()` is `04`.

---

## I. `SUBSTRING()` with `GROUP BY`

1. Group employees by first 2 characters of department and count employees.
2. Group employees by first 3 characters of city and count employees.
3. Group employees by first 3 characters of status and count employees.
4. Group employees by first 4 characters of job role and count employees.
5. Group employees by first 4 characters of joining year and count employees.
6. Group employees by joining month extracted using `SUBSTRING()` and count employees.
7. Group employees by first character of first name and count employees.
8. Group employees by first character of last name and count employees.
9. Group employees by first 3 characters of email and count employees.
10. Group employees by first 5 characters of manager name and count employees.

---

## J. Interview-Level `SUBSTRING()` Questions

1. Extract username from email before domain using `SUBSTRING()` and related string function.
2. Extract domain name from email after `@` using `SUBSTRING()` and related string function.
3. Extract employee initials from first name and last name using `SUBSTRING()`.
4. Create employee code using first 3 characters of department and employee id.
5. Create city code using first 3 characters of city and first 2 characters of status.
6. Create joining batch code using joining year and department code.
7. Create masked email by showing first 3 characters and hiding remaining part.
8. Create masked phone number by showing first 3 digits and last 2 digits.
9. Extract role category from job role using `SUBSTRING()` and `CASE`.
10. Extract joining year using `SUBSTRING()` and count employees year-wise.