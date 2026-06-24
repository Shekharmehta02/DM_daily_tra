use sm;


CREATE TABLE departments1 (
    dept_id INT,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);
INSERT INTO departments1 VALUES
(1, 'IT', 'Pune'),
(2, 'HR', 'Mumbai'),
(3, 'Finance', 'Delhi'),
(4, 'Sales', 'Bangalore'),
(5, 'Marketing', 'Hyderabad'),
(6, 'Operations', 'Chennai');


CREATE TABLE employees1 (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT,
    city VARCHAR(50),
    job_role VARCHAR(50),
    status VARCHAR(20)
);

INSERT INTO employees1 VALUES
(101, 'Amit', 1, 'Pune', 'Developer', 'Active'),
(102, 'Neha', 2, 'Mumbai', 'HR Executive', 'Active'),
(103, 'Rahul', 3, 'Delhi', 'Analyst', 'Active'),
(104, 'Priya', 1, 'Pune', 'Tester', 'Active'),
(105, 'Karan', 4, 'Nagpur', 'Sales Executive', 'Inactive'),
(106, 'Sneha', 3, 'Mumbai', 'Accountant', 'Active'),
(107, 'Vikas', 1, 'Bangalore', 'Developer', 'Active'),
(108, 'Anjali', 2, 'Pune', 'Recruiter', 'Inactive'),
(109, 'Rohit', 4, 'Delhi', 'Manager', 'Active'),
(110, 'Meera', 3, 'Mumbai', 'Manager', 'Active'),
(111, 'Suresh', NULL, 'Pune', 'Support', 'Active'),
(112, 'Pooja', 7, 'Bangalore', 'Sales Executive', 'Active');

CREATE TABLE clients (
    client_id INT,
    client_name VARCHAR(50),
    client_city VARCHAR(50)
);

INSERT INTO clients VALUES
(201, 'BNY', 'Pune'),
(202, 'Infosys', 'Bangalore'),
(203, 'TCS', 'Mumbai'),
(204, 'HDFC', 'Delhi'),
(205, 'Wipro', 'Hyderabad');

CREATE TABLE projects1 (
    project_id INT,
    project_name VARCHAR(50),
    client_id INT,
    project_status VARCHAR(20)
);

INSERT INTO projects1 VALUES
(301, 'ETL Migration', 201, 'Active'),
(302, 'Payroll System', 203, 'Active'),
(303, 'Sales Dashboard', 202, 'Completed'),
(304, 'Risk Analysis', 204, 'Active'),
(305, 'Marketing App', 205, 'On Hold'),
(306, 'Internal Tool', NULL, 'Active'),
(307, 'Legacy Cleanup', 209, 'Completed');

CREATE TABLE employee_projects (
    emp_id INT,
    project_id INT,
    assigned_role VARCHAR(50),
    allocation_percent INT
);

INSERT INTO employee_projects VALUES
(101, 301, 'Developer', 80),
(103, 304, 'Data Analyst', 70),
(104, 301, 'Tester', 60),
(106, 304, 'Finance Analyst', 50),
(107, 303, 'Developer', 90),
(109, 303, 'Sales Lead', 75),
(110, 302, 'Finance Manager', 85),
(112, 307, 'Sales Executive', 40),
(115, 301, 'Developer', 50),
(101, 306, 'Support Developer', 30);

CREATE TABLE salaries (
    emp_id INT,
    salary INT,
    bonus INT,
    salary_year INT
);

INSERT INTO salaries VALUES
(101, 55000, 5000, 2024),
(102, 42000, 3000, 2024),
(103, 60000, 7000, 2024),
(104, 48000, 4000, 2024),
(105, 35000, 2000, 2024),
(106, 52000, 4500, 2024),
(107, 75000, 8000, 2024),
(109, 68000, 6000, 2024),
(110, 82000, 9000, 2024),
(113, 72000, 7500, 2024);

# A. INNER JOIN Questions: Employees + Departments
select* from employees1 ;
#1. Display employee name and department name using `INNER JOIN`.
select*from employees1 as e  inner join departments1  as d on e.dept_id = d.dept_id;

#2. Display employee id, employee name, department name, and department location.
select emp_id, emp_name , dept_name ,location from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id;

#3. Display employees who belong to a valid department.
select emp_id, emp_name , dept_name ,location from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where dept_name='valid';

 #4. Display active employees with their department names.
 select dept_name,emp_name,status
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where status='active';

#5. Display inactive employees with their department names.
select dept_name,emp_name,status
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where status='inactive';

#6. Display employees from IT department using `INNER JOIN`.
select dept_name,emp_name
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where dept_name='IT';

#7. Display employees from Finance department using `INNER JOIN`.
select dept_name,emp_name
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where dept_name='Finance';

#8. Display employees from HR department using `INNER JOIN`.
select dept_name,emp_name
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where dept_name='HR';

#9. Display employees from Sales department using `INNER JOIN`.
select dept_name,emp_name
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where dept_name='Sales';

