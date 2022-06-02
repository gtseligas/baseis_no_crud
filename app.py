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
    print("inserted")
   
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

    execute_crud(connection, queries.update_researcher(selected_first_name, selected_last_name, first_name, last_name, gender, birth_date, hire_date, org_id), cursor)
    
    return render_template("crud_page.html")          
 
if __name__ == "__main__":
    app.run(debug=True)