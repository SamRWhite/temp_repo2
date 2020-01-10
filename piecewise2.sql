UPDATE TABLE(
  SELECT emp_jobs_obj_nt
  FROM emp_jobs_objects
  WHERE employee_id = 104) u
SET VALUE(u) = jobs_obj('PROG4','Programmer444')
WHERE u.job_id = 'IT_PROG'
/

INSERT INTO TABLE(
  SELECT emp_jobs_obj_nt
  FROM emp_jobs_objects
  WHERE employee_id = 104) u
VALUES (jobs_obj('PROG2','Programmer222'))
/
DELETE TABLE(
  SELECT emp_jobs_obj_nt
  FROM emp_jobs_objects
  WHERE employee_id = 104) u
WHERE u.job_id = 'PROG2'
/