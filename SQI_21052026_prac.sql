select* from emp;
INSERT INTO emp VALUES
(101, 'Amit', 'IT', 'Developer', 55000, 5000, 28, 'Pune', 2021, 'Active'),
(102, 'Neha', 'HR', 'HR Executive', 42000, 3000, 30, 'Mumbai', 2020, 'Active'),
(103, 'Rahul', 'Finance', 'Analyst', 60000, 7000, 32, 'Delhi', 2019, 'Active'),
(104, 'Priya', 'IT', 'Tester', 48000, 4000, 26, 'Pune', 2022, 'Active'),
(105, 'Karan', 'Sales', 'Sales Executive', 35000, 2000, 25, 'Nagpur', 2023, 'Inactive'),
(106, 'Sneha', 'Finance', 'Accountant', 52000, 4500, 29, 'Mumbai', 2021, 'Active'),
(107, 'Vikas', 'IT', 'Developer', 75000, 8000, 35, 'Bangalore', 2018, 'Active'),
(108, 'Anjali', 'HR', 'Recruiter', 39000, 2500, 27, 'Pune', 2022, 'Inactive'),
(109, 'Rohit', 'Sales', 'Manager', 68000, 6000, 34, 'Delhi', 2017, 'Active'),
(110, 'Meera', 'Finance', 'Manager', 82000, 9000, 38, 'Mumbai', 2016, 'Active'),
(111, 'Suresh', 'IT', 'Support', 30000, 1500, 24, 'Pune', 2024, 'Active'),
(112, 'Pooja', 'Sales', 'Sales Executive', 37000, 2200, 26, 'Bangalore', 2023, 'Active'),
(113, 'Nitin', 'HR', 'Manager', 72000, 7500, 36, 'Delhi', 2015, 'Active'),
(114, 'Riya', 'IT', 'Developer', 64000, 6500, 31, 'Mumbai', 2020, 'Inactive'),
(115, 'Manish', 'Finance', 'Analyst', 58000, 5500, 33, 'Pune', 2019, 'Active');

#A. Arithmetic Operator Questions
select*from emp;
#Display employee name, salary, bonus, and total income using salary plus bonus.
select emp_name,salary,bonus,(salary+bonus) as total_income from emp;

#Display employee name and salary after adding 5000 to each employee salary.
select emp_name,salary,(salary+5000) as update_sel from emp;

#Display employee name and salary after subtracting 2000 from salary.
select emp_name,salary,(salary-2000) as update_sel from emp;

#Display employee name and double salary using multiplication.
select emp_name,(salary*salary) as update_sel from emp;

#Display employee name and half salary using division.
select emp_name,(salary/2) as update_sel from emp;

#Display employee name and annual salary using salary multiplied by 12.
select emp_name,(salary*12) as annual_salary from emp;

#Display employee name and annual bonus using bonus multiplied by 12.
select emp_name,(bonus*12) as annual_bonus from emp;

#Display employee name and total annual income using salary and bonus.
select emp_name,((bonus+salary)*12) as total_annual_income from emp;

#Display employees whose salary plus bonus is greater than 60000.
select emp_name,((bonus+salary)>60000) as emp from emp;

#Display employees whose salary minus bonus is less than 50000.
select emp_name,((salary-bonus)<50000) as emp from emp;

#Display employees whose salary multiplied by 12 is greater than 700000.
select emp_name,((salary*12)>700000) as annual_salary from emp;

#Display employees whose bonus multiplied by 2 is greater than 10000.
select emp_name,((bonus*2)>10000) as update_bonus from emp;

#Display employees whose salary divided by 2 is greater than 30000.
select emp_name,((salary/2)>30000) as update_salary from emp;

#Display employees whose bonus divided by 2 is less than 3000.
select emp_name,((bonus/2)<3000) as update_bouns from emp;

#Display employees whose salary plus bonus is equal to 60000.
select emp_name,((bonus+salary)=60000) as update_bouns from emp;

#Display employees whose salary plus bonus is not equal to 60000.
select emp_name,((bonus+salary)!=60000) as update_sal from emp;

#Display employees whose salary minus bonus is greater than 50000.
select emp_name,((salary-bonus)>60000) as update_sal from emp;

