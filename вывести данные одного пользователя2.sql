SELECT personal_data.human_id, last_name, first_name, patronymic, employment_data.employment_data_id, employment_data.first_employment_data_id, employment_data.department_id, employment_data.status, user_data.user_data_id, user_data.user_name, user_data.password, user_data.enabled,
user_role.ref_role_code, user_role.status, ref_post_role.ref_role_code, ref_post_role.status
FROM staff.personal_data
left JOIN staff.employment_data ON ( employment_data.human_id = personal_data.human_id )
left JOIN staff.user_data ON ( user_data.human_id = employment_data.human_id )
left JOIN staff.user_role ON ( user_role.user_data_id = user_data.user_data_id )
left JOIN staff.ref_post_role ON ( ref_post_role.ref_post_id = employment_data.ref_post_id )

where last_name = 'Конева'  
and first_name = 'Ирина'
--and employment_data.status = 'CURRENT'