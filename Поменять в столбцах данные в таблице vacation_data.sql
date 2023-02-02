
UPDATE staff.vacation_data as vd 
    SET period_begin ='2022-09-01', period_end = '2023-08-31' 
WHERE vd.note LIKE '%3657од от 31.10.2022%'
RETURNING *