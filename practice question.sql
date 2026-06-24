# Q1) Display employee name, salary, bonus, and total income using salary plus bonus.
 select
 emp_name, salary,bonus,(salary+bonus) as total_income from emp;

 # Q2) Display employee name and salary after adding 5000 to each employee salary.
 
  select emp_name,salary,(salary+5000) as update_salary from emp;

 # Q3) Display employee name and salary after subtracting 2000 from salary.
 
   select emp_name,salary,(salary-2000) as update_salary from emp;
   
   # Q4) Display employee name and double salary using multiplication.
   
      select emp_name,salary,(salary*2) as update_salary from emp;
      
      # Q5) Display employee name and half salary using division.

      select emp_name,salary,(salary/2) as update_salary from emp;

# Q6)Display employee name and annual salary using salary multiplied by 12.

      select emp_name,salary,(salary*12) as annual_salary from emp;
      
      #Q7) Display employee name and annual bonus using bonus multiplied by 12.
      select emp_name,salary,(bonus*12) as annual_bonus from emp;
      
      # Q8 ) Display employee name and total annual income using salary and bonus.
            select emp_name,salary,(salary*12) + (bonus*12) as annual_income from emp;

# Q9) Display employees whose salary plus bonus is greater than 60000.

            select emp_name,salary,(salary+ bonus) >60000 as salary_bonus from emp;
            

# Q10) Display employees whose salary minus bonus is less than 50000.

            select emp_name,salary,(salary - bonus) < 50000 as salarywithout_bonus from emp;
            
            # Q11) Display employees whose salary multiplied by 12 is greater than 700000.

            select emp_name,salary,(salary * 12) > 700000 as 12months_salary from emp;
            
            # Q12) Display employees whose bonus multiplied by 2 is greater than 10000.
            
                        select emp_name,salary,(salary * 2) > 10000 as 2months_salary from emp;
                        
                        # Q13) Display employees whose salary divided by 2 is greater than 30000.

                        select emp_name,salary,(salary / 2) > 30000 as half_salary from emp;
                        
                        # Q14) Display employees whose bonus divided by 2 is less than 3000.
                        
		              select emp_name,salary,(bonus / 2) < 3000 as half_bonus from emp;
                    
                    # Q15) Display employees whose salary plus bonus is equal to 60000.
                    
		           select emp_name,salary,(bonus + salary) = 60000 from emp;
                   
                   # Q16) Display employees whose salary plus bonus is not equal to 60000.

		           select emp_name,salary,(bonus + salary) != 60000 from emp;
                   
                   # Q17) Display employees whose salary minus bonus is greater than 50000.

		           select emp_name,salary,( salary - bonus) > 50000 from emp;
                   
                   # Q18) Display employees whose salary plus 10000 is greater than 70000.
                   
                   select emp_name,salary,( salary + 10000) > 70000 from emp;

# Q19) Display employees whose bonus plus 1000 is less than 5000.

                   select emp_name,salary,( bonus + 1000) < 5000 from emp;
                   select*from emp;
                   # Q20 ) Display employees whose salary after 10% increase is greater than 70000.

                   select emp_name,salary,( salary + salary % 10 ) > 70000 from emp;
                   # Q21 ) Display employees whose salary after 10% decrease is less than 50000.
select emp_name,salary,( salary + salary % 10 ) > 70000 from emp;
#Q22)Display employees whose annual salary is between 500000 and 900000.

select emp_name,(salary*12) as annual_salary from emp where (salary*12) between 500000 and 900000;
#Q23)Display employees whose total monthly income is between 50000 and 80000.
select emp_name,(salary+bonus) as total_monthly_income from emp where (salary*bonus) between 50000 and 80000;

#Q24)Display employees whose bonus is more than 10% of salary.
select emp_name from emp where (bonus>salary*10/100);

#Q25) Display employees whose bonus is less than 10% of salary.
select emp_name from emp where (bonus<salary*10/100);

#Q26) Display employees whose salary plus bonus is greater than age multiplied by 2000.
select emp_name from emp where (bonus + salary) > (age*2000);

#Q27) Display employees whose salary divided by age is greater than 1800.
select emp_name from emp where (salary / age ) > 1800;

# Q28) Display employees whose salary plus bonus is less than salary multiplied by 2.
select emp_name,salary,bonus from emp where (salary + bonus) < (salary*2);
# Q29) Display employees whose annual bonus is greater than 50000.
select emp_name  from emp where ( bonus * 12 ) > 50000;
# Q30) Display employees whose annual salary plus annual bonus is greater than 800000.
select emp_name  from emp where ( salary * 12 ) + (bonus * 12) > 800000;

# Q31) Display employees whose salary difference from 100000 is greater than 30000.
select emp_name  from emp where ( 100000 - salary ) > 30000;

# Q32) Display employees whose bonus difference from 10000 is less than 5000.
select emp_name  from emp where ( 10000 - bonus ) < 5000;

