use sm;
# Practice | SQL | Having 

CREATE TABLE employee_sales (
    sale_id INT,
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    city VARCHAR(30),
    product_category VARCHAR(30),
    sale_amount INT,
    quantity INT,
    bonus INT,
    sale_year INT,
    sale_month VARCHAR(20),
    status VARCHAR(20)
);

INSERT INTO employee_sales VALUES
(1, 101, 'Amit', 'IT', 'Pune', 'Laptop', 55000, 2, 5000, 2024, 'January', 'Completed'),
(2, 102, 'Neha', 'HR', 'Mumbai', 'Mobile', 30000, 3, 3000, 2024, 'January', 'Completed'),
(3, 103, 'Rahul', 'Finance', 'Delhi', 'Laptop', 65000, 1, 6000, 2024, 'February', 'Completed'),
(4, 104, 'Priya', 'IT', 'Pune', 'Tablet', 25000, 4, 2500, 2024, 'February', 'Pending'),
(5, 105, 'Karan', 'Sales', 'Nagpur', 'Mobile', 40000, 5, 4000, 2024, 'March', 'Completed'),
(6, 106, 'Sneha', 'Finance', 'Mumbai', 'Laptop', 75000, 2, 7000, 2024, 'March', 'Completed'),
(7, 107, 'Vikas', 'IT', 'Bangalore', 'Monitor', 22000, 6, 2000, 2024, 'April', 'Completed'),
(8, 108, 'Anjali', 'HR', 'Pune', 'Tablet', 28000, 3, 2500, 2024, 'April', 'Pending'),
(9, 109, 'Rohit', 'Sales', 'Delhi', 'Laptop', 85000, 2, 8000, 2024, 'May', 'Completed'),
(10, 110, 'Meera', 'Finance', 'Mumbai', 'Mobile', 45000, 4, 4500, 2024, 'May', 'Completed'),
(11, 111, 'Suresh', 'IT', 'Pune', 'Keyboard', 8000, 10, 1000, 2025, 'January', 'Completed'),
(12, 112, 'Pooja', 'Sales', 'Bangalore', 'Mobile', 38000, 3, 3500, 2025, 'January', 'Completed'),
(13, 113, 'Nitin', 'HR', 'Delhi', 'Monitor', 18000, 5, 1500, 2025, 'February', 'Pending'),
(14, 114, 'Riya', 'IT', 'Mumbai', 'Laptop', 70000, 1, 6500, 2025, 'February', 'Completed'),
(15, 115, 'Manish', 'Finance', 'Pune', 'Tablet', 32000, 4, 3000, 2025, 'March', 'Completed'),
(16, 116, 'Divya', 'Sales', 'Pune', 'Laptop', 90000, 2, 8500, 2025, 'March', 'Completed'),
(17, 117, 'Aakash', 'IT', 'Delhi', 'Mobile', 36000, 3, 3500, 2025, 'April', 'Completed'),
(18, 118, 'Komal', 'HR', 'Mumbai', 'Keyboard', 9000, 8, 1000, 2025, 'April', 'Pending'),
(19, 119, 'Jay', 'Finance', 'Bangalore', 'Monitor', 24000, 5, 2500, 2025, 'May', 'Completed'),
(20, 120, 'Tina', 'Sales', 'Delhi', 'Tablet', 30000, 4, 3000, 2025, 'May', 'Completed');

## A. Basic `COUNT()` with `HAVING`

#1. Display departments having more than 3 sales records.
select department, count(department) from employee_sales 
group by department
having count(department)>3;

#2. Display departments having less than 4 sales records.
select department, count(department) from employee_sales 
group by department
having count(department)<4;

#3. Display departments having exactly 5 sales records.
select department, count(department) from employee_sales 
group by department
having count(department)=5;

#4. Display cities having more than 2 sales records.
select city, count(city) from employee_sales 
group by city
having count(city)>2;

#5. Display cities having less than 3 sales records.
select city, count(city) from employee_sales 
group by city
having count(city)<3;

#6. Display cities having exactly 4 sales records.
select city, count(city) from employee_sales 
group by city
having count(city)=4;

