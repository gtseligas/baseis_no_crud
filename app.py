from flask import Flask, json, request, jsonify, render_template, request, redirect, url_for
from flask_cors import CORS 
# pip install mysql-connector-python
# pip install Flask
# pip install flask cors
# pip install queries
import mysql.connector 
#from fields import tuples_to_object, intersect_tables
import queries

def to_object(result, fields):
    if len(result[0])!=len(fields):
        raise Exception("Wrong Fields")
    res = []
    for i in range(len(result)):
        temp = {}
        for j in range(len(fields)):
            temp[fields[j]] = result[i][j]
        res.append(temp)
    return res


def close_query(connection, cursor):
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("done")

def execute_query(connection, query, cursor): 
    cursor.execute(query) 
    result = cursor.fetchall()
    #print(result)
    # close_query(connection, cursor)
    #return tuples_to_object(result, map)
    return result
try: 
    
    connection = mysql.connector.connect(
        host='localhost',
        database='elidek',
        user='root',
        password=''
    )

    cursor = connection.cursor()  

except mysql.connector.Error as err:
    print("Something went wrong: {}".format(err))

app = Flask(__name__)
CORS(app)

@app.route('/', methods=['GET'])
def home():  
    return render_template("index.html")

#----------------------------------3.1-------------------------------#
@app.route('/programs', methods=['POST'])
def programs():
    temp = execute_query(connection, queries.get_program_names(), cursor)
    print(temp)
    return render_template("program_names.html" , result=temp)
    
@app.route('/criteria', methods=['POST'])
def criteria():
    return render_template("criteria.html")
    
@app.route('/criteria_refresh', methods=['POST'])
def criteria_refresh():
    date = request.form['date']
    duration = request.form['duration']
    executive = request.form['executive']
    
    if executive:
        executive_ = executive.split()
        first_name = executive_[0]
        last_name = executive_[1]
    
    
    if executive and date and duration:
        temp = execute_query(connection, queries.criteria_date_duration_executive(date,duration,first_name,last_name), cursor)
    elif date and duration:
        temp = execute_query(connection, queries.criteria_date_duration(date,duration), cursor)
    elif date and executive:
        temp = execute_query(connection, queries.criteria_date_executive(date,first_name,last_name), cursor)
    elif executive and duration:
        temp = execute_query(connection, queries.criteria_duration_executive(duration,first_name, last_name), cursor)
    elif date:
        temp = execute_query(connection, queries.get_project_dates(date), cursor)
    elif duration:
        temp = execute_query(connection, queries.criteria_duration(duration), cursor)
    elif executive:
        temp = execute_query(connection, queries.get_project_executive(first_name, last_name), cursor)
    else:
       return render_template("criteria.html") 
        
   
    return render_template("criteria.html", result = temp)
    
@app.route('/project_employees_view', methods=['POST'])
def project_employees_view():
    temp = execute_query(connection, queries.get_project_names(), cursor)
    print(temp)
    return render_template("project_employees_view.html", result = temp)
    
    
@app.route('/grab_employee_projects/<title>', methods=['POST'])
def grab_employee_projects(title):
    print('hii')
    temp = execute_query(connection, queries.get_project_employees(title), cursor)
    print(temp)
    return render_template("grab_employee_projects.html" , result=temp, field=title)
    
@app.route('/project_employees/<title>', methods=['POST'])
def project_employees(title):
    temp = execute_query(connection, queries.get_project_employees(title), cursor)
    print(temp)
    return render_template("project_employees.html")

@app.route('/expand_researchers/<title>/<start_date>', methods=['POST'])
def expand_researchers(title,start_date):
    temp = execute_query(connection, queries.expand_researcher(title,start_date), cursor)
    print(temp)
    return render_template("expand_researchers.html", result=temp)

#----------------------------------3.2-------------------------------#    
@app.route('/researchers_projects_view', methods=['POST'])
def researcher_projects():
    temp = execute_query(connection, queries.researchers_projects_view(), cursor)
    print(temp)
    return render_template("researchers_projects_view.html" , result=temp)
    
@app.route('/grab_projects/<first_name>/<last_name>', methods=['POST'])
def grab_researcher_projects(first_name, last_name):
    temp = execute_query(connection, queries.grab_researcher_projects(first_name,last_name), cursor)
    print(temp)
    return render_template("grab_researcher_projects.html" , result=temp, name=first_name+" "+last_name)    
    
