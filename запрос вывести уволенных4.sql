--вывести строки из employment_data где в поле статус CURRENT
Select 
   case 
         when not EXISTS (select * from (SELECT personal_data.human_id, last_name, first_name, patronymic, employment_data.employment_data_id, employment_data.status, contact_data.value 
              FROM  staff.personal_data, staff.employment_data, staff.contact_data
              where personal_data.human_id = '15008' and personal_data.human_id = employment_data.human_id and personal_data.human_id = contact_data.human_id
              order by first_name, patronymic ) as foo
              where status = 'CURRENT') THEN
              DO $$
                 begin
                        raise notice 'insert tbl1 done!';
                 end;
              $$;
--      INSERT INTO orders VALUES (1,2,3);
   end;




           
