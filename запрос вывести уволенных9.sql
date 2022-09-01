--вывести строки из employment_data где в поле статус CURRENT

   --выводим всех работников со всеми должностями
      WITH table_name3 AS (SELECT personal_data.human_id, last_name, first_name, patronymic, employment_data.employment_data_id, employment_data.status, contact_data.value 
              FROM  staff.personal_data, staff.employment_data, staff.contact_data
              where personal_data.human_id = employment_data.human_id and personal_data.human_id = contact_data.human_id
              order by first_name, patronymic)
      
--теперь надо считать записи с одинаковым human_id , искать строку со статусом current. Если найдена, то удалить все строки с этим human_id (сотрудник работает)
      select 
        human_id, last_name, first_name, patronymic,
        STRING_AGG(status, ',') AS status2
        from table_name3
        group by human_id, last_name, first_name, patronymic
        
      
         
        
        