#10. Display employees whose department location is Pune.
select dept_name,emp_name,location
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where location='Pune';

#11. Display employees whose department location is Mumbai.
select dept_name,emp_name,location
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where location='Mumbai';

#12. Display employees whose department location is Delhi.
select dept_name,emp_name,location
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where location='Delhi';

#13. Display employees whose department location is Bangalore.
select dept_name,emp_name,location
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where location='Bangalore';

#14. Display employee name, job role, and department name.
select dept_name,emp_name,job_role
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id;

#15. Display employee name, city, department name, and department location.
select dept_name,emp_name,location,city
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id;

#16. Display employees whose employee city and department location are the same.
select dept_name,emp_name,location,city
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where  city = location ;

#17. Display employees whose employee city and department location are different.
select dept_name,emp_name,location,city
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where  city != location ;

#18. Display active IT employees using `INNER JOIN`.
select dept_name,emp_name,status
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where status= 'active'  and dept_name='IT';

#19. Display active Finance employees using `INNER JOIN`.
select dept_name,emp_name,status
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where status= 'active'  and dept_name='Finance';

#20. Display inactive HR employees using `INNER JOIN`.
select dept_name,emp_name,status
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where status= 'inactive'  and dept_name='HR';

#21. Display employees whose job role is Developer with department name.
select dept_name,emp_name,job_role
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where job_role= 'Developer';

#22. Display employees whose job role is Manager with department name.
select dept_name,emp_name,job_role
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where job_role= 'Manager';

#23. Display employees whose job role contains Executive with department name.
select dept_name,emp_name,job_role
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where job_role like  '%Executive';

#24. Display employees whose name starts with A along with department name.
select dept_name,emp_name
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where emp_name like  'A%';

#25. Display employees whose name contains a along with department name.
select dept_name,emp_name
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where emp_name like  '%A%';

#26. Display employees whose city starts with P along with department name.
select dept_name,emp_name,city
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where city like  'P%';

#27. Display employees whose city is Pune with department name.
select dept_name,emp_name,city
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where city =  'Pune';

#28. Display employees whose city is Mumbai with department name.
select dept_name,emp_name,city
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where city =  'Mumbai';

#29. Display employees whose city is Delhi with department name.
select dept_name,emp_name,city
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where city =  'Delhi';

#30. Display employees whose department name starts with F.
select dept_name,emp_name,city
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where dept_name like  'F%';

#31. Display employees whose department name contains a.
select dept_name,emp_name,city
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where dept_name like  '%a%';

#32. Count employees department-wise using `INNER JOIN`.
select dept_name ,count(emp_name) 
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
group by dept_name ;

#33. Count active employees department-wise using `INNER JOIN`.
select dept_name ,count(emp_name) 
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where status ='active'
group by dept_name  ;

#34. Count inactive employees department-wise using `INNER JOIN`.
select dept_name ,count(emp_name) 
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
where status ='inactive'
group by dept_name  ;

#35. Display department-wise employee count where count is greater than 1.
select dept_name ,count(emp_name) 
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
group by dept_name
having  count(emp_name) >1 ;

#36. Display department-wise employee count where count is equal to 3.
select dept_name ,count(emp_name) 
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id
group by dept_name
having  count(emp_name) =3 ;

#37. Display department-wise employee count only for active employees.
select dept_name ,count(emp_name) 
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
where status ='active'
group by dept_name ;

#38. Display department-wise employee count only for Pune city employees.
select dept_name,city ,count(emp_name) 
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
where city ='Pune'
group by dept_name ;

#39. Display city-wise employee count with valid department only.
select city , count(emp_name) 
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
group by city ;

#40. Display department location-wise employee count.
select location ,count(location) 
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
group by location ;

#41. Display employees ordered by department name.
select dept_name ,emp_name
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
order by dept_name asc;

#42. Display employees ordered by department location.
select dept_name ,emp_name
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
order by location desc;

#43. Display employees ordered by employee name and department name.
select *
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
order by dept_name asc ,emp_name asc;

#44. Display employees whose department id is 1 using join.
select *
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
where e.dept_id=1;

#45. Display employees whose department id is not 1 using join.
select *
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
where e.dept_id != 1;

#46. Display employees whose department is IT or Finance using join.
select *
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
where dept_name='it' or dept_name='Finance';

#47. Display employees whose department is HR or Sales using join.
select *
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
where dept_name='HR' or dept_name='Sales';

#48. Display employees whose city is Pune or department location is Pune.
select *
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
where city='Pune' or location='Pune';

#49. Display employees whose status is Active and department location is not Mumbai.
select *
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
where status='Active' and location !='Mumbai';


#50. Display employees whose job role is Developer and department name is IT.
select *
from employees1 as e  inner join departments1 as d  ON e.dept_id = d.dept_id 
where job_role='Developer' and dept_name ='IT';

---

# B. LEFT JOIN Questions: Employees + Departments

#1. Display all employees with their department names using `LEFT JOIN`.
select*from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id;

#2. Display all employees even if department does not exist.
select emp_id,emp_name,e.dept_id,city,job_role,status,location
from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id;