#7. Display product categories having more than 3 sales records.
select product_category, count(product_category) from employee_sales 
group by product_category
having count(product_category)>3;

#8. Display product categories having less than 4 sales records.
select product_category, count(product_category) from employee_sales 
group by product_category
having count(product_category)<4;

#9. Display product categories having exactly 2 sales records.
select product_category, count(product_category) from employee_sales 
group by product_category
having count(product_category)=2;


#10. Display sale years having more than 8 records.
select sale_year, count(sale_year) from employee_sales 
group by sale_year
having count(sale_year)>8;

#11. Display sale years having exactly 10 records.
select sale_year, count(sale_year) from employee_sales 
group by sale_year
having count(sale_year)=10;

#12. Display sale months having more than 1 sales record.
select sale_month, count(sale_month) from employee_sales 
group by sale_month
having count(sale_month)>1;

#13. Display sale months having exactly 2 sales records.
select sale_month, count(sale_month) from employee_sales 
group by sale_month
having count(sale_month)=2;

#14. Display statuses having more than 5 records.
select status, count(status) from employee_sales 
group by status
having count(status)>5;

#15. Display statuses having less than 5 records.
select status, count(status) from employee_sales 
group by status
having count(status)<5;

---

## B. `SUM()` with `HAVING`

#1. Display departments whose total sale amount is greater than 200000.
select department, sum(sale_amount) from employee_sales 
group by department
having sum(sale_amount)>200000;

#2. Display departments whose total sale amount is less than 150000.
select department, sum(sale_amount) from employee_sales 
group by department
having sum(sale_amount)<150000;

#3. Display departments whose total sale amount is between 150000 and 300000.
select department, sum(sale_amount) from employee_sales 
group by department
having sum(sale_amount) between 150000 and 300000;

#4. Display cities whose total sale amount is greater than 150000.
select city, sum(sale_amount) from employee_sales 
group by city
having sum(sale_amount) > 150000 ;

#5. Display cities whose total sale amount is less than 100000.
select city, sum(sale_amount) from employee_sales 
group by city
having sum(sale_amount) < 100000 ;

#6. Display cities whose total sale amount is between 100000 and 250000.
select city, sum(sale_amount) from employee_sales 
group by city
having sum(sale_amount) between 100000 and 250000 ;

#7. Display product categories whose total sale amount is greater than 100000.
select product_category, sum(sale_amount) from employee_sales 
group by product_category
having sum(sale_amount) > 100000  ;

#8. Display product categories whose total sale amount is less than 80000.
select product_category, sum(sale_amount) from employee_sales 
group by product_category
having sum(sale_amount)<80000 ;

#9. Display product categories whose total sale amount is between 80000 and 200000.
select product_category, sum(sale_amount) from employee_sales 
group by product_category
having sum(sale_amount) between 80000 and 200000 ;

#10. Display sale years whose total sale amount is greater than 400000.
select sale_year, sum(sale_amount) from employee_sales 
group by sale_year
having sum(sale_amount) > 400000 ;

#11. Display sale months whose total sale amount is greater than 70000.
select sale_month, sum(sale_amount) from employee_sales 
group by sale_month
having sum(sale_amount) > 70000 ;

#12. Display statuses whose total sale amount is greater than 300000.
select status, sum(sale_amount) from employee_sales 
group by status
having sum(sale_amount) > 300000 ;

#13. Display departments whose total bonus is greater than 20000.
select department, sum(bonus) from employee_sales 
group by department
having sum(bonus) > 20000 ;

#14. Display cities whose total bonus is greater than 15000.
select city, sum(bonus) from employee_sales 
group by city
having sum(bonus) > 15000 ;

#15. Display product categories whose total bonus is greater than 10000.
select product_category, sum(bonus) from employee_sales 
group by product_category
having sum(bonus) > 10000 ;
---

## C. `AVG()` with `HAVING`

#1. Display departments whose average sale amount is greater than 50000.
select department, avg(sale_amount) from employee_sales 
group by department
having avg(sale_amount) > 50000 ;

