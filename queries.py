def get_program_names():
    return "SELECT program_name FROM elidek.program"
    
def get_project_names():
    return "SELECT title FROM elidek.project"

def get_fields():
    return "SELECT field_id, title FROM elidek.research_field"

def criteria_date_duration_executive(date,duration,first_name,last_name):
    return "SELECT title, project_description, start_date, end_date, amount FROM project WHERE start_date='" + date + "' AND year(end_date) - year(start_date) = " + duration + " AND project_id IN (select project_id from project p inner join executive e on p.executive_id = e.executive_id where e.first_name='" + first_name + "' and e.last_name='" + last_name + "')"

def criteria_date_duration(date,duration):
    return "SELECT title, project_description, start_date, end_date, amount FROM project WHERE start_date='" + date + "' AND year(end_date) - year(start_date) = " + duration

def criteria_duration_executive(duration,first_name,last_name):
    return "SELECT title, project_description, start_date, end_date, amount FROM project WHERE start_date='2014-02-16' AND year(end_date) - year(start_date) = " + duration + " AND project_id IN (select project_id from project p inner join executive e on p.executive_id = e.executive_id where e.first_name='" + first_name + "' and e.last_name='" + last_name + "')"
    
def criteria_date_executive(date,first_name,last_name):
    return "SELECT title, project_description, start_date, end_date, amount FROM project WHERE start_date='" + date + "' AND project_id IN (select project_id from project p inner join executive e on p.executive_id = e.executive_id where e.first_name='" + first_name + "' and e.last_name='" + last_name + "') "

def get_active_projects(field):
    return "SELECT title,project_description,start_date,end_date,amount,grade,grade_date FROM project WHERE project_id IN (select project_id from project_field where field_id=" + field + ") AND is_active(start_date, end_date)"

def get_active_researchers(field):
    return "select r.first_name, r.last_name, r.gender, r.birth_date,r.hire_date from researcher r inner join researcher_project rp on r.researcher_id = rp.researcher_id inner join project p on rp.project_id = p.project_id inner join project_field pf on p.project_id = pf.project_id inner join research_field f on pf.field_id = f.field_id where f.field_id = " + field + " and p.start_date <= curdate() and (year(p.start_date) = 2022 or year(p.end_date) = 2022)"

def get_project_employees(title):
    return "SELECT researcher.first_name, researcher.last_name FROM researcher JOIN researcher_project JOIN project ON researcher.researcher_id = researcher_project.researcher_id AND project.project_id = researcher_project.project_id WHERE project.title = '" + title + "'"

def get_project_executive(first_name, last_name):
    return "SELECT project.title, project.project_description, project.start_date, project.end_date, project.amount FROM project JOIN executive ON project.executive_id = executive.executive_id WHERE executive.first_name = '" + first_name + "' AND executive.last_name = '" + last_name +"'" 

def get_project_dates(start_date):
    return "SELECT project.title, project.project_description, project.start_date, project.end_date, project.amount FROM project WHERE project.start_date = '" + start_date + "'"

def criteria_duration(duration):
    return "SELECT title, project_description, start_date, end_date, amount FROM project WHERE year(end_date) - year(start_date) = " + duration

    
def researchers_projects_view():
    return "SELECT first_name,last_name FROM elidek.researcher_project_view GROUP BY first_name,last_name"
    
def projects_fields_view():
    return "SELECT field_title FROM elidek.project_field_view GROUP BY field_title"
    
def grab_researcher_projects(first_name, last_name):
    return "SELECT project_title,project_description from elidek.researcher_project_view WHERE first_name='" + first_name + "' AND last_name='" + last_name +"'"
    
def grab_field_projects(field):
    return "SELECT project_title,project_description from elidek.project_field_view WHERE field_title='" + field +"'"
    