#3. Display employees whose department name is missing.
select*from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
where dept_name is null;

###4. Display employees whose department id is NULL.
select*from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
where e.dept_id is null ;

#5. Display employees whose department id does not match departments table.
SELECT e.* FROM employees1 e LEFT JOIN departments1 d ON e.dept_id = d.dept_id WHERE d.
dept_id IS NULL;


#6. Display employee name and department name, showing NULL for missing department.
select  e.emp_name, d.dept_name from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id;

#7. Display all active employees with department name using `LEFT JOIN`.
select*from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
where status='active';

#8. Display all inactive employees with department name using `LEFT JOIN`.
-- Option - 1
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
where status='inactive';

-- Option - 2
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
where status in ( 'inactive');

-- Option - 3 | Recheck 
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
where status like  '__active' ;

#9. Display all employees from Pune with department name.
select*from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
where city='pune';

#10. Display all employees from Bangalore with department name.
select*from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
where city ='Bangalore';

##2
select*from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
where  city like  'Bangalore';

#11. Display all employees and department locations.
select emp_name , location from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id;

#12. Display employees who have valid department location.
select emp_name , location from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id where dept_name is not null;

#13. Display employees who do not have valid department location.
select emp_name , location from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
where dept_name is null;

#14. Display employee count including employees with no department.
select count(emp_name) from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id;

###15. Display employees with no department assigned.
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
 where dept_name is null ;

#16. Display employees assigned to invalid department id.
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
 where e.dept_id is null ;
 
#17. Display employees whose department is either missing or invalid.
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id
 where e.dept_id is null  ;

#18. Display all employees and replace missing department name with `No Department`.
##select *from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where dept_name=null and (replace (dept_name,null,`No Department`));

#19. Display all employees and replace missing department location with `No Location`.
#20. Display all employees with department name only when available.
select *from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id  
where dept_name is not null;

#21. Display all employees whose department name is not IT or department is missing.
select *from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id  
where dept_name != 'it' or dept_name is null;

#22. Display all employees whose department name is not Finance or department is missing.
select *from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id  
where dept_name != 'Finance' or dept_name is null;

#23. Display all employees where department name starts with I or department is missing.
select *from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id  
where dept_name like  'I%' or dept_name is null;

#24. Display all employees where department location is Pune or department is missing.
select *from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id  
where location like 'Pune' or dept_name is null;

#25. Display all employees and sort missing departments first.
select *from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id  
 order by dept_name asc;

#26. Display all employees and sort valid departments first.
select *from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id  where dept_name != 'null' 
 order by dept_name asc;
 
#27. Count employees by department name including missing department group.
select dept_name,count(dept_name) from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id   
group by  dept_name 
 order by dept_name asc;

#28. Count employees by department location including missing location group.
select location,count(location) from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id   
group by  location 
 order by location asc;

#29. Count active employees by department using `LEFT JOIN`.
select count(emp_name) from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id  
where  status ='active';
 
#30. Count inactive employees by department using `LEFT JOIN`.
select count(emp_name) from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id  
where  status ='inactive';

#31. Display department-wise employee count including missing departments.
select count(*) from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id ;

#32. Display employees whose department id exists but department name is NULL after join.
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id  
where  e.dept_id is not null and d.dept_name is null ;
select * from employees1;
select * from departments1;

#33. Display employees whose department id is greater than department table values.
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id  
where  e.dept_id >(d.dept_name) ;

#34. Display all employees with department name and status.
select emp_name,dept_name,status from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id ;

#35. Display all employees with department name where status is Active.
select emp_name,dept_name,status from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where status like 'active';

#36. Display all employees with department name where job role contains Developer.
select emp_name,dept_name,job_role from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where job_role like 'Developer';

#37. Display all employees with department name where city contains u.
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where city like '%u%';

#38. Display all employees with department name where employee name ends with a.
select emp_name,dept_name from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where emp_name like '%a';

#39. Display all employees with department name where department location is Delhi or missing.
select emp_name,dept_name, location from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where location like 'Delhi' or location is null;

#40. Display all employees with department name where department location is Bangalore or missing.
select emp_name,dept_name, location from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where location like 'Bangalore' or location is null;

#41. Display employees whose department name is missing but status is Active.
select emp_name,dept_name, status from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where dept_name is null and status like 'Active';

#42. Display employees whose department name is missing and city is Pune.
select emp_name,dept_name, city from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where dept_name is null and city like 'Pune';

#43. Display employees whose department name is missing and job role is Support.
select emp_name,dept_name, job_role from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where dept_name is null and job_role like 'Support';

#44. Display employees whose department name is missing or status is Inactive.
select emp_name,dept_name, status from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where dept_name is null and status like 'Inactive';

#45. Display employees whose department id is NULL or invalid.
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where d.dept_id is null;

#46. Display employee and department details using `LEFT JOIN` and `WHERE d.dept_id IS NULL`.
select emp_id, emp_name, e.dept_id, city, job_role, status ,d.dept_id, d.dept_name, d.location
from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where d.dept_id is null;