#2. Display departments whose average sale amount is less than 40000.
select department, avg(sale_amount) from employee_sales 
group by department
having avg(sale_amount) < 40000 ;

#3. Display departments whose average sale amount is between 30000 and 60000.
select department, avg(sale_amount) from employee_sales 
group by department
having avg(sale_amount)  between 30000 and 60000 ;

#4. Display cities whose average sale amount is greater than 45000.
select city, avg(sale_amount) from employee_sales 
group by city
having avg(sale_amount) >45000;

#5. Display cities whose average sale amount is less than 35000.
select city, avg(sale_amount) from employee_sales 
group by city
having avg(sale_amount) <35000;

#6. Display product categories whose average sale amount is greater than 40000.
select product_category, avg(sale_amount) from employee_sales 
group by product_category
having avg(sale_amount) >40000;

#7. Display product categories whose average sale amount is less than 30000.
select product_category, avg(sale_amount) from employee_sales 
group by product_category
having avg(sale_amount) <30000;

#8. Display sale years whose average sale amount is greater than 40000.
select sale_year, avg(sale_amount) from employee_sales 
group by sale_year
having avg(sale_amount) >40000;

#9. Display sale months whose average sale amount is greater than 30000.
select sale_month, avg(sale_amount) from employee_sales 
group by sale_month
having avg(sale_amount) >30000;

#10. Display statuses whose average sale amount is greater than 35000.
select status, avg(sale_amount) from employee_sales 
group by status
having avg(sale_amount) >35000;

#11. Display departments whose average bonus is greater than 4000.
select department, avg(bonus) from employee_sales 
group by department
having avg(bonus) >4000;

#12. Display cities whose average bonus is less than 3000.
select city, avg(bonus) from employee_sales 
group by city
having avg(bonus) <3000;

#13. Display product categories whose average quantity is greater than 3.
select product_category, avg(quantity) from employee_sales 
group by product_category
having avg(quantity) > 3;

#14. Display departments whose average quantity is less than 4.
select department, avg(quantity) from employee_sales 
group by department
having avg(quantity) <4;

#15. Display sale years whose average quantity is greater than 3.
select sale_year, avg(quantity) from employee_sales 
group by sale_year
having avg(quantity) > 3;

---
## D. `MIN()` with `HAVING`

#1. Display departments whose minimum sale amount is greater than 20000.
select department, min(sale_amount) from employee_sales 
group by department
having min(sale_amount) >20000;

#2. Display departments whose minimum sale amount is less than 10000.
select department, min(sale_amount) from employee_sales 
group by department
having min(sale_amount) <10000;

#3. Display cities whose minimum sale amount is greater than 15000.
select city, min(sale_amount) from employee_sales 
group by city
having min(sale_amount) >15000;

#4. Display cities whose minimum sale amount is less than 10000.
select city, min(sale_amount) from employee_sales 
group by city
having min(sale_amount) <10000;

#5. Display product categories whose minimum sale amount is greater than 20000.
select product_category, min(sale_amount) from employee_sales 
group by product_category
having min(sale_amount) >20000;

#6. Display product categories whose minimum sale amount is less than 10000.
select product_category, min(sale_amount) from employee_sales 
group by product_category
having min(sale_amount) <10000;

#7. Display sale years whose minimum sale amount is greater than 5000.
select sale_year, min(sale_amount) from employee_sales 
group by sale_year
having min(sale_amount) >5000;

#8. Display statuses whose minimum sale amount is less than 10000.
select status, min(sale_amount) from employee_sales 
group by status
having min(sale_amount) <10000;

#9. Display departments whose minimum bonus is greater than 1000.
select department, min(bonus) from employee_sales 
group by department
having min(bonus) >1000;

#10. Display cities whose minimum bonus is less than 2000.
select city, min(bonus) from employee_sales 
group by city
having min(bonus) <2000;

#11. Display product categories whose minimum quantity is greater than 1.
select product_category, min(quantity) from employee_sales 
group by product_category
having min(quantity) >1;

#12. Display departments whose minimum quantity is less than 3.
select department, min(quantity) from employee_sales 
group by department
having min(quantity) <3;

