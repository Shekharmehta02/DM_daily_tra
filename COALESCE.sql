use sm;
CREATE TABLE employee_coalesce_practice (
    emp_id INT,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    job_role VARCHAR(50),
    city VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    manager_name VARCHAR(100),
    salary INT,
    bonus INT,
    commission INT,
    status VARCHAR(20),
    remarks VARCHAR(200)
);

INSERT INTO employee_coalesce_practice VALUES
(101, 'Amit Sharma', 'IT', 'Data Engineer', 'Pune', 'amit.sharma@company.com', '9876543210', 'Rohit Verma', 65000, 5000, NULL, 'Active', 'good performer'),
(102, 'Neha Patil', 'HR', 'HR Executive', 'Mumbai', 'neha.patil@company.com', '9876543211', 'Sneha Rao', 42000, NULL, NULL, 'Active', NULL),
(103, 'Rahul Mehta', 'Finance', 'Analyst', 'Delhi', 'rahul.mehta@company.com', NULL, 'Meera Joshi', 58000, 4500, 3000, 'Active', 'finance reporting'),
(104, 'Priya Nair', 'IT', 'Python Developer', 'Pune', 'priya.nair@company.com', '9876543213', 'Rohit Verma', 72000, 7000, NULL, 'Active', 'python and sql'),
(105, 'Karan Singh', 'Sales', 'Sales Executive', 'Nagpur', NULL, '9876543214', 'Vikas Jain', 36000, 2500, 2000, 'Inactive', 'field sales'),
(106, 'Sneha Rao', 'HR', 'HR Manager', 'Mumbai', 'sneha.rao@company.com', '9876543215', NULL, 75000, 8000, NULL, 'Active', 'senior hr manager'),
(107, 'Vikas Jain', 'Sales', 'Sales Manager', 'Bangalore', 'vikas.jain@company.com', '9876543216', NULL, 82000, NULL, 5000, 'Active', 'sales head'),
(108, 'Meera Joshi', 'Finance', 'Finance Manager', 'Delhi', 'meera.joshi@company.com', NULL, NULL, 88000, 9500, NULL, 'Active', 'finance lead'),
(109, 'Divya Mehta', 'IT', 'Data Analyst', 'Pune', 'divya.mehta@company.com', NULL, 'Rohit Verma', 60000, NULL, NULL, 'Active', 'data validation'),
(110, 'Riya Kapoor', 'Marketing', 'Marketing Executive', 'Hyderabad', NULL, '9876543219', 'Anil Kumar', 39000, 2000, NULL, 'Inactive', NULL);


## A. Basic `COALESCE()` Questions

#1. Display employee name and replace NULL phone with `No Phone`.
select emp_name ,coalesce(phone,'No Phone') from employee_coalesce_practice;

#2. Display employee name and replace NULL email with `No Email`.
select emp_name ,coalesce(email,'No email') from employee_coalesce_practice;

#3. Display employee name and replace NULL manager name with `No Manager`.
select emp_name ,coalesce(manager_name,'No Manager') from employee_coalesce_practice;

#4. Display employee name and replace NULL bonus with `0`.
select emp_name ,coalesce(bonus,0) from employee_coalesce_practice;

#5. Display employee name and replace NULL commission with `0`.
select emp_name ,coalesce(commission,0) from employee_coalesce_practice;

#6. Display employee name and replace NULL remarks with `No Remarks`.
select emp_name ,coalesce(remarks,'No Remarks') from employee_coalesce_practice;

#7. Display employee name, phone, and cleaned phone using `COALESCE()`.
select emp_name,phone  ,coalesce(phone ,'cleaned phone') from employee_coalesce_practice;

#8. Display employee name, email, and cleaned email using `COALESCE()`.
select emp_name,email  ,coalesce(phone ,'cleaned email') from employee_coalesce_practice;

#9. Display employee name, manager name, and cleaned manager name using `COALESCE()`.
select emp_name,manager_name  ,coalesce(manager_name ,'cleaned manager') from employee_coalesce_practice;

#10. Display employee name, remarks, and cleaned remarks using `COALESCE()`.
select emp_name,remarks  ,coalesce(remarks ,'cleaned remarks') from employee_coalesce_practice;
---

## B. `COALESCE()` with Alias
#1. Display employee name and `COALESCE(phone, 'Not Available')` as `phone_status`.
select emp_name,phone  ,coalesce(phone, 'Not Available')as `phone_status` from employee_coalesce_practice;

#2. Display employee name and `COALESCE(email, 'Not Available')` as `email_status`.
select emp_name,email  ,coalesce(email, 'Not Available')as `email_status` from employee_coalesce_practice;