#Display employees whose salary plus 10000 is greater than 70000.
select emp_name,((salary+10000)>70000) as update_sal from emp;

#Display employees whose bonus plus 1000 is less than 5000.
select emp_name,((bonus+1000)<5000) as update_bonus from emp;

select*from emp;
#Display employees whose salary after 10% increase is greater than 70000.
select emp_name,((salary +salary%10)>70000) as update_sal from emp;

#Display employees whose salary after 10% decrease is less than 50000.
select emp_name,((salary -salary%10)<50000) as update_sal from emp;

#Display employees whose annual salary is between 500000 and 900000.
select emp_name,(salary*12) as annual_sal from emp where (salary*12) between 500000 and 900000;

#Display employees whose total monthly income is between 50000 and 80000.
select emp_name,(salary+bonus) as update_sal from emp where(salary+bonus) between 50000 and 80000;

#Display employees whose bonus is more than 10% of salary.
select emp_name from  emp where( bonus>salary*10/100);

#Display employees whose bonus is less than 10% of salary.
select emp_name from  emp where( bonus<salary*10/100);

#Display employees whose salary plus bonus is greater than age multiplied by 2000.
select emp_name from emp where( salary+bonus)> age*2000;

#Display employees whose salary divided by age is greater than 1800.
select emp_name from emp where( salary/age) >1800;

#Display employees whose salary plus bonus is less than salary multiplied by 2.
select emp_name from emp where( salary-bonus)< age*2;

#Display employees whose annual bonus is greater than 50000.
select emp_name from emp where( bonus*12)> 50000;

#Display employees whose annual salary plus annual bonus is greater than 800000.
select emp_name from emp where  ( salary*12+bonus*12)> 800000;

#Display employees whose salary difference from 100000 is greater than 30000.
select emp_name from emp where  ( 100000-salary)> 30000;

#Display employees whose bonus difference from 10000 is less than 5000.
select emp_name from emp where ( 10000-bonus)< 5000;

#Display employee name and remaining salary after bonus deduction.
select emp_name, (salary+bonus) as remaining_salary from emp;

#Display employee name and salary after adding bonus twice.
select emp_name, (salary+bonus*2) as remaining_salary from emp;

#Display employee name and salary after deducting half bonus.
select emp_name, (salary+bonus/2) as remaining_salary from emp;

#Display employee name and salary percentage based on 100000.
select emp_name, (salary/100000*100) as remaining_salary from emp;

#Display employee name and bonus percentage based on salary.
select emp_name, (bonus/salary*100) as remaining_salary from emp;

#Display employees whose salary plus age is greater than 60000.
select emp_name, (salary+age) >60000 as remaining_salary from emp;

#Display employees whose salary minus age is greater than 50000.
select emp_name, (salary-age) >50000 as remaining_salary from emp;
select*from emp;
#Display employees whose joining year plus age is greater than 2050.
select emp_name, (joining_year +age) >2050 as  joining_year from emp;

#B. Comparison Operator Questions

#Display employees whose salary is equal to 55000.
select*from emp where salary = 55000;

#Display employees whose salary is not equal to 55000.
select*from emp where salary != 55000;

#Display employees whose salary is greater than 50000.
select*from emp where salary > 55000;

#Display employees whose salary is less than 50000.
select*from emp where salary < 55000;

#Display employees whose salary is greater than or equal to 60000.
select*from emp where salary >= 55000;

#Display employees whose salary is less than or equal to 40000.
select*from emp where salary <= 55000;

#Display employees whose bonus is equal to 5000.
select*from emp where bonus = 5000;

#Display employees whose bonus is not equal to 5000.
select*from emp where bonus != 5000;

#Display employees whose bonus is greater than 4000.
select*from emp where bonus >4000;

#Display employees whose bonus is less than 4000.
select*from emp where bonus <4000;

#Display employees whose age is equal to 30.
select*from emp where age = 30;

#Display employees whose age is not equal to 30.
select*from emp where age != 30;

#Display employees whose age is greater than 30.
select*from emp where age> 30;

#Display employees whose age is less than 30.
select*from emp where age < 30;