#47. Display all employees and check whether department exists using a derived column.
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 


#48. Display all employees and show `Matched` or `Not Matched` based on department availability.
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 

#49. Display all employees with valid department only using `LEFT JOIN`.
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id 
where d.dept_id is not null;

#50. Display all employees without valid department using `LEFT JOIN`.
select * from employees1 as e  LEFT join departments1  as d on e.dept_id = d.dept_id ;

# C. RIGHT JOIN Questions: Employees + Departments

#1. Display all departments with employee details using `RIGHT JOIN`.
select * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id ;

#2. Display all departments even if no employee belongs to them.
select distinct(dept_name) from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id ;

#3. Display departments that do not have employees.
select distinct(dept_name), emp_name from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where emp_name is null;

#4. Display department name and employee name using `RIGHT JOIN`.
select(dept_name), emp_name from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id ;

#5. Display department name, location, and employee city using `RIGHT JOIN`.
select(dept_name),location, city from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id ;

#6. Display all departments and active employees if available.
select emp_name ,d.dept_name from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where status ='active';

#7. Display all departments and inactive employees if available.
select emp_name ,d.dept_name from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where status ='inactive';

#8. Display departments with no active employee.
select emp_name ,d.dept_name from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where status ='inactive';

#9. Display departments with no inactive employee.
select emp_name ,d.dept_name from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where status ='active';

#10. Display all departments located in Pune with employee details.
select* from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where location ='pune';

#11. Display all departments located in Hyderabad with employee details.
select dept_name,emp_name,location from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where location ='Hyderabad';

#12. Display all departments located in Chennai with employee details.
select *from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where location ='Chennai';

#13. Display Marketing department with employee details using `RIGHT JOIN`.
select *from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where dept_name ='Marketing';

#14. Display Operations department with employee details using `RIGHT JOIN`.
select *from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where dept_name ='Operations';

#15. Display departments whose employees are missing.
select dept_name,emp_name from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where emp_name is null;

#16. Display departments having NULL employee id after right join.
select dept_name,emp_name, emp_id from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where emp_id is null;

#17. Display departments having NULL employee name after right join.
select dept_name,emp_name, emp_id from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where emp_name is null ;

#?#18. Display all departments and replace missing employee name with `No Employee`.
select emp_name, emp_id , dept_name  (left('null' ,'No employee')) from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where emp_name is null ;

#?#19. Display all departments and replace missing employee status with `No Status`.
#20. Count employees department-wise using `RIGHT JOIN`.
select dept_name ,count(dept_name) from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id
group by dept_name ;

#21. Count employees department-wise including departments with zero employees.
select dept_name ,count(*) from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id
group by dept_name ;

#22. Display departments having employee count greater than 1.
select dept_name ,count(*) from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id
group by dept_name 
having count(*)>1;

#23. Display departments having employee count equal to 0.
select dept_name ,count(*) from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id
group by dept_name 
having count(*)=0;

#24. Display departments having employee count less than 2.
select dept_name ,count(*) from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id
group by dept_name 
having count(*)<2;
#25. Display department-wise active employee count including zero count.
select dept_name,status ,count(status) from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id
where status ='active'
group by dept_name ;

#26. Display department-wise inactive employee count including zero count.
select dept_name,status ,count(status) from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id
where status ='inactive'
group by dept_name ;

#27. Display all department locations with employee names.
select  emp_name,location  from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id ;

#28. Display departments ordered by employee count descending.
select dept_name,count( dept_name)  from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
group by dept_name
order by count(dept_name) desc ;

#29. Display departments ordered by department name.
select dept_name, count(dept_name) from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
group by dept_name
order by dept_name asc ;

#30. Display departments ordered by department location.
select dept_name,location from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
order by location asc ;

#31. Display departments whose name starts with M and employee details.
select * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where dept_name like 'M%';

#32. Display departments whose name contains a and employee details.
select * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where dept_name like '%a%';

#33. Display departments whose location starts with C and employee details.
select * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where location like 'C%';
 
#34. Display departments whose location ends with e and employee details.
select * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where location like '%e';

#35. Display departments where employee city is same as department location.
select * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where location =city;

#36. Display departments where employee city is different from department location.
select * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where location !=city;
 
#37. Display departments where no employee city is available.
select * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where city is null ;

#38. Display departments from locations not used by employees.
select dept_name ,emp_name from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where location !=city ;
 
#39. Display departments from Pune or Chennai with employee details.
select * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where location='pune' or location='Chennai' ;

#40. Display departments from Hyderabad or Chennai with employee details.
select * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where location='Hyderabad' or location='Chennai' ;

#41. Display departments having no active employee.
select emp_name, dept_name,status  from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where status='inactive' ;
 

#42. Display departments having no employee from same city as department location.
select emp_name,dept_name,city,location from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where  location !=city ;

#43. Display all departments with employees whose status is Active or NULL.
select emp_name,dept_name ,status from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where  status ='Active' or status is null ;