#3. Display employee name and `COALESCE(manager_name, 'Self Managed')` as `manager_status`.
select emp_name,manager_name  ,coalesce(manager_name, 'Self Managed')as `manager_status` from employee_coalesce_practice;

#4. Display employee name and `COALESCE(bonus, 0)` as `clean_bonus`.
select emp_name,bonus  ,coalesce(bonus, 0)as `clean_bonus` from employee_coalesce_practice;

#5. Display employee name and `COALESCE(commission, 0)` as `clean_commission`.
select emp_name,commission  ,coalesce(commission, 0)as `clean_commission` from employee_coalesce_practice;

#6. Display employee name and `COALESCE(remarks, 'No Comment')` as `clean_remarks`.
select emp_name,remarks  ,coalesce(remarks, 'No Comment')as `clean_remarks` from employee_coalesce_practice;

#7. Display employee name and total income using salary plus `COALESCE(bonus, 0)`.
select emp_name,salary,bonus  ,salary +coalesce(bonus, 0)as `total_income` from employee_coalesce_practice;

#8. Display employee name and total earnings using salary plus bonus plus commission with `COALESCE()`.
select emp_name,salary,bonus ,commission ,coalesce(salary+bonus+commission)as `total_earnings` from employee_coalesce_practice;

#9. Display employee name and incentive amount using `COALESCE(commission, bonus, 0)`.
select emp_name,commission ,bonus  ,coalesce(commission, bonus, 0)as `incentive_amount` from employee_coalesce_practice;


#10. Display employee name and contact detail using `COALESCE(phone, email, 'No Contact')`.
select emp_name ,coalesce(phone, email, 'No Contact')as `contact_detail` from employee_coalesce_practice;

---

## C. `COALESCE()` with Arithmetic

#1. Display employee name, salary, bonus, and total income treating NULL bonus as 0.
select emp_name ,salary,bonus,coalesce(salary+bonus,0)as `total_income` from employee_coalesce_practice;

#2. Display employee name, salary, commission, and total income treating NULL commission as 0.
select emp_name ,salary,commission,coalesce(salary+commission,0)as `total_income` from employee_coalesce_practice;

#3. Display employee name and total payout using salary + bonus + commission, treating NULL as 0.
select emp_name ,salary,bonus,commission,coalesce(salary + bonus + commission,0)as `total_payout` from employee_coalesce_practice;

#4. Display employee name and annual total income using `(salary + COALESCE(bonus, 0)) * 12`.
select emp_name ,salary,bonus,commission,coalesce(salary + bonus + commission,0)as `total_payout` from employee_coalesce_practice;

#5. Display employee name and annual payout using `(salary + COALESCE(bonus, 0) + COALESCE(commission, 0)) * 12`.
#6. Display employee name and bonus after 10% increment, treating NULL bonus as 0.
#7. Display employee name and commission after 20% increment, treating NULL commission as 0.
#8. Display employee name and salary minus bonus, treating NULL bonus as 0.
#9. Display employee name and salary plus double bonus, treating NULL bonus as 0.
#10. Display employee name and salary plus half commission, treating NULL commission as 0.

---

## D. `COALESCE()` with `WHERE`

#1. Display employees where cleaned phone value equals `No Phone`.
#2. Display employees where cleaned email value equals `No Email`.
#3. Display employees where cleaned manager value equals `No Manager`.
#4. Display employees where cleaned bonus value equals 0.
#5. Display employees where cleaned commission value equals 0.
#6. Display employees where cleaned remarks value equals `No Remarks`.
#7. Display employees whose total income using `COALESCE(bonus, 0)` is greater than 65000.
#8. Display employees whose total payout using bonus and commission with `COALESCE()` is greater than 70000.
#9. Display employees whose `COALESCE(phone, email, 'No Contact')` is not equal to `No Contact`.
#10. Display employees whose `COALESCE(commission, bonus, 0)` is greater than 4000.

---

## E. `COALESCE()` with `GROUP BY` / Aggregate

#1. Display department-wise total bonus treating NULL bonus as 0.
#2. Display department-wise total commission treating NULL commission as 0.
#3. Display department-wise total payout using salary + bonus + commission with `COALESCE()`.
#4. Display city-wise total bonus treating NULL bonus as 0.
#5. Display city-wise total commission treating NULL commission as 0.
#6. Display status-wise total payout using `COALESCE()`.
#7. Display department-wise average bonus treating NULL bonus as 0.
#8. Display city-wise average commission treating NULL commission as 0.
#9. Display department-wise count of employees whose bonus is NULL using `COALESCE()` logic.
#10. Display city-wise count of employees whose phone is missing using `COALESCE()` logic.

---