#Display employees whose age is greater than or equal to 35.
select*from emp where age >= 35;

#Display employees whose age is less than or equal to 25.
select*from emp where age <= 25;

#Display employees whose joining year is equal to 2021.
select*from emp where joining_year=2021;

#Display employees whose joining year is not equal to 2021.
select*from emp where joining_year!=2021;

#Display employees who joined after 2020.
select*from emp where joining_year>2021;

#Display employees who joined before 2020.
select*from emp where joining_year<2020;

#Display employees who joined in or after 2022.
select*from emp where joining_year>=2022;

#Display employees who joined in or before 2018.
select*from emp where joining_year<=2018;

#Display employees whose department is equal to IT.
select*from emp where department='it';

#Display employees whose department is not equal to IT.
select*from emp where department!='it';

#Display employees whose city is equal to Pune.
select*from emp where city ='pune';

#Display employees whose city is not equal to Pune.
select*from emp where city !='pune';
select * from emp
# Display employees whose status is equal to Active.
select*from emp where status ='Active';

#Display employees whose status is not equal to Active.
select*from emp where status !='Active';

#Display employees whose job role is equal to Developer.
select*from emp where job_role ='Developer';

#Display employees whose job role is not equal to Developer.
select*from emp where job_role !='Developer';

#Display employees whose salary is greater than bonus.
select*from emp where salary > bonus;

#Display employees whose salary is less than bonus multiplied by 20.
select*from emp where salary < bonus*20;

#Display employees whose salary is greater than age multiplied by 1500.
select*from emp where salary > age*1500;

#Display employees whose bonus is greater than age multiplied by 100.
select*from emp where bonus > age*100;

#Display employees whose salary is greater than or equal to 50000 and compare only salary column.
select emp_name,salary from emp where salary >= 50000;

#Display employees whose bonus is less than or equal to 3000.
select *  from emp where bonus <3000;

#Display employees whose emp_id is greater than 108.
select *  from emp where emp_id >108;

#Display employees whose emp_id is less than 108.
select *  from emp where emp_id <108;

#Display employees whose emp_id is equal to 110.
select *  from emp where emp_id =110;

#Display employees whose emp_id is not equal to 110.
select *  from emp where emp_id !=110;

#C. Logical Operator Questions

#Display employees from IT department and salary greater than 50000.
select *  from emp where department='it' and salary > 50000;

#Display employees from Finance department and salary greater than 55000.
select *  from emp where department='Finance' and salary > 55000;

#Display employees from HR department and age greater than 30.
select *  from emp where department='Hr' and age > 30;

#Display employees from Sales department and bonus less than 5000.
select *  from emp where department='Sales' and bonus <5000;

#Display employees whose city is Pune and status is Active.
select *  from emp where city ='pune' and status = 'Active';

#Display employees whose city is Mumbai and department is Finance.
select *  from emp where city ='Mumbai' and department = 'Finance';

#Display employees whose salary is greater than 50000 and bonus is greater than 5000.
select *  from emp where salary >50000 and bonus >5000;

#Display employees whose salary is less than 50000 and age is less than 30.
select *  from emp where salary <50000 and age<30;

# Display employees whose department is IT and job role is Developer.
select *  from emp where department ='It' and job_role='Developer';

#Display employees whose department is HR and job role is Manager.
select *  from emp where department ='HR' and job_role='Manager';

#Display employees whose department is Finance and job role is Analyst.
select *  from emp where department ='Finance' and job_role='Analyst';

#Display employees whose city is Delhi and status is Active.
select *  from emp where city='Delhi' and status = 'Active';

#Display employees whose age is greater than 30 and joining year is before 2020.
select *  from emp where age >30 and joining_year <2020;

#Display employees whose salary is greater than 60000 and joining year is before 2020.
select *  from emp where salary >60000 and joining_year <2020;

#Display employees whose bonus is greater than 6000 and status is Active.
select *  from emp where bonus>6000 and status ='active';

# Display employees whose city is Pune or city is Mumbai.
select*from emp where city='pune' or city='mumbai';

# Display employees whose department is IT or department is Finance.
select * from emp where department = 'it' or department = 'Finance';

