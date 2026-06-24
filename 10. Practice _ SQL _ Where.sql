use sm;

CREATE TABLE employee_details (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    job_role VARCHAR(40),
    salary INT,
    bonus INT,
    age INT,
    city VARCHAR(30),
    experience_years INT,
    joining_year INT,
    status VARCHAR(20),
    work_mode VARCHAR(20)
);

INSERT INTO employee_details VALUES
(101, 'Amit', 'IT', 'Developer', 55000, 5000, 28, 'Pune', 4, 2021, 'Active', 'Hybrid'),
(102, 'Neha', 'HR', 'HR Executive', 42000, 3000, 30, 'Mumbai', 5, 2020, 'Active', 'Office'),
(103, 'Rahul', 'Finance', 'Analyst', 60000, 7000, 32, 'Delhi', 6, 2019, 'Active', 'Remote'),
(104, 'Priya', 'IT', 'Tester', 48000, 4000, 26, 'Pune', 3, 2022, 'Active', 'Hybrid'),
(105, 'Karan', 'Sales', 'Sales Executive', 35000, 2000, 25, 'Nagpur', 2, 2023, 'Inactive', 'Office'),
(106, 'Sneha', 'Finance', 'Accountant', 52000, 4500, 29, 'Mumbai', 4, 2021, 'Active', 'Remote'),
(107, 'Vikas', 'IT', 'Developer', 75000, 8000, 35, 'Bangalore', 8, 2018, 'Active', 'Hybrid'),
(108, 'Anjali', 'HR', 'Recruiter', 39000, 2500, 27, 'Pune', 3, 2022, 'Inactive', 'Office'),
(109, 'Rohit', 'Sales', 'Manager', 68000, 6000, 34, 'Delhi', 9, 2017, 'Active', 'Office'),
(110, 'Meera', 'Finance', 'Manager', 82000, 9000, 38, 'Mumbai', 10, 2016, 'Active', 'Remote'),
(111, 'Suresh', 'IT', 'Support', 30000, 1500, 24, 'Pune', 1, 2024, 'Active', 'Hybrid'),
(112, 'Pooja', 'Sales', 'Sales Executive', 37000, 2200, 26, 'Bangalore', 2, 2023, 'Active', 'Office'),
(113, 'Nitin', 'HR', 'Manager', 72000, 7500, 36, 'Delhi', 11, 2015, 'Active', 'Office'),
(114, 'Riya', 'IT', 'Developer', 64000, 6500, 31, 'Mumbai', 6, 2020, 'Inactive', 'Hybrid'),
(115, 'Manish', 'Finance', 'Analyst', 58000, 5500, 33, 'Pune', 7, 2019, 'Active', 'Remote'),
(116, 'Divya', 'IT', 'Data Engineer', 88000, 9500, 29, 'Pune', 5, 2021, 'Active', 'Remote'),
(117, 'Jay', 'Finance', 'Data Analyst', 47000, 3500, 27, 'Delhi', 4, 2022, 'Active', 'Hybrid'),
(118, 'Komal', 'HR', 'Trainer', 33000, 1800, 25, 'Mumbai', 2, 2023, 'Inactive', 'Office'),
(119, 'Tina', 'Sales', 'Team Lead', 62000, 5000, 32, 'Nagpur', 7, 2019, 'Active', 'Hybrid'),
(120, 'Aakash', 'IT', 'DevOps Engineer', 79000, 8500, 34, 'Bangalore', 9, 2017, 'Active', 'Remote');


## A. Basic `WHERE` with Comparison Operators

#1. Display employees whose salary is greater than 60000.
#2. Display employees whose salary is less than 40000.
#3. Display employees whose salary is equal to 88000.
#4. Display employees whose salary is not equal to 88000.
#5. Display employees whose salary is greater than or equal to 75000.
#6. Display employees whose salary is less than or equal to 35000.
#7. Display employees whose bonus is greater than 6000.
#8. Display employees whose bonus is less than 2500.
#9. Display employees whose bonus is equal to 9500.
#10. Display employees whose bonus is not equal to 9500.
#11. Display employees whose age is greater than 32.
#12. Display employees whose age is less than 27.
#13. Display employees whose age is equal to 29.
#14. Display employees whose age is not equal to 29.
#15. Display employees whose experience years are greater than 5.
#16. Display employees whose experience years are less than 3.
#17. Display employees whose experience years are equal to 7.
#18. Display employees whose experience years are not equal to 7.
#19. Display employees who joined after 2020.
#20. Display employees who joined before 2018.
#21. Display employees who joined in or after 2021.
#22. Display employees who joined in or before 2017.
#23. Display employees whose emp_id is greater than 115.
#24. Display employees whose emp_id is less than 106.
#25. Display employees whose emp_id is equal to 120.

---

## B. `WHERE` with Text Conditions

