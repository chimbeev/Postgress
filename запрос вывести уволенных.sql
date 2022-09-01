SELECT personal_data.human_id, last_name, first_name, patronymic, employment_data.status, 
        contact_data.value
FROM  staff.personal_data, staff.employment_data, staff.contact_data
where personal_data.human_id = employment_data.human_id
and employment_data.status  = 'DISMISSED' or employment_data.status  = 'ARCHIVE'
order by first_name, patronymic