--вывести строки из employment_data где в поле статус CURRENT

   -- do stuff here.....
   select * from (select * from (SELECT personal_data.human_id, last_name, first_name, patronymic, employment_data.employment_data_id, employment_data.status, contact_data.value 
              FROM  staff.personal_data, staff.employment_data, staff.contact_data
              where personal_data.human_id = employment_data.human_id and personal_data.human_id = contact_data.human_id
              order by first_name, patronymic) as foo
              where status = 'CURRENT')
              case 
                when  IF @@ROWCOUNT == 0 
                THEN select 'tert' ; 
              end
        
        
                




           
