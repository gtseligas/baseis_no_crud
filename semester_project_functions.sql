/*
*	This function finds the number of projects that a specific organization started, in the time interval [date - 1 year, date]
*/

DELIMITER $$

DROP FUNCTION IF EXISTS projects_organisation_started;$$
CREATE FUNCTION projects_organisation_started(organisation_id INT, last_date DATE) RETURNS INT
READS SQL DATA
BEGIN
  DECLARE project_count INT;
  DECLARE EXIT HANDLER FOR NOT FOUND RETURN NULL;

  SELECT count(*) INTO project_count
  FROM project p
  WHERE p.organisation_id = organisation_id
  AND p.start_date BETWEEN DATE_SUB(last_date, INTERVAL 1 YEAR) AND last_date;
  
  RETURN project_count;
END $$

DELIMITER ;

DELIMITER $$

DROP FUNCTION IF EXISTS is_active;$$
CREATE FUNCTION is_active(start_date DATE, end_date DATE) RETURNS BOOL
READS SQL DATA
BEGIN
  RETURN start_date <= curdate() AND end_date >= curdate();
END $$

DELIMITER ;

DELIMITER $$

DROP FUNCTION IF EXISTS age_from_birth;$$
CREATE FUNCTION age_from_birth(birth_date DATE) RETURNS INT
READS SQL DATA
BEGIN
  RETURN year(curdate()) - year(birth_date);
END $$

DELIMITER ;