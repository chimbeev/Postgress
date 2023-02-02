
with v1 as --��������� ������� �� ������� ����������� � ���� ����������� � FEDI �� ������. 
  --distinct on ������� ��������� �����, �������� ��������������� ������
 (select distinct on (ed.first_employment_data_id) ed.employment_data_id, ed.first_employment_data_id, ed.ref_work_week_type_id 
        from staff.employment_data as ed  
        --������� ������ ���������� � 6 ������� � � ������� first employment data id (FEDI) �� ������. �� ���� FEDI ����������� ������ �������� 
        --� �������� ������� �� ��������
        where (ed.ref_work_week_type_id = 2 AND ed.status = 'CURRENT' AND ed.first_employment_data_id IS NOT NULL))
        
--��������� � ������� vacation_data �������������� ����������� ������        
INSERT INTO staff.vacation_data (ref_vacation_type_id, employment_data_id, begin_date, end_date, days_count, note, status, 
        period_begin, period_end, creation_time, order_id, holidays_count, modification_time) 
SELECT 3, v1.first_employment_data_id, '2022-12-29', '2022-12-31', 3, '������ 3657�� �� 31.10.2022', 'ARCHIVE', '2021-09-01', '2022-08-31',
        '2023-01-30 14:55:12', null, 0, '2023-01-30 15:55:34' FROM v1
--SELECT first_employment_data_id from v1