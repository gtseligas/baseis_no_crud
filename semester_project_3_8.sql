/*
*	3.8
*/

WITH project_without_deliverables (project_id) AS 
(SELECT p.project_id
FROM project p
LEFT OUTER JOIN deliverable d
ON p.project_id = d.project_id
WHERE d.deliverable_id IS NULL)

SELECT r.first_name as first_name, r.last_name as last_name, count(*) as project_count
FROM researcher r
INNER JOIN researcher_project rp
ON r.researcher_id = rp.researcher_id
INNER JOIN project_without_deliverables pwd
ON pwd.project_id = rp.project_id
GROUP BY r.researcher_id
HAVING project_count >= 5
ORDER BY project_count DESC;
 