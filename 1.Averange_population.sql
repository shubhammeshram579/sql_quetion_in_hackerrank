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
