/*
*	3.7
*/

SELECT e.first_name as first_name, e.last_name as last_name, o.organisation_name,  sum(p.amount) as total_fundings
FROM executive e 
INNER JOIN project p
ON p.executive_id = e.executive_id
INNER JOIN (select * from organisation
WHERE category = 'corporation') AS o 
ON p.organisation_id = o.organisation_id
GROUP BY e.executive_id
ORDER BY total_fundings DESC LIMIT 5;