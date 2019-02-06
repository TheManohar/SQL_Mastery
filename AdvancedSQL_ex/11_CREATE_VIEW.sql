/* Create a view to minimize the amount of typing and reduce the risk of making a mistake */
create view staff_div_reg as
   select
     s.*, cd.company_division, cr.company_regions
   from
     staff s
   left join
     company_divisions cd
   on
     s.department = cd.department
   left join
     company_regions cr
   on
      s.region_id = cr.region_id;

/* Verify the view has 1,000 rows */
select
  count(*)
from
  staff_div_reg;

  /* Create a new or update view */
create or replace view staff_div_reg_country as
   select
     s.*, cd.company_division, cr.company_regions, cr.country
   from
     staff s
   left join
     company_divisions cd
   on
     s.department = cd.department
   left join
     company_regions cr
   on
      s.region_id = cr.region_id;