1. Display employees from IT department.
2. Display employees not from IT department.
3. Display employees from Finance department.
4. Display employees not from Finance department.
5. Display employees from HR department.
6. Display employees not from HR department.
7. Display employees from Sales department.
8. Display employees not from Sales department.
9. Display employees from Pune city.
10. Display employees not from Pune city.
11. Display employees from Mumbai city.
12. Display employees not from Mumbai city.
13. Display employees from Delhi city.
14. Display employees not from Delhi city.
15. Display employees from Bangalore city.
16. Display employees not from Bangalore city.
17. Display employees whose status is Active.
18. Display employees whose status is Inactive.
19. Display employees whose work mode is Remote.
20. Display employees whose work mode is Office.
21. Display employees whose work mode is Hybrid.
22. Display employees whose job role is Developer.
23. Display employees whose job role is Manager.
24. Display employees whose job role is Analyst.
25. Display employees whose job role is Data Engineer.

---

## C. `WHERE` with `AND`

1. Display employees from IT department and salary greater than 70000.
2. Display employees from IT department and city Pune.
3. Display employees from IT department and work mode Remote.
4. Display employees from Finance department and salary greater than 55000.
5. Display employees from Finance department and city Mumbai.
6. Display employees from Finance department and work mode Remote.
7. Display employees from HR department and status Active.
8. Display employees from HR department and age greater than 30.
9. Display employees from Sales department and salary greater than 50000.
10. Display employees from Sales department and status Active.
11. Display employees from Pune city and salary greater than 50000.
12. Display employees from Mumbai city and salary greater than 60000.
13. Display employees from Delhi city and bonus greater than 5000.
14. Display employees from Bangalore city and experience greater than 5.
15. Display employees whose status is Active and work mode is Remote.
16. Display employees whose status is Active and salary greater than 65000.
17. Display employees whose status is Inactive and salary less than 50000.
18. Display employees whose work mode is Hybrid and city Pune.
19. Display employees whose work mode is Office and department HR.
20. Display employees whose work mode is Remote and department Finance.
21. Display employees whose job role is Developer and status Active.
22. Display employees whose job role is Manager and salary greater than 70000.
23. Display employees whose age is greater than 30 and experience greater than 6.
24. Display employees whose bonus is greater than 5000 and salary greater than 60000.
25. Display employees whose joining year is before 2020 and status Active.

---

## D. `WHERE` with `OR`

1. Display employees from IT department or Finance department.
2. Display employees from HR department or Sales department.
3. Display employees from Pune city or Mumbai city.
4. Display employees from Delhi city or Bangalore city.
5. Display employees whose status is Active or salary greater than 80000.
6. Display employees whose status is Inactive or bonus less than 2500.
7. Display employees whose work mode is Remote or work mode is Hybrid.
8. Display employees whose work mode is Office or city Pune.
9. Display employees whose job role is Developer or Manager.
10. Display employees whose job role is Analyst or Data Engineer.
11. Display employees whose age is less than 26 or salary greater than 80000.
12. Display employees whose bonus is greater than 8000 or experience greater than 9.
13. Display employees whose joining year is before 2018 or city Bangalore.
14. Display employees whose salary is less than 40000 or bonus greater than 9000.
15. Display employees whose department is Sales or work mode Remote.
16. Display employees whose city is Nagpur or department HR.
17. Display employees whose emp_id is less than 105 or emp_id greater than 118.
18. Display employees whose age is greater than 35 or joining year is before 2017.
19. Display employees whose salary is greater than 85000 or job role is Team Lead.
20. Display employees whose bonus is less than 2000 or status Inactive.

---

## E. `WHERE` with `NOT`

1. Display employees who are not Active.
2. Display employees who are not Inactive.
3. Display employees who are not from Pune.
4. Display employees who are not from Mumbai.
5. Display employees who are not from IT department.
6. Display employees who are not from Finance department.
7. Display employees whose work mode is not Remote.
8. Display employees whose work mode is not Office.
9. Display employees whose job role is not Developer.
10. Display employees whose job role is not Manager.
11. Display employees whose salary is not greater than 60000.
12. Display employees whose bonus is not less than 3000.
13. Display employees whose age is not less than 30.
14. Display employees whose experience is not greater than 5.
15. Display employees whose joining year is not before 2020.

---

## F. `WHERE` with `IN` and `NOT IN`

1. Display employees whose department is in IT, Finance, and Sales.
2. Display employees whose department is in HR and Sales.
3. Display employees whose city is in Pune, Mumbai, and Delhi.
4. Display employees whose city is in Bangalore and Nagpur.
5. Display employees whose job role is in Developer, Manager, and Analyst.
6. Display employees whose job role is in Data Engineer and DevOps Engineer.
7. Display employees whose work mode is in Remote and Hybrid.
8. Display employees whose work mode is in Office and Hybrid.
9. Display employees whose emp_id is in 101, 110, 115, and 120.
10. Display employees whose joining year is in 2017, 2019, and 2021.
11. Display employees whose department is not in IT and Finance.
12. Display employees whose department is not in HR and Sales.
13. Display employees whose city is not in Pune and Mumbai.
14. Display employees whose city is not in Delhi and Bangalore.
15. Display employees whose job role is not in Developer and Manager.
16. Display employees whose work mode is not in Remote and Hybrid.
17. Display employees whose emp_id is not in 101, 102, 103.
18. Display employees whose joining year is not in 2022, 2023, and 2024.
19. Display employees whose status is in Active and Inactive.
20. Display employees whose bonus is in 5000, 7000, and 9500.