#44. Display all departments with employees whose job role is Developer or NULL.
select emp_name,dept_name, job_role from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where  job_role ='Developer' or job_role is null ;

#45. Display all departments with employees whose city is Pune or NULL.
select emp_name,dept_name,city  from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where  city ='Pune' or city is null ;
 
#46. Display all departments where employee name starts with A or employee is missing.
select emp_name,dept_name from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where  emp_name like 'A%' or emp_name is null ;
 
#47. Display all departments where employee job role contains Manager or employee is missing.
select emp_name,dept_name ,job_role from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where  job_role like 'Manager' or emp_name is null ;

#48. Display departments without employees using `RIGHT JOIN`.
select emp_name,dept_name  from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 where  emp_name is null ;
 
#49. Display departments with at least one employee using `RIGHT JOIN`.
select dept_name ,count(dept_name) from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
 group by dept_name 
 having count(dept_name) >=1 ;
 
#50. Display department and employee match status using `RIGHT JOIN`.
select *from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where e.status = status;

---

# D. FULL JOIN Questions: Employees + Department

# `LEFT JOIN UNION RIGHT JOIN`

#1. Display all employees and all departments using full join logic.
select emp_name, dept_name from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
union
select emp_name, dept_name from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id ;

#2. Display matched and unmatched records from employees and departments.
select * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where  e.dept_id is null 
union
select* from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id 
where  d.dept_id is not null;

#3. Display employees without departments and departments without employees.
select * from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id 
where  dept_name is null 
union
select* from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where  emp_name is  null;

#4. Display all employee names and department names including unmatched records.
select * from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id 
union
select* from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id ;

#5. Display all department names and employee names including unmatched records.
select * from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id 
union
select* from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id ;

#6. Display records where employee has matching department.
select* from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id 
where dept_name= dept_name 
union 
select  * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where dept_name= dept_name  order by dept_name desc;

#7. Display records where employee department is missing.
select* from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id 
where dept_name is null
union
select  * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where dept_name is  null;

#8. Display records where department has no employee.
select* from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id 
where emp_name is null
union
select  * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where emp_name is null;

#9. Display only unmatched records from both tables.
select* from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id 
where d.dept_id is null 
union
select  * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where e.dept_id is null;

#10. Display only matched records from both tables using full join logic.
select* from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id 
where d.dept_id is not null 
union
select  * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where e.dept_id is not null;

#11. Display all employees and departments with match status.
select* from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id 
where status ='active'
union
select  * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id 
where status ='inactive';
#12. Display all records and show `Employee Missing` where employee is absent.
select* from employees1 as e  left join departments1  as d on e.dept_id = d.dept_id 
where emp_name is null as Employee Missing
union
select  * from employees1 as e  right join departments1  as d on e.dept_id = d.dept_id ;
#13. Display all records and show `Department Missing` where department is absent.
#14. Display full join result ordered by department name.
#15. Display full join result ordered by employee name.
#16. Display full join result ordered by department location.
#17. Display all employees and departments where city/location is Pune.
#18. Display all employees and departments where city/location is Mumbai.
#19. Display all employees and departments where city/location is Delhi.
#20. Display full join result where employee status is Active or employee is missing.

---

# D. FULL JOIN Questions: Employees + Departments

1. Display full join result where department location is Chennai or department is missing.
2. Display full join result where department name is Marketing or employee department is missing.
3. Display full join result where employee job role is Developer or department is missing.
4. Display full join result where employee city differs from department location.
5. Display full join result where employee city matches department location.
6. Display count of matched records in full join result.
7. Display count of unmatched employee records.
8. Display count of unmatched department records.
9. Display count of total records from full join output.
10. Display department-wise employee count including departments with zero employees and missing departments.
11. Display location-wise employee count including unmatched departments.
12. Display status-wise employee count including missing departments.
13. Display full join output with `Matched`, `Employee Only`, and `Department Only` status.
14. Display full join output for IT and Marketing departments.
15. Display full join output for employees from Pune and departments from Pune.
16. Display full join output for active employees and departments with no employees.
17. Display full join output for inactive employees and empty departments.
18. Display all employees with invalid department and all departments with no employees.
19. Display all employees with NULL department and all departments with no employees.
20. Display full join output using `UNION`.
21. Display full join output using `UNION ALL`.
22. Display full join output without duplicate matched records.
23. Display full join output and filter only rows where employee or department is NULL.
24. Display full join output and filter only rows where employee and department both exist.
25. Display full join output and show employee city and department location together.
26. Display full join output where department id is 7 or department id is 6.
27. Display full join output where employee dept_id does not exist in departments.
28. Display full join output where department dept_id does not exist in employees.
29. Display full join output using `COALESCE` for department id.
30. Display full join output using `COALESCE` for department name.

---

# E. INNER JOIN Questions: Employees + Salaries

