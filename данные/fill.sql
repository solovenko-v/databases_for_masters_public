TRUNCATE division CASCADE;
TRUNCATE education_form CASCADE;
TRUNCATE education_level CASCADE;
TRUNCATE specialty CASCADE;
TRUNCATE curriculum CASCADE;
TRUNCATE academic_group CASCADE;

-- C:\_Programming\timetable\sql\fill\metodist\data - путь к папке с данными для заполнения
COPY division (id, name, short_name) 
  FROM 'C:\_Programming\timetable\sql\fill\metodist\data\division.csv'
  WITH DELIMITER ';' CSV HEADER;
COPY education_form (id, name, short_name) 
  FROM 'C:\_Programming\timetable\sql\fill\metodist\data\education_form.csv'
  WITH DELIMITER ';' CSV HEADER;
COPY education_level (id, name, pressmark, active) 
  FROM 'C:\_Programming\timetable\sql\fill\metodist\data\education_level.csv'
  WITH DELIMITER ';' CSV HEADER;
COPY specialty (id, name, pressmark) 
  FROM 'C:\_Programming\timetable\sql\fill\metodist\data\specialty.csv'
  WITH DELIMITER ';' CSV HEADER;
COPY curriculum (id, name, division_id, education_form_id, education_level_id, recruitment_year) 
  FROM 'C:\_Programming\timetable\sql\fill\metodist\data\curriculum.csv'
  WITH DELIMITER ';' CSV HEADER;
COPY academic_group (id, name, short_name, division_id, education_form_id, 
  education_level_id, recruitment_year, specialty_id, curriculum_id) 
  FROM 'C:\_Programming\timetable\sql\fill\metodist\data\academic_group.csv'
  WITH DELIMITER ';' CSV HEADER;