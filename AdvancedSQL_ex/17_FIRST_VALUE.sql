/* Select a set of attributes grouped by department, include the first value by department in each row */
select
   department,
   last_name,
   salary,
   first_value(salary) over (partition by department order by salary desc)
from
   staff;

/* Window functions can be used to add ranked row numbers */
select
   company_division,
   last_name,
   salary,
   row_number()  over (partition by company_division order by salary asc)
from
   staff_div_reg;