
grant ALL 
   on Employees 
   to DBA;


grant READ 
   on Employees 
   to Analyst;


grant READ, WRITE 
   on Employees 
   to Application;


grant ALL 
   on Departments 
   to DBA;


grant READ 
   on Departments 
   to Analyst, Application;