def same_projects_consecutive_years():
    return "WITH projects_organisation_yearly (organisation_id, organisation_name, project_count, project_year) AS (SELECT o.organisation_id as organisation_id, o.organisation_name as organisation_name, count(*) as project_count, year(p.start_date) as project_year FROM project p INNER JOIN organisation o ON p.organisation_id = o.organisation_id GROUP BY o.organisation_id, project_year) SELECT po1.organisation_name as organisation_name, po1.project_count as project_count, po1.project_year as first_year, po2.project_year as second_year FROM projects_organisation_yearly po1 INNER JOIN projects_organisation_yearly po2 ON po1.organisation_id = po2.organisation_id AND po1.project_year = po2.project_year-1 AND po1.project_count = po2.project_count AND po1.project_count >= 10;"
    
def best_young_researchers():
    return "WITH young_researcher (researcher_id, first_name, last_name, age) AS (SELECT researcher_id, first_name, last_name, age_from_birth(birth_date) FROM researcher WHERE age_from_birth(birth_date) < 40), active_project (project_id) AS (SELECT project_id FROM project WHERE is_active(start_date, end_date)) SELECT yr.first_name as first_name, yr.last_name as last_name, yr.age as age, count(*) as active_projects FROM researcher_project rp INNER JOIN young_researcher yr ON yr.researcher_id = rp.researcher_id INNER JOIN active_project ap ON ap.project_id = rp.project_id GROUP BY rp.researcher_id ORDER BY active_projects DESC;"
    
def get_project_employees(title):
    return "SELECT researcher.first_name, researcher.last_name FROM researcher JOIN researcher_project JOIN project ON researcher.researcher_id = researcher_project.researcher_id AND project.project_id = researcher_project.project_id WHERE project.title = '" + title + "'"

def top_projects():
    return 'with top_3_field_pairs (field_id_1, field_id_2, project_count) as (select pf1.field_id, pf2.field_id, count(*) from project_field pf1 inner join project_field pf2 on pf1.project_id = pf2.project_id  and pf1.field_id <> pf2.field_id and pf1.field_id < pf2.field_id group by pf1.field_id, pf2.field_id order by count(*) desc limit 3) select f1.title as field_1, f2.title as field_2, top_3.project_count as project_count from top_3_field_pairs top_3 inner join research_field f1 on top_3.field_id_1 = f1.field_id inner join research_field f2 on top_3.field_id_2 = f2.field_id;'

def top_executive():
    return "SELECT e.first_name as first_name, e.last_name as last_name, o.organisation_name,  sum(p.amount) as total_fundings FROM executive e INNER JOIN project p ON p.executive_id = e.executive_id INNER JOIN (select * from organisation WHERE category = 'corporation') AS o ON p.organisation_id = o.organisation_id GROUP BY e.executive_id ORDER BY total_fundings DESC LIMIT 5;"
    
def top_researchers():
    return 'WITH project_without_deliverables (project_id) AS (SELECT p.project_id FROM project p LEFT OUTER JOIN deliverable d ON p.project_id = d.project_id WHERE d.deliverable_id IS NULL) SELECT r.first_name as first_name, r.last_name as last_name, count(*) as project_count FROM researcher r INNER JOIN researcher_project rp ON r.researcher_id = rp.researcher_id INNER JOIN project_without_deliverables pwd ON pwd.project_id = rp.project_id GROUP BY r.researcher_id HAVING project_count >= 5 ORDER BY project_count DESC;'

def expand_researcher(title, start_date):
    return " select r.first_name, r.last_name, r.gender, r.birth_date, r.hire_date from researcher r inner join researcher_project rp on r.researcher_id = rp.researcher_id inner join project p on rp.project_id = p.project_id where p.title = '" + title +"' and p.start_date = '" + start_date+"'"
    
def insert_researcher(first_name, last_name, birth_date, hire_date, gender, org_id):
    return "Insert into researcher (`first_name`,`last_name`,`hire_date`,`organisation_id`,`birth_date`,`gender`) values('" + first_name + "','" + last_name + "','" + hire_date + "','" + org_id + "','" + birth_date + "','" + gender + "')"

def delete_researcher(first_name, last_name):
    return "Delete from researcher where first_name='" + first_name + "' and last_name = '" + last_name + "'"
    
