select * from personal_data ou
where (select count(*) from personal_data inr
where (inr.ref_citizenship_id = ou.ref_citizenship_id or inr.ref_citizenship_id is null) and (inr.last_name = ou.last_name or inr.last_name is null) 
and (inr.first_name = ou.first_name or inr.first_name is null) and (inr.patronymic = ou.patronymic or inr.patronymic is null) 
and (inr.sex = ou.sex or inr.sex is null) and (inr.birth_date = ou.birth_date or inr.birth_date is null) 
and (inr.birth_place = ou.birth_place or inr.birth_place is null) and (inr.snils = ou.snils or inr.snils is null)
and (inr.inn = ou.inn or inr.inn is null) and (inr.status = ou.status or inr.status is null)) > 1