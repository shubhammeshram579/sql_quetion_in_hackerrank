1. /*Query the average population for all cities in CITY, rounded down to the nearest integer.

Input Format

The CITY table is described as follows: */
+-------------+----------+
| Field       | Type     |
+-------------+----------+
| ID          | int(11)  |
| Name        | char(35) |
| CountryCode | char(3)  |
| District    | char(20) |
| Population  | int(11)  |
+-------------+----------+



/*solution*/
select round(avg(population),0) as "avgpopulation"
from City;



/*2. Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

Input Format

The CITY table is described as follows: CITY.jpg*/


select sum(population) as "total_population"
from CITY
where COUNTRYCODE like "JPN"



/*3. Query the difference between the maximum and minimum populations in CITY.

Input Format

The CITY table is described as follows:*/


select (max(population)-min(population))
from city;




/* 4 Samantha was tasked with calculating the average monthly salaries for all employees in the EMPLOYEES table, but did not realize her keyboard's  key was broken until after completing the calculation. She wants your help finding the difference between her miscalculation (using salaries with any zeros removed), and the actual average salary.

Write a query calculating the amount of error (i.e.:  average monthly salaries), and round it up to the next integer.

Input Format

The EMPLOYEES table is described as follows:



Note: Salary is per month.

Constraints

.

Sample Input



Sample Output

2061
Explanation

The table below shows the salaries without zeros as they were entered by Samantha:



Samantha computes an average salary of . The actual average salary is .

The resulting error between the two calculations is . Since it is equal to the integer , it does not get rounded up.

1*/

/*sulution*/

select ceil(avg(salary)- avg(replace(salary,"0","")))
from EMPLOYEES;




/*5 .Query a count of the number of cities in CITY having a Population larger than .

Input Format

The CITY table is described as follows: CITY.jpg*/

select count(District)
from CITY
where Population > 100000;



/*6 . Query the total population of all cities in CITY where District is California.

Input Format

The CITY table is described as follows: CITY.jpg*/

select sum(population)
from City 
where District like "California";


/*7. We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows:



where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.

Sample Input



Sample Output

69952 1
Explanation

The table and earnings data is depicted in the following diagram: 

The maximum earnings value is . The only employee with earnings  is Kimberly, so we print the maximum earnings value () and a count of the number of employees who have earned  (which is ) as two space-separated values.*/

select months * salary , count(*)
from employee
group by months * salary
order by months * salary desc
limit 1;