def update_researcher(selected_first_name, selected_last_name, first_name, last_name, birth_date, hire_date, gender, org_id):
    return "Update researcher set first_name='" + first_name + "', last_name='" + last_name + "', hire_date='" + hire_date + "', organisation_id='" + org_id + "', birth_date='" + birth_date + "', gender='" + gender + "' where first_name='" + selected_first_name + "' and last_name='" + selected_last_name + "'"

def insert_project(start_date,end_date,description,title,amount,grade,grade_date,executive_id,org_id,grader_id,program_id):
    return "Insert into project (`start_date`,`end_date`,`project_description`,`title`,`amount`,`grade`,`grade_date`,`executive_id`,`organisation_id`,`grader_id`,`program_id`) values('" + start_date + "','" + end_date + "','" + description + "','" + title + "','" + amount + "','" + grade + "','" + grade_date + "','"+ executive_id + "','" + org_id + "','" + grader_id + "','" + program_id + "')"

def delete_project(title, start_date):
    return "Delete from project where title='" + title + "' and start_date = '" + start_date + "'"
    
def update_project(selected_title, selected_start_date, start_date,end_date,description,title,amount,grade,grade_date,executive_id,org_id,grader_id,program_id):
    return "update project set start_date='" + start_date + "', end_date='" + end_date + "',project_description='" + description + "',title='" + title + "',amount='" + amount + "',grade='" + grade + "',grade_date='" + grade_date + "',executive_id='"+ executive_id + "',organisation_id='" + org_id + "',grader_id='" + grader_id + "',program_id='" + program_id + "' where start_date='" + selected_start_date + "' and title='" + selected_title + "'"

def insert_researcher_project(start_date, title, first_name, last_name):
    return "insert into researcher_project(`researcher_id`, `project_id`) values ((select researcher_id from researcher where first_name='" + first_name + "' and last_name='" + last_name + "'), (select project_id from project where title='" + title + "' and start_date='" + start_date + "'))"
    
def delete_researcher_project(start_date, title, first_name, last_name):
    return "delete from researcher_project where researcher_id = (select researcher_id from researcher where first_name='" + first_name + "' and last_name='" + last_name + "') and project_id=(select project_id from project where title='" + title + "' and start_date='" + start_date + "')"
    
def remove_researcher_researcher_project(first_name, last_name):
    return "delete from researcher_project where researcher_id = (select researcher_id from researcher where first_name='" + first_name + "'and last_name='" + last_name + "')"
    
def remove_project_researcher_project(title, start_date):
    return "delete from researcher_project where project_id = (select project_id from project where title='" + title + "'and start_date='" + start_date + "')"
    
def insert_project_field(start_date, title, field):
    return "insert into project_field(`project_id`, `field_id`) values ((select project_id from project where start_date = '" + start_date + "' and title='" + title + "'), (select field_id from research_field where title='" + field + "'))"
    
def delete_project_field(start_date, title, field):
    return "delete from project_field where project_id=(select project_id from project where start_date = '" + start_date + "' and title='" + title + "') and field_id= (select field_id from research_field where title='" + field + "')"
    
def remove_project_project_field(start_date, title):
    return "delete from project_field where project_id=(select project_id from project where start_date = '" + start_date + "' and title='" + title + "')"
    
def insert_deliverable(start_date, title, del_title, desc, del_id, del_date):
    return "insert into deliverable(`project_id`,`deliverable_id`,`title`,`deliverable_description`,`delivery_date`) values ((select project_id from project where title = '" + title + "' and start_date='" + start_date + "'), " + del_id + ", '" + del_title + "', '" + desc + "', '" + del_date + "')"
    
def delete_deliverable(start_date, title,del_id):   
    return "delete from deliverable where project_id = (select project_id from project where title = '" + title + "' and start_date='" + start_date + "') and deliverable_id=" + del_id
    
def remove_project_deliverable(start_date, title):
    return "delete from deliverable where project_id = (select project_id from project where title = '" + title + "' and start_date='" + start_date + "')"
    