/* Query all data from table */
select
    *
from
	company_divisions

/* Query only top 10 results */
select
    *
from
	staff
limit
	10

/* Count the number of rows in table */
select
	count(*)
from
	company_divisions

/* Show the number of staff members by gender */
select
   count(*)
from
   staff
group by
   gender

/* show the number of staff member by gender and include the name of the gender */
select
  gender, count(*)
from
   staff
group by
   gender

/* Show the number of staff members in each department */
select
   department, count(*)
from
   staff
group by
   department


/* Show the maximum salary of all staff member */
select
   max(salary)
from
   staff

select
   min(salary)
from
   staff


/* Show the minimum salary of all staff member */
select
   min(salary), max(salary)
from
   staff


/* Show the minimum and maximum salary in each department */
select
   department, min(salary), max(salary)
from
   staff
group by
   department

/* Show the minimum and maximum salary by gender */
select
   gender, min(salary), max(salary)
from
   staff
group by
   gender
