--������� ������ �� employment_data ��� � ���� ������ CURRENT

   --������� ���� ���������� �� ����� �����������
      WITH table_name3 AS (SELECT personal_data.human_id, last_name, first_name, patronymic, employment_data.employment_data_id, employment_data.status, contact_data.value 
              FROM  staff.personal_data, staff.employment_data, staff.contact_data
              where personal_data.human_id = employment_data.human_id and personal_data.human_id = contact_data.human_id
              order by first_name, patronymic)
      
--������ ���� ������� ������ � ���������� human_id , ������ ������ �� �������� current. ���� �������, �� ������� ��� ������ � ���� human_id (��������� ��������)
      select 
        human_id, last_name, first_name, patronymic,
        STRING_AGG(status, ',') AS status2
        from table_name3
        group by human_id, last_name, first_name, patronymic
        
      
         
        
        