# Display employees whose status is Active or salary is greater than 70000.
select * from emp where status ='Active' or salary >70000;

# Display employees whose job role is Developer or job role is Manager.
select * from emp where job_role = 'Developer' or job_role = 'manager';

# Display employees whose age is less than 25 or salary is less than 35000.
select * from emp where age<25 or salary <35000;

#Display employees whose department is Sales or city is Bangalore.
select * from emp where department='sales' or city = 'bangalore';

#Display employees whose bonus is less than 3000 or salary is greater than 70000.
select * from emp where bonus<3000 or salary > 70000;

#Display employees whose joining year is 2023 or joining year is 2024.
select * from emp where joining_year=2023 or joining_year=2024;

#Display employees whose city is Delhi or department is HR.
Select * from emp where city = 'Delhi' or department='HR';

#Display employees whose salary is greater than 60000 or bonus is greater than 7000.
Select * from emp where salary >60000 or bonus>7000;

#Display employees who are not from IT department.
Select*from emp where department != 'it';

#Display employees who are not from Pune city.
Select*from emp where city != 'pune';

# Display employees whose status is not Active.
Select*from emp where status !='Active';

# Display employees whose job role is not Developer.
Select*from emp where job_role != 'Developer';

# Display employees whose salary is not greater than 50000.
Select*from emp where salary <50000;

# Display employees whose age is not less than 30.
Select*from emp where age >  30;

# Display employees whose department is not HR.
Select*from emp where department != 'HR';

# Display employees whose city is not Mumbai.
Select*from emp where city != 'mumbai';

# Display employees whose bonus is not equal to 5000.
Select*from emp where bonus != 5000;

# Display employees whose joining year is not 2021.
Select*from emp where joining_year != 2021;

#Display employees from IT department and city Pune and status Active.
Select*from emp where  department='IT' and city='pune' and status='Active';

# Display employees from Finance department and city Mumbai and salary greater than 50000.
Select*from emp where department='Finance' and city='Mumbai' and salary >50000;

# Display employees from Sales department and age less than 30 and status Active.
Select*from emp where department='Sales' and age <30 and status = 'Active';

# Display employees whose salary is greater than 50000 and bonus greater than 4000 and age greater than 30.
Select*from emp where salary >50000 and bonus >4000 and age >30;

# Display employees whose department is IT or Finance and status is Active.
Select*from emp where (department='it' or department='Finance') and status ='Active';

# Display employees whose city is Pune or Mumbai and salary greater than 50000.
Select*from emp where city='pune' or city = 'mumbai' and salary >50000;

# Display employees whose department is HR or Sales and bonus less than 4000.
Select*from emp where (department='HR' or department = 'Sales' ) and bonus <4000;

# Display employees whose salary is greater than 60000 or age greater than 35 and status Active.
Select*from emp where salary >60000 or age>35 and status='Active';

# Display employees whose joining year is before 2020 and salary greater than 60000 or bonus greater than 7000.
Select*from emp where  joining_year <2020 and salary >60000 or bonus >7000; 

# Display employees who are not from Sales department and not from HR department.
Select*from emp where department != 'Sales' and department !='HR';

#Display employees from IT department using one query and Finance department using another query with UNION.
Select emp_name ,Department from emp where Department='it'union Select emp_name, Department from emp where Department='Finance';

#Display employees from HR department and Sales department using UNION.
Select emp_name ,Department from emp where Department='HR'union Select emp_name, Department from emp where Department='Sales';

#Display employees from Pune city and Mumbai city using UNION.
Select * from emp where city='pune'union Select *from emp where city='Mumbai';

#Display employees with salary greater than 60000 and employees with bonus greater than 7000 using UNION.
Select * from emp where Salary>60000 union Select * from emp where bonus>7000;

#Display employees who joined before 2020 and employees whose salary is greater than 70000 using UNION.
Select * from emp where joining_year<2020 union Select * from emp where Salary>70000;

#Display employees from Active status and employees from IT department using UNION.
Select * from emp where status= 'Active' union Select * from emp where department='it';

#Display employees from Developer role and Manager role using UNION.
Select*from emp Where job_role ='developer' Union select*from emp where job_role = 'Manager';