#13. Display sale months whose minimum sale amount is greater than 15000.
select sale_month, min(sale_amount) from employee_sales 
group by sale_month
having min(sale_amount) >15000;

#14. Display sale months whose minimum bonus is less than 3000.
select sale_month, min(bonus) from employee_sales 
group by sale_month
having min(bonus) <3000;

#15. Display statuses whose minimum quantity is greater than 2.
select status, min(quantity) from employee_sales 
group by status
having min(quantity) >2;
---

## E. `MAX()` with `HAVING`

#1. Display departments whose maximum sale amount is greater than 80000.
select department, max(sale_amount) from employee_sales 
group by department
having max(sale_amount) >80000;

#2. Display departments whose maximum sale amount is less than 70000.
select department, max(sale_amount) from employee_sales 
group by department
having max(sale_amount) <70000;

#3. Display cities whose maximum sale amount is greater than 75000.
select city, max(sale_amount) from employee_sales 
group by city
having max(sale_amount) >75000;

#4. Display cities whose maximum sale amount is less than 50000.
select city, max(sale_amount) from employee_sales 
group by city
having max(sale_amount) <50000;

#5. Display product categories whose maximum sale amount is greater than 70000.
select product_category, max(sale_amount) from employee_sales 
group by product_category
having max(sale_amount) >70000;

#6. Display product categories whose maximum sale amount is less than 40000.
select product_category, max(sale_amount) from employee_sales 
group by product_category
having max(sale_amount) <40000;

#7. Display sale years whose maximum sale amount is greater than 85000.
select sale_year, max(sale_amount) from employee_sales 
group by sale_year
having max(sale_amount) >85000;

#8. Display statuses whose maximum sale amount is greater than 80000.
select status, max(sale_amount) from employee_sales 
group by status
having max(sale_amount) >80000;

#9. Display departments whose maximum bonus is greater than 7000.
select department, max(bonus) from employee_sales 
group by department
having max(bonus) >7000;

#10. Display cities whose maximum bonus is greater than 6000.
select city, max(bonus) from employee_sales 
group by city
having max(bonus) >6000;

#11. Display product categories whose maximum bonus is greater than 7000.
select product_category, max(bonus) from employee_sales 
group by product_category
having max(bonus) >7000;

#12. Display departments whose maximum quantity is greater than 5.
select department, max(quantity) from employee_sales 
group by department
having max(quantity) >5;

#13. Display cities whose maximum quantity is greater than 6.
select city, max(quantity) from employee_sales 
group by city
having max(quantity) >6;

#14. Display product categories whose maximum quantity is greater than 4.
select product_category, max(quantity) from employee_sales 
group by product_category
having max(quantity) >4;

#15. Display sale months whose maximum sale amount is greater than 60000.
select sale_month, max(sale_amount) from employee_sales 
group by sale_month
having max(sale_amount) >60000;
---

## F. `GROUP BY` Multiple Columns with `HAVING`

#1. Display department-wise and city-wise groups having total sale amount greater than 70000.
select department,city, sum(sale_amount) from employee_sales 
group by department,city
having sum(sale_amount) >70000;

#2. Display department-wise and city-wise groups having count greater than 1.
select department,city , count( department and city)from employee_sales 
group by department,city
having count( department and city ) >1;

#3. Display department-wise and product-category-wise groups having total quantity greater than 3.
select department,city , count( department and city)from employee_sales 
group by department,city
having count( department and city ) >1;

#4. Display city-wise and product-category-wise groups having total sale amount greater than 50000.
select product_category,city, sum(sale_amount)from employee_sales 
group by product_category,city
having sum(  sale_amount ) >50000;

#5. Display year-wise and department-wise groups having total bonus greater than 7000.
select sale_year,department, sum(bonus)from employee_sales 
group by sale_year,department
having sum( bonus ) >7000;

#6. Display status-wise and department-wise groups having count greater than 1.
select status,department, count(status and department)from employee_sales 
group by status , department
having count(status and department)>1;

#7. Display month-wise and city-wise groups having total sale amount greater than 30000.
select sale_month,city, sum(sale_amount)from employee_sales 
group by sale_month , city
having sum( sale_amount)>30000;