1. Display employee name, salary, and bonus using `INNER JOIN`.
2. Display active employees with salary details.
3. Display inactive employees with salary details.
4. Display employees whose salary is greater than 60000 with employee name.
5. Display employees whose bonus is greater than 5000 with employee name.
6. Display employees whose salary is between 50000 and 80000.
7. Display employees whose bonus is between 4000 and 8000.
8. Display employee name and annual salary.
9. Display employee name and annual bonus.
10. Display employee name and total monthly income using salary plus bonus.
11. Display employee name and total annual income using salary and bonus.
12. Display employees whose salary plus bonus is greater than 70000.
13. Display employees whose salary minus bonus is less than 50000.
14. Display employees whose bonus is more than 10% of salary.
15. Display employees whose bonus is less than 10% of salary.
16. Display employees with salary year 2024.
17. Display employees whose salary year is not 2024.
18. Display employee salary details for IT department.
19. Display employee salary details for Finance department.
20. Display employee salary details for Sales department.
21. Display employee salary details for employees from Pune.
22. Display employee salary details for employees from Mumbai.
23. Display employee salary details for Developers.
24. Display employee salary details for Managers.
25. Display employee salary details where employee status is Active.
26. Display employee salary details where employee status is Inactive.
27. Count employees who have salary records.
28. Display average salary of employees who have valid employee records.
29. Display maximum salary with employee name.
30. Display minimum salary with employee name.
31. Display department-wise total salary using employee and salary tables.
32. Display department-wise average salary using employee and salary tables.
33. Display department-wise maximum salary using employee and salary tables.
34. Display department-wise minimum salary using employee and salary tables.
35. Display city-wise total salary.
36. Display city-wise average bonus.
37. Display status-wise total salary.
38. Display job-role-wise average salary.
39. Display department-wise employee count with salary records.
40. Display departments whose total salary is greater than 150000.
41. Display departments whose average salary is greater than 60000.
42. Display cities whose total bonus is greater than 10000.
43. Display job roles whose average bonus is greater than 5000.
44. Display employees whose salary record exists but employee status is Active.
45. Display employees whose salary record exists and city is Delhi.
46. Display employees whose salary record exists and job role contains Manager.
47. Display employees whose salary record exists and employee name starts with R.
48. Display employees whose salary record exists and bonus is greater than salary divided by 12.
49. Display employees whose salary record exists and salary plus bonus is between 60000 and 90000.
50. Display employees whose salary record exists and salary is not between 40000 and 70000.

---

# F. LEFT JOIN Questions: Employees + Salaries

1. Display all employees with salary details using `LEFT JOIN`.
2. Display employees who do not have salary records.
3. Display all active employees and salary details if available.
4. Display all inactive employees and salary details if available.
5. Display all employees and replace missing salary with 0.
6. Display all employees and replace missing bonus with 0.
7. Display all employees with salary year if available.
8. Display employees whose salary year is missing.
9. Display employees whose salary record is missing but status is Active.
10. Display employees whose salary record is missing and city is Pune.
11. Display employees whose salary record is missing and job role is Recruiter.
12. Display employees whose salary record is missing or bonus is NULL.
13. Display employees with salary and bonus including missing salary records.
14. Display all employees and monthly total income if salary exists.
15. Display all employees and annual salary if salary exists.
16. Display all employees and annual bonus if salary exists.
17. Display all employees and total annual income if salary exists.
18. Display all employees with salary status as `Salary Available` or `Salary Missing`.
19. Display employees whose salary is greater than 60000 or salary is missing.
20. Display employees whose bonus is greater than 5000 or bonus is missing.
21. Display all employees from IT department and salary if available.
22. Display all employees from HR department and salary if available.
23. Display all employees from Sales department and salary if available.
24. Display all employees from Pune city and salary if available.
25. Display all employees from Bangalore city and salary if available.
26. Count total employees and count employees with salary records.
27. Count employees without salary records.
28. Display department-wise employee count and salary record count.
29. Display city-wise employee count and salary record count.
30. Display job-role-wise employee count and salary record count.
31. Display department-wise total salary including missing as 0.
32. Display city-wise total bonus including missing as 0.
33. Display status-wise total salary including missing as 0.
34. Display department-wise average salary ignoring missing salary.
35. Display department-wise average salary treating missing salary as 0.
36. Display employees where salary is missing but department exists.
37. Display employees where salary is missing and department id is NULL.
38. Display employees where salary is missing and department id is invalid.
39. Display employees where employee exists but salary does not exist.
40. Display employees where salary exists but bonus is missing.
41. Display all employees with salary record availability flag.
42. Display all employees with salary and department using `LEFT JOIN` twice.
43. Display all employees with salary and project allocation using `LEFT JOIN`.
44. Display all employees with salary and project details if available.
45. Display employees without salary but with project allocation.
46. Display employees with salary but without project allocation.
47. Display employees without salary and without project allocation.
48. Display all employees with salary, department, and project allocation.
49. Display all employees with salary, department, project allocation, and match status.
50. Display all employees where either department, salary, or project allocation is missing.

---

# G. RIGHT JOIN Questions: Employees + Salaries

