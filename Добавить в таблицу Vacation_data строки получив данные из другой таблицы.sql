
with v1 as --формируем таблицу со списком сотрудников у кого шестидневка и FEDI не пустой. 
  --distinct on убирает дубликаты строк, остаются неповторяющиеся строки
 (select distinct on (ed.first_employment_data_id) ed.employment_data_id, ed.first_employment_data_id, ed.ref_work_week_type_id 
        from staff.employment_data as ed  
        --выводим список работников с 6 дневкой и у которых first employment data id (FEDI) не пустое. По полю FEDI учитывается баланс отпусков 
        --и издаются приказы об отпусках
        where (ed.ref_work_week_type_id = 2 AND ed.status = 'CURRENT' AND ed.first_employment_data_id IS NOT NULL))
        
--добавляем в таблицу vacation_data дополнительный трехдневный отпуск        
INSERT INTO staff.vacation_data (ref_vacation_type_id, employment_data_id, begin_date, end_date, days_count, note, status, 
        period_begin, period_end, creation_time, order_id, holidays_count, modification_time) 
SELECT 3, v1.first_employment_data_id, '2022-12-29', '2022-12-31', 3, 'приказ 3657од от 31.10.2022', 'ARCHIVE', '2021-09-01', '2022-08-31',
        '2023-01-30 14:55:12', null, 0, '2023-01-30 15:55:34' FROM v1
--SELECT first_employment_data_id from v1