#8. Display product-category-wise and status-wise groups having average sale amount greater than 30000.
select product_category,status, avg(sale_amount)from employee_sales 
group by product_category , status
having avg( sale_amount)>30000;

#9. Display year-wise and city-wise groups having maximum sale amount greater than 60000.
select sale_year,city, max(sale_amount)from employee_sales 
group by sale_year,city
having max( sale_amount)>60000;

#10. Display department-wise and status-wise groups having minimum sale amount less than 20000.
select department,status, min(sale_amount)from employee_sales 
group by department,status
having min( sale_amount)<20000;

#11. Display city-wise and status-wise groups having total quantity greater than 5.
select city,status, sum(quantity) from employee_sales 
group by city,status
having sum( quantity) > 5;

#12. Display year-wise and product-category-wise groups having total sale amount greater than 70000.
select sale_year,product_category, sum(sale_amount) from employee_sales 
group by sale_year,product_category
having sum( sale_amount) > 70000;

#13. Display department-wise and year-wise groups having average bonus greater than 4000.
select department,sale_year, avg(bonus) from employee_sales 
group by sale_year,department
having avg( bonus) > 4000;

#14. Display city-wise and month-wise groups having count exactly 1.
select city,sale_month, count(city and sale_month) from employee_sales 
group by city,sale_month
having count(city and sale_month) = 1;

#15. Display product-category-wise and month-wise groups having total bonus greater than 5000.
select product_category,sale_month, sum(bonus) from employee_sales 
group by product_category,sale_month
having sum(bonus) > 5000;
---
## G. `WHERE` + `GROUP BY` + `HAVING`

#sale_id, emp_id, emp_name, department, city, product_category, sale_amount, quantity, bonus, sale_year, sale_month, status

#1. Display departments having total sale amount greater than 150000 for only Completed records.
#2. Display cities having count greater than 2 for only Active/Completed sale status.
#3. Display product categories having total quantity greater than 5 for only year 2024.
#4. Display product categories having total quantity greater than 5 for only year 2025.
#5. Display departments having average sale amount greater than 50000 for only city Pune.
#6. Display cities having total bonus greater than 10000 for only Finance department.
#7. Display departments having total sale amount greater than 100000 for only Laptop category.
#8. Display cities having average sale amount greater than 40000 for only Mobile category.
#9. Display product categories having maximum sale amount greater than 70000 for only Completed records.
#10. Display years having total sale amount greater than 300000 for only Completed records.
#11. Display months having total sale amount greater than 50000 for only year 2025.
#12. Display departments having count greater than 1 for only Mumbai city.
#13. Display cities having count greater than 1 for only IT department.
#14. Display statuses having total sale amount greater than 50000 for only HR department.
#15. Display product categories having average bonus greater than 3000 for only Completed records.

---

## H. Interview-Style `HAVING` Questions

#1. Display departments where total sales are greater than average total sales of all departments.
#2. Display cities where average sale amount is greater than overall average sale amount.
#3. Display product categories where total quantity is greater than average quantity of all categories.
#4. Display departments where maximum sale amount is greater than overall average sale amount.
#5. Display cities where minimum sale amount is less than overall minimum completed sale amount.
#6. Display product categories where total bonus is greater than 15000 and count is greater than 2.
#7. Display departments where average sale amount is greater than 40000 and total bonus is greater than 10000.
#8. Display cities where total sale amount is greater than 100000 and average quantity is greater than 3.
#9. Display product categories where maximum bonus is greater than 5000 and minimum sale amount is greater than 20000.
#10. Display years where total sale amount is greater than 300000 and total quantity is greater than 20.
#11. Display departments where count of completed records is greater than count of pending records.
#12. Display cities where total completed sale amount is greater than total pending sale amount.
#13. Display product categories where total sale amount in 2025 is greater than total sale amount in 2024.
#14. Display departments where average bonus in 2025 is greater than average bonus in 2024.
#15. Display city-wise total sales where total sale amount is greater than 100000 and maximum sale amount is greater than 70000.