1. Display all salary records with employee details using `RIGHT JOIN`.
2. Display salary records even if employee is missing.
3. Display salary records whose employee is missing.
4. Display salary records for employee id not found in employees table.
5. Display salary records with employee name where available.
6. Display salary records and replace missing employee name with `No Employee`.
7. Display salary records and employee status where available.
8. Display salary records where employee status is Active or employee is missing.
9. Display salary records where employee city is Pune or employee is missing.
10. Display salary records where employee department is Finance or employee is missing.
11. Display salary records with department name using joins.
12. Display salary records with employee and department details.
13. Display salary records with invalid employee id.
14. Display salary records without matching employee record.
15. Display salary records with matching employee record only using `RIGHT JOIN`.
16. Display salary records with salary greater than 60000 and employee details.
17. Display salary records with bonus greater than 7000 and employee details.
18. Display salary records with annual salary greater than 700000.
19. Display salary records with annual income greater than 800000.
20. Display salary records where salary year is 2024.
21. Display salary records where employee name starts with A or employee is missing.
22. Display salary records where employee job role contains Manager or employee is missing.
23. Display salary records where employee city is Mumbai or employee is missing.
24. Display salary records where employee department id is NULL or employee is missing.
25. Display salary records where employee dept_id is invalid or employee is missing.
26. Count salary records using `RIGHT JOIN`.
27. Count salary records with matching employees.
28. Count salary records without matching employees.
29. Display salary year-wise salary record count.
30. Display salary year-wise total salary.
31. Display salary year-wise average bonus.
32. Display salary year-wise maximum salary.
33. Display salary year-wise minimum salary.
34. Display all salary records ordered by salary descending.
35. Display all salary records ordered by bonus descending.
36. Display all salary records ordered by employee name.
37. Display salary records where salary is between 50000 and 80000.
38. Display salary records where bonus is not between 3000 and 7000.
39. Display salary records where salary plus bonus is greater than 70000.
40. Display salary records where bonus is greater than salary divided by 10.

---

# G. RIGHT JOIN Questions: Employees + Salaries

## Continued

1. Display all salary records with employee match status.
2. Display all salary records with department match status.
3. Display salary records that belong to employees from valid departments.
4. Display salary records that belong to employees without valid departments.
5. Display salary records where employee is active and department exists.
6. Display salary records where employee is inactive or employee is missing.
7. Display salary records where employee city and department location are the same.
8. Display salary records where employee city and department location are different.
9. Display salary records where employee department is IT or salary is greater than 75000.
10. Display salary records where employee department is Finance or bonus is greater than 8000.

---

# H. INNER JOIN Questions: Projects + Clients + Employee Projects

1. Display project name and client name using `INNER JOIN`.
2. Display project id, project name, client name, and client city.
3. Display active projects with client names.
4. Display completed projects with client names.
5. Display projects whose client city is Pune.
6. Display projects whose client city is Mumbai.
7. Display projects whose client city is Bangalore.
8. Display projects whose client city is Delhi.
9. Display projects whose client name starts with B.
10. Display projects whose client name contains C.
11. Display projects with valid client records only.
12. Display projects whose client id exists in clients table.
13. Display employees assigned to projects using `INNER JOIN`.
14. Display employee name and project name using employee project mapping.
15. Display employee name, project name, and assigned role.
16. Display employee name, project name, and allocation percent.
17. Display employees assigned to ETL Migration project.
18. Display employees assigned to Sales Dashboard project.
19. Display employees assigned to Risk Analysis project.
20. Display employees assigned to Completed projects.
21. Display employees assigned to Active projects.
22. Display employees assigned to projects with allocation greater than 70.
23. Display employees assigned to projects with allocation less than 60.
24. Display employees assigned as Developer in project allocation.
25. Display employees assigned as Analyst in project allocation.
26. Display project-wise employee count.
27. Display project-wise average allocation.
28. Display project-wise maximum allocation.
29. Display project-wise minimum allocation.
30. Display projects having more than 1 employee assigned.
31. Display projects having total allocation greater than 100.
32. Display projects having average allocation greater than 60.
33. Display project-wise employee count for active projects.
34. Display client-wise project count.
35. Display client-wise active project count.
36. Display client-wise completed project count.
37. Display client-wise employee allocation count.
38. Display client-wise total allocation percent.
39. Display client-wise average allocation percent.
40. Display clients having more than 1 project.
41. Display clients having active project count greater than 0.
42. Display clients whose projects have total allocation greater than 100.
43. Display employee name, department name, project name, and client name.
44. Display employee name, city, project name, and client city.
45. Display employees whose city and client city are the same.
46. Display employees whose city and client city are different.
47. Display employees from IT department assigned to active projects.
48. Display employees from Sales department assigned to completed projects.
49. Display Finance employees assigned to Risk Analysis project.
50. Display employees assigned to projects where client city is Pune.

---

# I. LEFT JOIN Questions: Projects, Clients, and Employee Projects

