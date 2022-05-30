-- researchers working on project
SELECT researcher.first_name, researcher.last_name FROM researcher JOIN researcher_project JOIN project
ON researcher.researcher_id = researcher_project.researcher_id AND project.project_id = researcher_project.project_id
WHERE project.title = 'ENDORSE0'

-- select project having executive
SELECT project.title FROM project JOIN executive
ON project.executive_id = executive.executive_id
WHERE executive.first_name = "Kyriakos" AND executive.last_name = "Mitsotakis"

--mtsk gms

-- select with date
SELECT project.title FROM project
WHERE project.start_date = '2014-02-16' AND project.end_date = '2016-03-30'

SELECT program_name FROM elidek.program

-- to DATEDIFF de paizei isws 8elei nan grafoun alliws ta dates