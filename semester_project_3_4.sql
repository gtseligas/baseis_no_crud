/*	
*	3.4
*	Finds all organisations that started the same amount of projects in consecutive two years, and at least 10 annualy
*	The result will always be null, we have 30 organisations and 150 projects => 5 projects per organisation, no organisation
* 	has 10 annual projects.
*/

WITH projects_organisation_yearly (organisation_id, organisation_name, project_count, project_year) AS 
(SELECT o.organisation_id as organisation_id, o.organisation_name as organisation_name, count(*) as project_count, year(p.start_date) as project_year
FROM project p
INNER JOIN organisation o
ON p.organisation_id = o.organisation_id
GROUP BY o.organisation_id, project_year)

SELECT po1.organisation_name as organisation_name, po1.project_count as project_count, po1.project_year as first_year, po2.project_year as second_year
FROM projects_organisation_yearly po1
INNER JOIN projects_organisation_yearly po2
ON po1.organisation_id = po2.organisation_id AND po1.project_year = po2.project_year-1
AND po1.project_count = po2.project_count AND po1.project_count >= 10;