---

## G. `WHERE` with `BETWEEN` and `NOT BETWEEN`

1. Display employees whose salary is between 40000 and 70000.
2. Display employees whose salary is between 70000 and 90000.
3. Display employees whose bonus is between 3000 and 7000.
4. Display employees whose bonus is between 7000 and 10000.
5. Display employees whose age is between 25 and 30.
6. Display employees whose age is between 31 and 38.
7. Display employees whose experience is between 2 and 5 years.
8. Display employees whose experience is between 6 and 10 years.
9. Display employees whose joining year is between 2018 and 2022.
10. Display employees whose emp_id is between 105 and 115.
11. Display employees whose salary is not between 40000 and 70000.
12. Display employees whose bonus is not between 3000 and 7000.
13. Display employees whose age is not between 25 and 30.
14. Display employees whose experience is not between 2 and 5 years.
15. Display employees whose joining year is not between 2018 and 2022.

---

## H. `WHERE` with Arithmetic Conditions

1. Display employees whose salary plus bonus is greater than 70000.
2. Display employees whose salary minus bonus is less than 50000.
3. Display employees whose salary after 10% increment is greater than 80000.
4. Display employees whose salary after 10% deduction is less than 40000.
5. Display employees whose bonus is greater than 10% of salary.
6. Display employees whose annual salary is greater than 800000.
7. Display employees whose annual bonus is greater than 70000.
8. Display employees whose salary divided by age is greater than 2000.
9. Display employees whose bonus divided by experience is greater than 1000.
10. Display employees whose age multiplied by experience is greater than 200.
11. Display employees whose salary plus bonus plus age is greater than 75000.
12. Display employees whose salary minus bonus minus age is less than 55000.
13. Display employees whose salary percentage based on 100000 is greater than 70.
14. Display employees whose bonus percentage based on salary is greater than 10.
15. Display employees whose salary plus joining year is greater than 70000.

---

## I. `WHERE` with `LIKE`

1. Display employees whose name starts with A.
2. Display employees whose name starts with D.
3. Display employees whose name ends with a.
4. Display employees whose name ends with h.
5. Display employees whose name contains i.
6. Display employees whose name contains sh.
7. Display employees whose city starts with P.
8. Display employees whose city starts with B.
9. Display employees whose city ends with i.
10. Display employees whose city contains pur.
11. Display employees whose department starts with F.
12. Display employees whose department contains a.
13. Display employees whose job role starts with D.
14. Display employees whose job role contains Engineer.
15. Display employees whose job role contains Analyst.
16. Display employees whose work mode starts with R.
17. Display employees whose work mode ends with e.
18. Display employees whose status starts with A.
19. Display employees whose status ends with e.
20. Display employees whose name has exactly 4 characters.
21. Display employees whose name has exactly 5 characters.
22. Display employees whose city has exactly 4 characters.
23. Display employees whose city has exactly 6 characters.
24. Display employees whose name has second character as e.
25. Display employees whose city has second character as u.
26. Display employees whose job role has second character as a.
27. Display employees whose department has second character as T.
28. Display employees whose name does not start with A.
29. Display employees whose city does not start with M.
30. Display employees whose job role does not contain Manager.

---

## J. Mixed `WHERE` Condition Questions

1. Display employees from IT department, salary greater than 60000, and status Active.
2. Display employees from Finance department, city Mumbai, and work mode Remote.
3. Display employees from HR department, age greater than 25, and work mode Office.
4. Display employees from Sales department, salary less than 70000, and status Active.
5. Display employees whose city is Pune, department IT, and bonus greater than 4000.
6. Display employees whose city is Mumbai, salary greater than 50000, and status Active.
7. Display employees whose work mode is Remote, bonus greater than 5000, and joining year before 2022.
8. Display employees whose work mode is Hybrid, city Pune, and age less than 30.
9. Display employees whose job role contains Engineer and salary greater than 75000.
10. Display employees whose job role contains Analyst and city Delhi.
11. Display employees whose department is IT or Finance and work mode Remote.
12. Display employees whose city is Pune or Delhi and salary greater than 50000.
13. Display employees whose job role is Developer or Data Engineer and status Active.
14. Display employees whose status is Active and salary between 50000 and 80000.
15. Display employees whose department is not HR and salary greater than 50000.
16. Display employees whose city is not Mumbai and bonus greater than 4000.
17. Display employees whose work mode is not Office and joining year after 2018.
18. Display employees whose name starts with A or name starts with D.
19. Display employees whose city starts with P or city starts with B.
20. Display employees whose job role contains Engineer or department Finance.
21. Display employees whose salary plus bonus is greater than 70000 and status Active.
22. Display employees whose annual salary is greater than 750000 and work mode Remote.
23. Display employees whose bonus is more than 8% of salary and department IT.
24. Display employees whose age multiplied by experience is greater than 200 and salary greater than 70000.
25. Display employees whose joining year plus experience is greater than 2025 and status Active.