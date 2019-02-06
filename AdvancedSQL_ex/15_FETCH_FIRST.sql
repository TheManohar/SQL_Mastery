/*  Use order by and fetch first to limit the number of rows returned */
/*  FETCH FIRST is different from LIMIT because it orders the results first, then gives the top 10 */

select
   last_name, job_title, salary
from
   staff
order by
   salary desc
fetch first
   10 rows only;

/* Use fetch first with order by to select top 5 divisions by staff count */
select
   company_division, count(*)
from
   staff_div_reg_country
group by
   company_division
order by
   count(*) desc
fetch first
   5 rows only;