# Q33) Display employee name and remaining salary after bonus deduction.
select emp_name  from emp where ( salary - bonus );
# Q34) Display employee name and salary after adding bonus twice.
select emp_name  from emp where ( salary +  (bonus *2) );
# Q35) Display employee name and salary after deducting half bonus.
select emp_name  from emp where ( salary +  (bonus / 2) );

# Q36) Display employee name and salary percentage based on 100000.
select emp_name  from emp where ( salary / 100000 * 100);

# Q 37) Display employee name and bonus percentage based on salary.
select emp_name  from emp where ( bonus/salary * 100);

# Q38) Display employees whose salary plus age is greater than 60000.
select emp_name  from emp where ( salary + age) > 60000;

# Q39) Display employees whose salary minus age is greater than 50000.
select emp_name  from emp where ( salary - age) > 50000;

# Q40) Display employees whose joining year plus age is greater than 2050.
select emp_name  from emp where ( joining_year + age) > 2050;

# Q 41) Display employees whose salary is equal to 55000.
select emp_name  from emp where salary= 55000;

# Q42) Display employees whose salary is not equal to 55000.
select emp_name  from emp where salary != 55000;

# Q43) Display employees whose salary is greater than 50000.
select emp_name  from emp where salary > 50000;

# Q44) Display employees whose salary is less than 50000.
select emp_name  from emp where salary < 50000;

# Q 45) select emp_name  from emp where salary > 50000;
select emp_name  from emp where salary < 50000;

#Q46) Display employees whose salary is less than or equal to 40000.
select emp_name  from emp where salary <= 40000 ;
 #Q47) Display employees whose bonus is equal to 5000.
 select emp_name  from emp where bonus = 5000 ;

#Q48) Display employees whose bonus is not equal to 5000.
 select emp_name  from emp where bonus != 5000 ;

#Q49) Display employees whose bonus is greater than 4000.
 select emp_name  from emp where bonus > 4000 ;


#Q50)Display employees whose bonus is less than 4000.
select emp_name  from emp where bonus < 4000 ;
 #Q50) Display employees whose age is equal to 30.
 select emp_name  from emp where age = 30 ;
# Q51) Display employees whose age is greater than 30
 select emp_name  from emp where age > 30 ;

#Q52)Display employees whose age is less than 30.
 select emp_name  from emp where age < 30 ;

#Q53)Display employees whose age is greater than or equal to 35.
 select emp_name  from emp where age >= 30 ;

#Q54) Display employees whose age is less than or equal to 25.
 select emp_name  from emp where age <= 25 ;

#Q55)Display employees whose joining year is equal to 2021.
 select emp_name  from emp where joining_year = 2021 ;

#Q56)Display employees whose joining year is not equal to 2021.
 select emp_name  from emp where joining_year != 30 ;

#Q57)Display employees who joined after 2020.
 select emp_name  from emp where joining_year > 2020 ;

#Q58)Display employees who joined in or after 2022.
 select emp_name  from emp where joining_year >= 2022 ;

#Q59)Display employees who joined in or before 2018.
 select emp_name  from emp where joining_year <= 2022 ;

#Q60) Display employees whose department is equal to IT.
 select emp_name  from emp where department = 'it';

#Display employees whose department is not equal to IT.
 select emp_name  from emp where department != 'it';

#Display employees whose city is equal to Pune.
 select emp_name  from emp where city = 'pune' ;

#Display employees whose city is not equal to Pune.
 select emp_name  from emp where city != 'pune' ;

#Display employees whose status is equal to Active.
 select emp_name  from emp where status = 'active' ;

#Display employees whose status is not equal to Active.
 select emp_name  from emp where status != 'active';

#Display employees whose job role is equal to Developer.
 select emp_name  from emp where job_role = 'developer';

#Display employees whose job role is not equal to Developer.
 select emp_name  from emp where job_role != 'developer' ;

#Display employees whose salary is greater than bonus.
 select emp_name  from emp where salary > bonus ;

#Display employees whose salary is less than bonus multiplied by 20.
 select emp_name  from emp where salary < (bonus *20);
 #Display employees whose bonus is greater than age multiplied by 100.
  select emp_name  from emp where bonus > (age *100); 

#QDisplay employees whose salary is greater than or equal to 50000 and compare only salary column.
  select emp_name,emp_id,salary from emp where salary >= 50000; 

#Display employees whose bonus is less than or equal to 3000.
select emp_name from emp where bonus <= 3000;
#Display employees whose emp_id is greater than 108.
select emp_name from emp where emp_id > 108;

#Display employees whose emp_id is less than 108.
 select emp_name from emp where emp_id < 108;

#Display employees whose emp_id is equal to 110.
 select emp_name from emp where emp_id = 110;

#Display employees whose emp_id is not equal to 110.
 select emp_name from emp where emp_id != 110;








            





