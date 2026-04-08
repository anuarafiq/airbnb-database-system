SET LINESIZE 250;
SET PAGESIZE 50;

COLUMN FULL_NAME           FORMAT A15;
COLUMN EMPLOYMENT_STATUS   FORMAT A12;
COLUMN ROLE_TITLE          FORMAT A18;
COLUMN BASE_SALARY         FORMAT 9999.99;
COLUMN TASK_DESC           FORMAT A15;
COLUMN PERCENT             FORMAT 999.99;
COLUMN PRIORITY            FORMAT 99;
COLUMN REQ_DATE            FORMAT A12;
COLUMN AMENITY_NAME        FORMAT A15;
COLUMN CATEGORY            FORMAT A10;
COLUMN NET_INCOME          FORMAT 9999.99;
COLUMN PAYOUT_STATUS       FORMAT A10;

SELECT 
    s.full_name, s.employment_status,
    sr.role_title, sr.base_salary,
    mt.description AS task_desc, mt.completion_percentage AS percent,
    mr.priority_level AS priority, mr.request_date AS req_date,
    a.amenity_name, a.category,
    e.net_income, e.payout_status
FROM staff s
JOIN staff_role sr 
    ON s.role_id = sr.role_id AND s.role_code = sr.role_code
JOIN staff_maintenance_task smt 
    ON s.staff_id = smt.staff_id AND s.employment_mode = smt.employment_mode
JOIN maintenance_task mt 
    ON smt.task_id = mt.task_id AND smt.task_code = mt.task_code
JOIN maintenance_request mr 
    ON mt.request_id = mr.request_id AND mt.request_code = mr.request_code
JOIN amenity a 
    ON mr.amenity_id = a.amenity_id AND mr.amenity_code = a.amenity_code
JOIN earning e 
    ON mt.earning_id = e.earning_id AND mt.earning_period_code = e.earning_period_code
WHERE s.employment_mode = 'Permanent'
    AND sr.status = 1
    AND mr.priority_level = 3
    AND a.category = 'Utility'
ORDER BY s.full_name;