#Display employees from Delhi city and Bangalore city using UNION.
Select*from emp Where city ='Delhi' Union select*from emp where city = 'Bangalore';

#Display employees whose age is greater than 30 and employees whose bonus is greater than 6000 using UNION.
Select*from emp Where age >30  Union select*from emp where bonus >6000;

#Display employees from Finance department and employees from Mumbai city using UNION.
Select*from emp Where department ='Finance' Union select*from emp where city='Mumbai';

#Display employees from IT department and Finance department using UNION ALL.
Select*from emp Where department ='it' Union all select*from emp where department='Finance';

#Display employees from Pune city and Pune city again using UNION ALL.
Select*from emp Where city ='pune' Union all select*from emp where city='pune';

#Display employees from Active status and Active status again using UNION ALL.
Select*from emp Where status ='Active' Union all select*from emp where status='Active';

#Display employees with salary greater than 50000 and salary greater than 60000 using UNION ALL.
Select*from emp Where salary >50000 Union all select*from emp where salary>60000;

#Display employees from HR department and employees from Delhi city using UNION ALL.
Select*from emp Where department='HR' Union all select*from emp where city='Delhi';

# Display common employees between IT department and Pune city using `INTERSECT`.
Select*from emp Where department='it' intersect select*from emp where city='pune';

# Display common employees between Finance department and Mumbai city using `INTERSECT`.
Select*from emp Where department='Finance' intersect select*from emp where city='Mumbai';

# Display common employees between Active status and salary greater than 60000 using `INTERSECT`.
Select*from emp Where status='Active' intersect select*from emp where salary >'60000';

# Display common employees between Developer role and IT department using `INTERSECT`.
Select*from emp Where  (job_role='Developer') intersect select*from emp where ( department ='IT');

# Display common employees between Manager role and salary greater than 70000 using `INTERSECT`.
Select*from emp Where  (job_role='Manager') intersect select*from emp where ( salary >'70000');

# Display employees from Active status except employees from IT department using `EXCEPT`.
Select*from emp Where  (status='Active') EXCEPT select*from emp where ( department ='IT');

# Display employees from IT department except employees from Pune city using `EXCEPT`.
Select*from emp Where  (department='IT') EXCEPT select*from emp where ( city ='Pune');

# Display employees from Finance department except employees from Mumbai city using `EXCEPT`.
Select*from emp Where  (department='Finance') EXCEPT select*from emp where ( city ='Mumbai');

# Display employees with salary greater than 50000 except employees with bonus greater than 7000 using `EXCEPT`.
Select*from emp Where  (salary>50000) EXCEPT select*from emp where ( bonus >7000);

# Display employees from all departments except HR department using `EXCEPT`.
Select *from emp where( department=0)EXCEPT select*from emp where ( department ='HR');

# Display employees from Pune city except inactive employees using `EXCEPT`.
Select *from emp where( city='Pune')EXCEPT select*from emp where ( status ='inactive');

# Display employees from Sales department except employees from Bangalore city using `EXCEPT`.
Select *from emp where( department='Sales')EXCEPT select*from emp where ( city ='Bangalore');

# Display employees with age greater than 30 except employees with salary greater than 70000 using `EXCEPT`.
Select *from emp where( age>30)EXCEPT select*from emp where ( salary >70000);

# Display employees who joined before 2020 except employees from Finance department using `EXCEPT`.
Select *from emp where( joining_year <2020)EXCEPT select*from emp where ( department >'Finance');

# Display employees from Active status except employees from Manager role using `EXCEPT`.
Select *from emp where( status ='Active')EXCEPT select*from emp where (  job_role='Manager');

# Display employees from IT and HR departments using set operators.
Select *from emp where( department ='IT') UNION select*from emp where (  department='HR');

# Display employees from Pune and Delhi cities using set operators.
Select *from emp where( city ='pune') UNION select*from emp where (  city='Delhi');

# Display employees with salary greater than 60000 and employees with age greater than 35 using set operators.
Select *from emp where( salary > 60000) UNION select*from emp where (  age>35);