@app.route('/projects_fields_view', methods=['POST'])
def projects_fields():
    temp = execute_query(connection, queries.projects_fields_view(), cursor)
    print(temp)
    return render_template("projects_fields_view.html" , result=temp)

@app.route('/grab_field_projects/<field>', methods=['POST'])
def grab_field_projects(field):
    temp = execute_query(connection, queries.grab_field_projects(field), cursor)
    print(temp)
    return render_template("grab_field_projects.html" , result=temp, field=field) 
   
#----------------------------------3.3-------------------------------#    
@app.route('/browse_fields', methods=['POST'])
def browse_fields():
    temp = execute_query(connection, queries.get_fields(), cursor)
    print(temp)
    return render_template("browse_fields.html" , result=temp)
    
@app.route('/browse_field/<field>/<title>', methods=['POST'])
def browse_field(field,title):
    active_projects = execute_query(connection, queries.get_active_projects(field), cursor)
    active_researchers = execute_query(connection, queries.get_active_researchers(field), cursor)
    print(active_researchers)
    return render_template("browse_field.html" , projects=active_projects, field=title, researchers=active_researchers)

#----------------------------------3.4-------------------------------#    

@app.route('/same_projects_consecutive_years', methods=['POST'])
def same_projects_consecutive_years():
    temp = execute_query(connection, queries.same_projects_consecutive_years(), cursor)
    print(temp)
    return render_template("same_projects_consecutive_years.html" , result=temp) 


@app.route('/top_projects', methods=['POST']) 
def top_projects():
    #fields = ['top_projects']
    temp = execute_query(connection, queries.top_projects(), cursor)
    print(temp)
    return render_template("top_projects.html", result = temp)

#----------------------------------3.6-------------------------------#    

@app.route('/best_young_researchers', methods=['POST'])
def best_young_researchers():
    temp = execute_query(connection, queries.best_young_researchers(), cursor)
    print(temp)
    return render_template("best_young_researchers.html" , result=temp) 

@app.route('/projects_executive/<first_name>/<last_name>', methods=['GET'])
def projects_executive(first_name, last_name):
    fields = ["title"]
    temp = execute_query(connection, queries.get_project_executive(first_name, last_name), cursor)
    print(temp)
    return jsonify(temp)
    
@app.route('/project_dates/<start_date>/<end_date>', methods=['GET'])
def project_dates(start_date, end_date):
    fields = ["title"]
    temp = execute_query(connection, queries.get_project_dates(start_date, end_date), cursor)
    print(temp)
    return jsonify(temp)
        
@app.route('/top_executive', methods=['POST']) 
def top_executive():
    #fields = ['top_projects']
    temp = execute_query(connection, queries.top_executive(), cursor)
    print(temp)
    return render_template("top_executive.html", result = temp)

@app.route('/top_researchers', methods=['POST']) 
def top_researchers():
    #fields = ['top_projects']
    temp = execute_query(connection, queries.top_researchers(), cursor)
    print(temp)
    return render_template("top_researchers.html", result = temp)

def execute_crud(connection, query, cursor): 
    cursor.execute(query)
    connection.commit()
   
@app.route('/crud_page', methods=['POST']) 
def crud_page():
    return render_template("crud_page.html") 

@app.route('/researcher_insert', methods=['POST'])
def researcher_insert():
    first_name = request.form['first_name']
    last_name = request.form['last_name']
    gender = request.form['gender']
    birth_date = request.form['birth_date']
    hire_date = request.form['hire_date']
    org_id = request.form['organisation_id']

    execute_crud(connection, queries.insert_researcher(first_name, last_name, gender, birth_date, hire_date, org_id), cursor)
    
    return render_template("crud_page.html")

@app.route('/researcher_delete', methods=['POST'])
def researcher_delete():
    first_name = request.form['first_name']
    last_name = request.form['last_name']

    execute_crud(connection, queries.delete_researcher(first_name, last_name), cursor)
    
    return render_template("crud_page.html")    