1. Display all projects with client details using `LEFT JOIN`.
2. Display projects that do not have client details.
3. Display projects whose client id is NULL.
4. Display projects whose client id is invalid.
5. Display all projects and replace missing client name with `No Client`.
6. Display all projects and client city if available.
7. Display all active projects and client details if available.
8. Display all completed projects and client details if available.
9. Display all projects where client is missing or project is Active.
10. Display all projects where client is missing or project is Completed.
11. Display all clients with their projects using `LEFT JOIN`.
12. Display clients that do not have any project.
13. Display all clients and replace missing project name with `No Project`.
14. Display client-wise project count including zero projects.
15. Display client-wise active project count including zero projects.
16. Display client-wise completed project count including zero projects.
17. Display all projects with assigned employees using `LEFT JOIN`.
18. Display projects that do not have assigned employees.
19. Display all projects and employee count including zero employees.
20. Display all projects and average allocation including projects without allocation.
21. Display all employees with project assignment using `LEFT JOIN`.
22. Display employees who are not assigned to any project.
23. Display active employees without project assignment.
24. Display inactive employees without project assignment.
25. Display all employees with project name if assigned.
26. Display all employees with assigned role if assigned.
27. Display all employees and replace missing project name with `No Project`.
28. Display all employees and replace missing assigned role with `No Role`.
29. Display employee-wise project count including zero projects.
30. Display employee-wise total allocation including zero allocation.
31. Display employees whose project allocation is missing.
32. Display employees whose project allocation is available.
33. Display employees assigned to invalid project id.
34. Display employee project records where employee is missing.
35. Display employee project records where project is missing.
36. Display employee project records where employee or project is missing.
37. Display all employee-project mappings with employee and project details.
38. Display all employee-project mappings and client details if available.
39. Display all projects with clients and employees if available.
40. Display all projects with missing client or missing employee assignment.
41. Display all clients with projects and assigned employees if available.
42. Display clients with no projects and projects with no employees separately.
43. Display all employees with department and project details if available.
44. Display employees with department but no project.
45. Display employees with project but no department.
46. Display employees without department and without project.
47. Display all departments with employees and project details if available.
48. Display departments with no employees and no projects.
49. Display all active employees with department and project if available.
50. Display all inactive employees with department and project if available.

---

# J. Combination of All Joins / Multi-Table Join Questions
#dept_id, dept_name,location=departments1
#emp_id,emp_name,dept_id,city,job_role,status=employees1
#client_id,client_name,client_city=clients
#project_id,project_name,client_id,project_status=projects1
#emp_id,project_id,assigned_role,allocation_percent=employee_projects

#1. Display employee name, department name, salary, project name, and client name.
select emp_name ,dept_name,salary, project_name,client_name 

2. Display all employees with department, salary, project, and client details if available.
3. Display only employees who have department, salary, project, and client details.
4. Display employees who have department but no salary record.
5. Display employees who have salary but no project allocation.
6. Display employees who have project allocation but no salary record.
7. Display employees who have neither salary nor project allocation.
8. Display employees who have invalid department but valid project.
9. Display employees who have valid department but invalid project.
10. Display employees who have valid salary but invalid department.
11. Display employees from IT department with salary and project details.
12. Display employees from Finance department with salary and project details.
13. Display Sales employees with project and client details.
14. Display HR employees with salary and project details if available.
15. Display active employees with department, salary, and project details.
16. Display inactive employees with department, salary, and project details.
17. Display employees whose salary is greater than 60000 and assigned to a project.
18. Display employees whose bonus is greater than 5000 and assigned to active projects.
19. Display employees assigned to projects whose client city is Pune.
20. Display employees assigned to projects whose client city is Mumbai.
21. Display employees assigned to projects whose client city is Bangalore.
22. Display employees assigned to projects whose project status is Completed.
23. Display employees assigned to projects whose project status is Active.
24. Display department-wise project allocation count.
25. Display department-wise total allocation percent.
26. Display department-wise average salary for employees assigned to projects.
27. Display department-wise total salary for employees assigned to active projects.
28. Display city-wise employee count for employees assigned to projects.
29. Display client-wise employee count.
30. Display client-wise total allocation percent.
31. Display project-wise total salary of assigned employees.
32. Display project-wise average salary of assigned employees.
33. Display project-wise maximum salary of assigned employees.
34. Display project-wise minimum salary of assigned employees.
35. Display client-wise average salary of assigned employees.
36. Display clients whose assigned employee average salary is greater than 60000.
37. Display projects whose assigned employee total salary is greater than 100000.
38. Display departments whose project allocation total is greater than 100.
39. Display cities whose project allocation average is greater than 60.
40. Display employees whose city is same as client city.
41. Display employees whose city is different from client city.
42. Display employees whose department location is same as client city.
43. Display employees whose department location is different from client city.
44. Display employees with department missing but project assigned.
45. Display employees with project assigned but client missing.
46. Display projects with client missing but employee assigned.
47. Display departments with no employees and no project allocation.
48. Display clients with no projects and no employee allocation.
49. Display complete employee-project-client-department-salary report using required joins.
50. Display complete mismatch report showing missing department, missing salary, missing project, and missing client details.







---




