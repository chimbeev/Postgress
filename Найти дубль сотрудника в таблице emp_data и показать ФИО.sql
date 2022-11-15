select personal_data.human_id, personal_data.last_name, personal_data.first_name, personal_data.patronymic from personal_data inner join (select * from employment_data ou
where (select count(*) from employment_data inr
where (inr.human_id = ou.human_id or inr.human_id is null) and (inr.first_employment_data_id = ou.first_employment_data_id or inr.first_employment_data_id is null) 
and (inr.department_id = ou.department_id or inr.department_id is null) and (inr.ref_post_id = ou.ref_post_id or inr.ref_post_id is null) 
and (inr.ref_post_type_id = ou.ref_post_type_id or inr.ref_post_type_id is null) and (inr.unit_code = ou.unit_code or inr.unit_code is null) 
and (inr.wage_rate = ou.wage_rate or inr.wage_rate is null) and (inr.contract_start_date = ou.contract_start_date or inr.contract_start_date is null)
and (inr.contract_end_date = ou.contract_end_date or inr.contract_end_date is null) and (inr.contract_info = ou.contract_info or inr.contract_info is null) 
and (inr.accept_date = ou.accept_date or inr.accept_date is null) and (inr.probation_period = ou.probation_period or inr.probation_period is null) 
and (inr.dismiss_date = ou.dismiss_date or inr.dismiss_date is null) and (inr.dismissed = ou.dismissed or inr.dismissed is null) 
/*and (inr.max_vacation_days = ou.max_vacation_days or inr.max_vacation_days is null) and (inr.creation_time = ou.creation_time or inr.creation_time is null) 
and (inr.order_number = ou.order_number or inr.order_number is null) and (inr.order_date = ou.order_date or inr.order_date is null) */
and (inr.status = ou.status and ou.status ='CURRENT' or inr.status is null )) > 1) ttt on personal_data.human_id = ttt.human_id order by last_name