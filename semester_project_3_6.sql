/*
*	3.6
*/

WITH young_researcher (researcher_id, first_name, last_name, age) AS 
(SELECT researcher_id, first_name, last_name, age_from_birth(birth_date)
FROM researcher
WHERE age_from_birth(birth_date) < 40),

active_project (project_id) AS
(SELECT project_id 
FROM project
WHERE is_active(start_date, end_date))

SELECT yr.first_name as first_name, yr.last_name as last_name, yr.age as age, count(*) as active_projects
FROM researcher_project rp
INNER JOIN young_researcher yr
ON yr.researcher_id = rp.researcher_id
INNER JOIN active_project ap
ON ap.project_id = rp.project_id
GROUP BY rp.researcher_id
ORDER BY active_projects DESC;