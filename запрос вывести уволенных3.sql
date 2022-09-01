select status from (SELECT personal_data.human_id, last_name, first_name, patronymic, employment_data.employment_data_id, employment_data.status, contact_data.value 
              FROM  staff.personal_data, staff.employment_data, staff.contact_data
              where personal_data.human_id = '16093' and personal_data.human_id = employment_data.human_id and personal_data.human_id = contact_data.human_id
              order by first_name, patronymic ) as foo
              where status = 'DISMISSED'
           
