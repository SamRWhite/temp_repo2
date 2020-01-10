SELECT e.department_id, 
       e.employee_id, 
       e.last_name,
       e2.job_id,
       e2.job_title
FROM emp_jobs_objects e,
     TABLE(e.emp_jobs_obj_nt) e2
WHERE e.employee_id = 104
ORDER BY e.employee_id
/
SELECT e.employee_id,
       e2.job_id,
       e2.job_title
FROM emp_jobs_objects e,
     TABLE(e.emp_jobs_obj_nt) e2
WHERE e.employee_id = 100
/
SELECT e2.job_id,
       e2.job_title
FROM TABLE(SELECT emp_jobs_obj_nt
           FROM emp_jobs_objects
           WHERE employee_id = 100) e2

/
SELECT e.department_id, 
       e.employee_id, 
       e.last_name,
       CURSOR(SELECT e2.*
              FROM TABLE(e.emp_jobs_obj_nt) e2
              WHERE e2.job_id = 'SR_VP-NEW')
FROM emp_jobs_objects e
WHERE employee_id = 100
/