@app.route('/researcher_update', methods=['POST'])
def researcher_update():
    # first and last name of researcher to be updated
    selected_first_name = request.form['selected_first_name']
    selected_last_name = request.form['selected_last_name']
    
    # values to update the researcher
    first_name = request.form['first_name']
    last_name = request.form['last_name']
    gender = request.form['gender']
    birth_date = request.form['birth_date']
    hire_date = request.form['hire_date']
    org_id = request.form['organisation_id']

    execute_crud(connection, queries.update_researcher(selected_first_name, selected_last_name, first_name, last_name, birth_date, hire_date, gender,org_id), cursor)
    
    return render_template("crud_page.html")

@app.route('/project_insert', methods=['POST'])
def project_insert():
    start_date = request.form['start_date']
    end_date = request.form['end_date']
    description = request.form['description']
    title = request.form['title']
    amount = request.form['amount']
    grade = request.form['grade']
    grade_date = request.form['grade_date']
    executive_id = request.form['executive_id']
    organisation_id = request.form['organisation_id']
    grader_id = request.form['grader_id']
    program_id = request.form['program_id']
    
    execute_crud(connection, queries.insert_project(start_date, end_date, description, title, amount, grade, grade_date, executive_id, organisation_id, grader_id, program_id), cursor)
    
    return render_template("crud_page.html")    
 
@app.route('/project_delete', methods=['POST'])
def project_delete():
    title = request.form['title']
    start_date = request.form['start_date']

    execute_crud(connection, queries.delete_project(title, start_date), cursor)
    
    return render_template("crud_page.html")  
 
@app.route('/project_update', methods=['POST'])
def project_update():
    # title,start date of project to be updated
    selected_title = request.form['selected_title']
    selected_start_date = request.form['selected_start_date']
    
    start_date = request.form['start_date']
    end_date = request.form['end_date']
    description = request.form['description']
    title = request.form['title']
    amount = request.form['amount']
    grade = request.form['grade']
    grade_date = request.form['grade_date']
    executive_id = request.form['executive_id']
    organisation_id = request.form['organisation_id']
    grader_id = request.form['grader_id']
    program_id = request.form['program_id']

    execute_crud(connection, queries.update_project(selected_title, selected_start_date, start_date, end_date, description, title, amount, grade, grade_date, executive_id, organisation_id, grader_id, program_id), cursor)
    
    return render_template("crud_page.html")
 
@app.route('/researcher_project_insert', methods=['POST'])
def researcher_project_insert():
    start_date = request.form['start_date']
    title = request.form['title']
    first_name = request.form['first_name']
    last_name = request.form['last_name']
    
    execute_crud(connection, queries.insert_researcher_project(start_date, title, first_name, last_name), cursor)
    
    return render_template("crud_page.html")
    
@app.route('/researcher_project_delete', methods=['POST'])
def researcher_project_delete():
    start_date = request.form['start_date']
    title = request.form['title']
    first_name = request.form['first_name']
    last_name = request.form['last_name']
    
    execute_crud(connection, queries.delete_researcher_project(start_date, title, first_name, last_name), cursor)
    
    return render_template("crud_page.html")
    
@app.route('/researcher_remove', methods=['POST'])
def researcher_remove():
    first_name = request.form['first_name']
    last_name = request.form['last_name']
    
    execute_crud(connection, queries.remove_researcher_researcher_project(first_name, last_name), cursor)
    
    return render_template("crud_page.html") 

@app.route('/project_remove', methods=['POST'])
def project_remove():
    title = request.form['title']
    start_date = request.form['start_date']
    
    execute_crud(connection, queries.remove_project_researcher_project(title, start_date), cursor)
    
    return render_template("crud_page.html")     
 
 
@app.route('/project_field_insert', methods=['POST'])
def project_field_insert():
    start_date = request.form['start_date']
    title = request.form['title']
    field = request.form['field']
    
    execute_crud(connection, queries.insert_project_field(start_date, title, field), cursor)
    
    return render_template("crud_page.html") 
    
@app.route('/project_field_delete', methods=['POST'])
def project_field_delete():
    start_date = request.form['start_date']
    title = request.form['title']
    field = request.form['field']
    
    execute_crud(connection, queries.delete_project_field(start_date, title, field), cursor)
    
    return render_template("crud_page.html")

@app.route('/project_field_remove', methods=['POST'])
def project_field_remove():
    start_date = request.form['start_date']
    title = request.form['title']
    
    execute_crud(connection, queries.remove_project_project_field(start_date, title), cursor)
    
    return render_template("crud_page.html")    

