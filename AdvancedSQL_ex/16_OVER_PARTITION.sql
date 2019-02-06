/* Select individual salary and average department salary */
select
   department,
   last_name,
   salary,
   round(avg(salary) over (partition by department)) as avg_salary
from
   staff;

/* Use a windowing operation with a different aggregate function */
select
   department,
   last_name,
   salary,
   max(salary) over (partition by department)
from
   staff;

/* Use a windowing operation with a different aggregate function and different grouping */
select
   company_regions,
   last_name,
   salary,
   min(salary) over (partition by company_regions)
from
   staff_div_reg;


/* Order results and include the relative rank by row */
select
   department,
   last_name,
   salary,
   rank() over (partition by department order by salary desc)
from
   staff;