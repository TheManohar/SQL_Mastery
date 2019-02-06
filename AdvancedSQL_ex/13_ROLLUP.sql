
/* Review the columns available in staff_div_reg view */
select
  *
from
  staff_div_reg
limit
  10;

/* Select nubmer of employees by company_regions and country */
select
   company_regions, country, count(*)
from
   staff_div_reg_country
group by
   company_regions, country
order by
   country, company_regions


/* Use rollup operation on the group by clause to create hierarchical sums */
select
   company_regions, country, count(*)
from
   staff_div_reg_country
group by
   rollup (country, company_regions)
order by
   country, company_regions