# Display employees from Finance department and employees with Analyst role using set operators.
Select *from emp where( department = 'Finance') UNION All select*from emp where (  job_role='Analyst');

# Display employees from Sales department and employees with salary less than 40000 using set operators.
Select *from emp where( department = 'Sales') UNION All select*from emp where (  salary<40000);



#E. Special Operator Questions

# Display employees whose department is in IT, Finance, and HR.
select* from emp where  department IN ('IT','Finance','HR');

# Display employees whose city is in Pune, Mumbai, and Delhi.
select* from emp where city in ('pune','mumbai' , 'Delhi');

# Display employees whose job role is in Developer, Manager, and Analyst.
select* from emp where job_role in ('Developer','Manager','Analyst');

# Display employees whose emp_id is in 101, 105, 110, and 115.
select* from emp where emp_id in (101,105,110,115);

# Display employees whose joining year is in 2020, 2021, and 2022.
select* from emp where joining_year in (2020,2021,2022);

# Display employees whose department is not in IT and Finance.
select* from emp where Department not in ('it','Finance');

# Display employees whose city is not in Pune and Mumbai.
select* from emp where city not in ('pune','Mumbai');

# Display employees whose job role is not in Developer and Manager.
select* from emp where job_role not in ('Developer','Manager');

# Display employees whose emp_id is not in 101, 102, and 103.
select* from emp where emp_id not in (101,102,103);

# Display employees whose joining year is not in 2023 and 2024.
select* from emp where joining_year not in (2023,2024);

# Display employees whose salary is between 40000 and 70000.
select* from emp where salary  between 40000 and 70000;

# Display employees whose bonus is between 3000 and 7000.
select* from emp where bonus  between 3000 and 7000;

# Display employees whose age is between 25 and 35.
select* from emp where age  between 25 and 35;

# Display employees whose joining year is between 2018 and 2022.
select* from emp where joining_year  between 2018 and 2022;

# Display employees whose emp_id is between 105 and 112.
select* from emp where emp_id  between 105 and 112;

# Display employees whose salary is not between 40000 and 70000.
select* from emp where salary not  between 40000 and 70000;

# Display employees whose bonus is not between 3000 and 7000.
select* from emp where bonus not  between 3000 and 7000;

# Display employees whose age is not between 25 and 35.
select* from emp where age not  between 25 and 35;

# Display employees whose joining year is not between 2018 and 2022.
select* from emp where joining_year not  between 2018 and 2022;

# Display employees whose emp_id is not between 105 and 112.
select* from emp where emp_id not  between 105 and 112;

# Display employees whose name starts with A.
select* from  emp where  emp_name like'A%';

# Display employees whose name starts with R.
select* from  emp where  emp_name like'R%';

# Display employees whose name ends with a.
select* from  emp where  emp_name like'%a';

# Display employees whose name contains e.
select* from  emp where  emp_name like'%e%';

# Display employees whose name contains i.
select* from  emp where  emp_name like'%i%';

# Display employees whose city starts with P
select* from  emp where  emp_name like'P%';

# Display employees whose city ends with i.
select* from  emp where  emp_name like'%i';

# Display employees whose department contains a.
select* from  emp where  emp_name like'%a%';

# Display employees whose job role contains Manager.
select* from  emp where  job_role like'Manager';

# Display employees whose job role contains Executive.
select* from  emp where  job_role like 'Executive';

# Display employees whose name does not start with A.
select* from  emp where  emp_name not like 'A%';

# Display employees whose city does not start with M.
select* from  emp where city  not like 'M%';

# Display employees whose department does not contain a.
select* from  emp where department  not like '%A%';

# Display employees whose job role does not contain Developer.
select* from  emp where  job_role not like 'Developer';

# Display employees whose name has exactly 4 characters.
select* from  emp where  emp_name like '____';

# Display employees whose name has exactly 5 characters.
select* from  emp where  emp_name like '_____';

# Display employees whose name has second character as e.
select* from  emp where  emp_name like '_e%';

# Display employees whose city has second character as u.
select* from  emp where  city like '_u%';

# Display employees whose department is not null.
select* from  emp where  department='not null';

# Display employees whose bonus is not null.
select* from  emp where  bonus='not null';








#
#
#



































































