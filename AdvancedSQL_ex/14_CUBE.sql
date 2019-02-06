/* Use cube operation on the group by clause to create all possible combination of sets of grouping columns */
select
   company_division, company_regions,  count(*)
from
   staff_div_reg
group by
   cube (company_division, company_regions)
order by 
	count(*) desc;