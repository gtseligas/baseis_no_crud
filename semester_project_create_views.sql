/*	
*	View with the projects of every researcher
*/

CREATE VIEW researcher_project_view
(first_name, last_name, project_title, project_description)
AS
SELECT
r.first_name AS first_name, r.last_name AS last_name, 
p.title AS project_title, p.project_description AS project_description
FROM project p INNER JOIN researcher_project rp
ON p.project_id = rp.project_id
INNER JOIN researcher r
ON r.researcher_id = rp.researcher_id;


/*
*	View with the research field of every project
*/
CREATE VIEW project_field_view
(project_title, project_description, field_title)
AS
SELECT
p.title AS project_title, p.project_description AS project_description, f.title AS field_title
FROM project p INNER JOIN project_field pf
ON p.project_id = pf.project_id
INNER JOIN research_field f 
ON f.field_id = pf.field_id
