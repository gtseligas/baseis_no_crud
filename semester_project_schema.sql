DROP SCHEMA IF EXISTS elidek;
CREATE SCHEMA elidek;
USE elidek;

CREATE TABLE executive
(
  executive_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (executive_id),
  KEY idx_fk_executive (executive_id)
);

--
-- TODO I have to look into indexing better. Is it correct to have separate indexes for id and (id, category)?
--

CREATE TABLE organisation
(
  organisation_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  abbreviation VARCHAR(10) NOT NULL,
  organisation_name VARCHAR(100) NOT NULL,
  street VARCHAR(45) NOT NULL,
  str_number NUMERIC(4, 0) NOT NULL,
  postal_code NUMERIC(5, 0) NOT NULL,
  city VARCHAR(20) NOT NULL,
  category ENUM("corporation", "university", "research_center") NOT NULL,
  PRIMARY KEY (organisation_id),
  KEY idx_fk_organisation_id (organisation_id),
  KEY idx_fk_organisation_id_category (organisation_id, category)
);

CREATE TABLE researcher
(
  researcher_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  gender ENUM("male", "female") NOT NULL,
  birth_date DATE NOT NULL,
  hire_date DATE NOT NULL,
  organisation_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (researcher_id),
  UNIQUE (first_name,last_name),
  KEY idx_fk_organisation_id (organisation_id),
  KEY idx_fk_researcher (researcher_id),
  KEY idx_superkey_first_last (first_name, last_name),
  CONSTRAINT fk_researcher_organisation FOREIGN KEY (organisation_id) 
	REFERENCES organisation(organisation_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE program
(
  program_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  administration VARCHAR(20) NOT NULL,
  program_name VARCHAR(20) NOT NULL,
  PRIMARY KEY (program_id),
  KEY idx_fk_program (program_id)
);

CREATE TABLE research_field
(
  field_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(45) NOT NULL,
  PRIMARY KEY (field_id),
  KEY idx_fk_field (field_id)
);

CREATE TABLE organisation_phone
(
  phone_number NUMERIC(10, 0) NOT NULL,
  organisation_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (phone_number, organisation_id),
  KEY idx_fk_organisation_id (organisation_id),
  CONSTRAINT fk_organisation_phone_organisation FOREIGN KEY (organisation_id) 
	REFERENCES organisation(organisation_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE university
(
  organisation_id INT UNSIGNED NOT NULL,
  budget NUMERIC(7, 0) NOT NULL,
  category ENUM("university") NOT NULL,
  PRIMARY KEY (organisation_id),
  KEY idx_fk_organisation_id_category (organisation_id, category),
  CONSTRAINT fk_university_organisation FOREIGN KEY (organisation_id, category) 
	REFERENCES organisation(organisation_id, category) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE corporation
(
  category ENUM("corporation") NOT NULL,
  capital NUMERIC(10, 0) NOT NULL,
  organisation_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (organisation_id),
  KEY idx_fk_organisation_id_category (organisation_id, category),
  CONSTRAINT fk_corporation_organisation FOREIGN KEY (organisation_id, category) 
	REFERENCES organisation(organisation_id, category) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE research_center
(
  category ENUM("research_center") NOT NULL,
  publ_budget NUMERIC(8, 0) NOT NULL,
  priv_budget NUMERIC(8, 0) NOT NULL,
  organisation_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (organisation_id),
  KEY idx_fk_organisation_id_category (organisation_id, category),
  CONSTRAINT fk_research_center_organisation FOREIGN KEY (organisation_id, category) 
	REFERENCES organisation(organisation_id, category) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE project
(
  project_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  project_description VARCHAR(500) NOT NULL,
  title VARCHAR(50) NOT NULL,
  amount NUMERIC(7, 0) NOT NULL,
  grade NUMERIC(3, 0) NOT NULL,
  grade_date DATE NOT NULL,
  executive_id INT UNSIGNED NOT NULL,
  organisation_id INT UNSIGNED NOT NULL,
  program_id INT UNSIGNED NOT NULL,
  grader_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (project_id),
  UNIQUE (title,start_date),
  KEY idx_fk_executive (executive_id),
  KEY idx_fk_organisation (organisation_id),
  KEY idx_fk_program (program_id),
  KEY idx_fk_grader (grader_id),
  KEY idx_fk_project (project_id),
  KEY idx_superkey_title_startdate (title,start_date),
  CONSTRAINT fk_project_executive FOREIGN KEY (executive_id) 
	REFERENCES executive(executive_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_project_organisation FOREIGN KEY (organisation_id) 
	REFERENCES organisation(organisation_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_project_program FOREIGN KEY (program_id) 
	REFERENCES program(program_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_project_grader FOREIGN KEY (grader_id) 
	REFERENCES researcher(researcher_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT amount_range CHECK (amount >= 100000 AND amount <= 1000000),
  CONSTRAINT grade_start_date CHECK (grade_date <= start_date)
);

CREATE TABLE deliverable
(
  deliverable_id INT UNSIGNED NOT NULL,
  title VARCHAR(50) NOT NULL,
  deliverable_description VARCHAR(500) NOT NULL,
  delivery_date DATE NOT NULL,
  project_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (deliverable_id, project_id),
  KEY idx_fk_project (project_id),
  CONSTRAINT fk_deliverable_project FOREIGN KEY (project_id)
	REFERENCES project(project_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE researcher_project
(
  researcher_id INT UNSIGNED NOT NULL,
  project_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (researcher_id, project_id),
  KEY idx_fk_researcher (researcher_id),
  KEY idx_fk_project (project_id),
  CONSTRAINT fk_researcher_project_researcher FOREIGN KEY (researcher_id) 
	REFERENCES researcher(researcher_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_researcher_project_project FOREIGN KEY (project_id) 
	REFERENCES project(project_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE project_field
(
  project_id INT UNSIGNED NOT NULL,
  field_id INT UNSIGNED NOT NULL,
  PRIMARY KEY (project_id, field_id),
  KEY idx_fk_project (project_id),
  KEY idx_fk_field (field_id),
  CONSTRAINT fk_project_field_project FOREIGN KEY (project_id) 
	REFERENCES project(project_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_project_field_field FOREIGN KEY (field_id)
	REFERENCES research_field(field_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

--
--	Triggers
--

--
-- Check that project duration is between 1 and 4 years
--

DELIMITER $
CREATE TRIGGER `project_duration_before_insert` BEFORE INSERT ON `project`
FOR EACH ROW
BEGIN
    IF DATE_ADD(new.start_date, INTERVAL 1 YEAR) > new.end_date THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'insert in project failed because duration was less than 1 year';
    END IF;
    
    IF DATE_ADD(new.start_date, INTERVAL 4 YEAR) < new.end_date THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'insert in project failed because duration was more than 4 years';
    END IF;
END$   
DELIMITER ; 

DELIMITER $
CREATE TRIGGER `project_duration_before_update` BEFORE UPDATE ON `project`
FOR EACH ROW
BEGIN
    IF DATE_ADD(new.start_date, INTERVAL 1 YEAR) > new.end_date THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'update in project failed because duration was less than 1 year';
    END IF;
    
    IF DATE_ADD(new.start_date, INTERVAL 4 YEAR) < new.end_date THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'update in project failed because duration was more than 4 years';
    END IF;
END$   
DELIMITER ; 

--
-- Check that deliverable delivery date is between start and end date of the project
--

DELIMITER $
CREATE TRIGGER `delivery_date_before_insert` BEFORE INSERT ON `deliverable`
FOR EACH ROW
BEGIN
    DECLARE project_start_date DATE;
    DECLARE project_end_date DATE;
    
    SET @project_start_date := (SELECT start_date FROM project WHERE project_id = new.project_id);
    SET @project_end_date := (SELECT end_date FROM project WHERE project_id = new.project_id);
    
    IF new.delivery_date > project_end_date THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'insert in deliverable failed because delivery_date was greater than project end_date';
    END IF;
    
    IF new.delivery_date < project_start_date THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'insert in deliverable failed because delivery_date was lower than project start_date';
    END IF;
END$   
DELIMITER ; 

DELIMITER $
CREATE TRIGGER `delivery_date_before_update` BEFORE UPDATE ON `deliverable`
FOR EACH ROW
BEGIN
    DECLARE project_start_date DATE;
    DECLARE project_end_date DATE;
    
    SET @project_start_date := (SELECT start_date FROM project WHERE project_id = new.project_id);
    SET @project_end_date := (SELECT end_date FROM project WHERE project_id = new.project_id);
    
    IF new.delivery_date > project_end_date THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'update in deliverable failed because delivery_date was greater than project end_date';
    END IF;
    
    IF new.delivery_date < project_start_date THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'update in deliverable failed because delivery_date was lower than project start_date';
    END IF;
END$   
DELIMITER ; 

--
-- Check that the researcher who grades the project does not belong to the the same organisation that manages the project
--

DELIMITER $
CREATE TRIGGER `grader_organisation_before_insert` BEFORE INSERT ON `project`
FOR EACH ROW
BEGIN
    DECLARE grader_organisation INT;
    
    SET @grader_organisation := (SELECT organisation_id FROM researcher WHERE researcher_id = new.grader_id);
    
    IF new.organisation_id = grader_organisation THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'insert in project failed because the grader belongs to the organisation of the project';
    END IF;
END$   
DELIMITER ; 

DELIMITER $
CREATE TRIGGER `grader_organisation_before_update` BEFORE UPDATE ON `project`
FOR EACH ROW
BEGIN
    DECLARE grader_organisation INT;
    
    SET @grader_organisation := (SELECT organisation_id FROM researcher WHERE researcher_id = new.grader_id);
    
    IF new.organisation_id = grader_organisation THEN
        SIGNAL SQLSTATE '45000'
           SET MESSAGE_TEXT = 'update in project failed because the grader belongs to the organisation of the project';
    END IF;
END$   
DELIMITER ; 

