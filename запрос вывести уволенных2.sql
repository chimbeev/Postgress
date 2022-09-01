--CREATE VIEW result1 AS 
SELECT personal_data.human_id, last_name, first_name, patronymic, employment_data.employment_data_id, employment_data.status, contact_data.value 
        FROM  staff.personal_data, staff.employment_data, staff.contact_data
where personal_data.human_id = '16093' and personal_data.human_id = employment_data.human_id and personal_data.human_id = contact_data.human_id
order by first_name, patronymic
----------------
DO
$do$
BEGIN
   IF EXISTS (select * from result1 where result1.status = 'CURRENT')) THEN
      INSERT INTO orders VALUES (1,2,3);
   END IF;
END
$do$