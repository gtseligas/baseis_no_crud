/*
*	3.5
*/	

with top_3_field_pairs (field_id_1, field_id_2, project_count) 
as (select pf1.field_id, pf2.field_id, count(*)
from project_field pf1 
inner join project_field pf2
on pf1.project_id = pf2.project_id 
and pf1.field_id <> pf2.field_id
and pf1.field_id < pf2.field_id
group by pf1.field_id, pf2.field_id
order by count(*) desc
limit 3)
select f1.title as field_1, f2.title as field_2, top_3.project_count as project_count
from top_3_field_pairs top_3
inner join research_field f1
on top_3.field_id_1 = f1.field_id
inner join research_field f2
on top_3.field_id_2 = f2.field_id;