@app.route('/deliverable_insert', methods=['POST'])
def deliverable_insert():
    start_date = request.form['start_date']
    title = request.form['title']
    del_title = request.form['del_title']
    desc = request.form['desc']
    del_id = request.form['del_id']
    del_date = request.form['del_date']
    

    execute_crud(connection, queries.insert_deliverable(start_date, title, del_title, desc, del_id, del_date), cursor)
    
    return render_template("crud_page.html") 

@app.route('/deliverable_delete', methods=['POST'])
def deliverable_delete():
    start_date = request.form['start_date']
    title = request.form['title']
    del_id = request.form['del_id']
    
    execute_crud(connection, queries.delete_deliverable(start_date, title, del_id), cursor)
    
    return render_template("crud_page.html")

@app.route('/deliverables_remove', methods=['POST'])
def project_deliverable_remove():
    start_date = request.form['start_date']
    title = request.form['title']
    
    execute_crud(connection, queries.remove_project_deliverable(start_date, title), cursor)
    
    return render_template("crud_page.html")


@app.route('/search_researchers', methods=['POST'])
def search_researchers():
    header = ['researcher id','first name','last name','gender','birth date','hire date', 'organisation id']
    temp = execute_query(connection, "select * from researcher", cursor)
    return render_template("search.html", result = temp, N = 7,header=header)
    
@app.route('/search_projects', methods=['POST'])
def search_projects():
    header = ['project id', 'start date','end date','description','title','amount','grade','grade date','executeive id','organisation id','program id','grader id']
    temp = execute_query(connection, "select * from project", cursor)
    return render_template("search.html", result = temp, N = 12,header=header)
    
@app.route('/search_organisations', methods=['POST'])
def search_organisations():
    header = ['organisation id','abbreviation','name','street','str number','psotal code','city','category']
    temp = execute_query(connection, "select * from organisation", cursor)
    return render_template("search.html", result = temp, N = 8,header=header)
    
@app.route('/search_programs', methods=['POST'])
def search_programs():
    header = ['program id','administration','name']
    temp = execute_query(connection, "select * from program", cursor)
    return render_template("search.html", result = temp, N = 3,header=header)
    
@app.route('/search_corporations', methods=['POST'])
def search_corporations():
    header = ['category', 'capital','organisation id']
    temp = execute_query(connection, "select * from corporation", cursor)
    return render_template("search.html", result = temp, N = 3,header=header)

@app.route('/search_universities', methods=['POST'])
def search_universities():
    header = ['organisation id', 'budget','category']
    temp = execute_query(connection, "select * from university", cursor)
    return render_template("search.html", result = temp, N = 3,header=header)

@app.route('/search_research_centers', methods=['POST'])
def search_research_centers():
    header = ['category', 'public budget','private budget','organisation id']
    temp = execute_query(connection, "select * from research_center", cursor)
    return render_template("search.html", result = temp, N = 4,header=header)

@app.route('/search_phones', methods=['POST'])
def search_phones():
    header = ['phone number','organisation id']
    temp = execute_query(connection, "select * from organisation_phone", cursor)
    return render_template("search.html", result = temp, N = 2,header=header)

@app.route('/search_executives', methods=['POST'])
def search_executives():
    header = ['executive id','first name', 'last name'] 
    temp = execute_query(connection, "select * from executive", cursor)
    return render_template("search.html", result = temp, N = 3,header=header)

@app.route('/search_research_fields', methods=['POST'])
def search_research_fields():
    header = ['field id', 'title']
    temp = execute_query(connection, "select * from research_field", cursor)
    return render_template("search.html", result = temp, N = 2,header=header)

@app.route('/search_project_fields', methods=['POST'])
def search_project_fields():
    header = ['project id', 'field id']
    temp = execute_query(connection, "select * from project_field", cursor)
    return render_template("search.html", result = temp, N = 2,header=header)

@app.route('/search_deliverables', methods=['POST'])
def search_deliverables():
    header = ['deliverable id','title','description','delivery date','project id']
    temp = execute_query(connection, "select * from deliverable order by project_id", cursor)
    return render_template("search.html", result = temp, N = 5,header=header)

@app.route('/search_researcher_projects', methods=['POST'])
def search_researcher_projects():
    header = ['researcher id', 'project id']
    temp = execute_query(connection, "select * from researcher_project", cursor)
    return render_template("search.html", result = temp, N = 2, header=header)
    
if __name__ == "__main__":
    app.run(debug=True)