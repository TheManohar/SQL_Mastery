/* Get employee counts by division and by region */
select
   company_division, company_regions, count(*)
from
   staff_div_reg_country
group by
   grouping sets (company_division, company_regions)
order by
   company_regions, company_division;

/* Now, add in gender to break down even further */
/* Get employee counts by division and by region */
select
   company_division, company_regions, gender, count(*)
from
   staff_div_reg
group by
   grouping sets (company_division, company_regions, gender)
order by
   company_regions, company_division, gender;
   
