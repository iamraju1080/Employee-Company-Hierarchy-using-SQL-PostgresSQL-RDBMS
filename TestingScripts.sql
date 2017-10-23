-- script for finding who is supervisor 

select a.emp_name Employee_name, c.emp_name Manager_name, r.JobRole_desc
from employee a inner join emp_hierarchy b on a.emp_id = b.Emp_id
                inner join employee c on b.Manager_id = c.emp_id
				inner join roles r on a.Role_id= r.role_id
  order by c.emp_id


---- What is the name of the Atlas Corporation owner?

  Select a.Emp_name 
  from Employee a inner join Emp_hierarchy b on  a.emp_id = b.Emp_id
                  inner join Roles c on a.Role_id = c.Role_id 
				  where C.JobRole_desc ='Owner'


--- What are the names of employees who directly reports to the Atlas Corporation human resources director? 

Select d.Emp_name from Roles a inner join employee b on a.role_id = b.Role_id  and a.JobRole_desc  ='Human Resource Director'
                     inner join emp_hierarchy c on c.Manager_id = b.Emp_id 
					 inner join Employee d on c.Emp_id = d.Emp_id




--What are the names of employees who have access to restricted room 'Server Room'	?	

Select c.Emp_name From Restricted_Room  a 
    inner join Restricted_Access b on a.Room_num = b.Room_num and  a.Room_name ='Server Room'	
	inner join Employee c on c.Emp_id = b.Emp_id

--How many employees have chosen the Acme HMO health plan? 

Select count(1) from Emp_Insurance a where Healthplan_code ='Acme HMO'


--How many dependents does each employee have? 

select a.Emp_name as Emp_name, count(dependent_id) Count_of_dependents from Employee a
               inner join Emp_Dependents b on a.Emp_id =b.Emp_id 
                          Group by a.Emp_name


-- What is the name of employee John Smith's emergency contact?

Select a.Contact_name from Emp_EmergencyContact a 
      inner join Employee b on a.Emp_id = b.emp_id
	  where b.Emp_name ='John Smith'

	 
--  What is employee John Smith's job description? 


select a.Emp_name, b.Jobrole_desc from Employee a  inner join Roles b on a.Role_id = b.Role_id 
                                              and a.Emp_name ='John Smith'

--  What are the restricted rooms to which John Smith has access (if any)? 

Select c.Room_name from Restricted_Access a inner join employee b on a.emp_id =b.emp_id and b.Emp_name ='John Smith'
               inner join Restricted_Room c on a.Room_num = c.Room_num
       
--  Which of the health insurance plans has the most employees enrolled? 

select Healthplan_code, count(emp_id) 
from Emp_Insurance Group by HealthPlan_code
having count(emp_id) 
 in 
 (select max(a.Emp_count) from 
(Select Healthplan_code, count(emp_id) Emp_count  from Emp_Insurance 
Group by HealthPlan_code) a 
)



--List all dependents of male employee whose salary is >300000

Select b.Emp_id,b.emp_name,  a.Dependent_name from emp_dependents a inner join Employee b on a.Emp_id = b.Emp_id and b.Emp_gender ='M'
      inner join Emp_salary c on b.emp_id = c.Emp_id and c.Annual_Sal >300000 
	  order by b.emp_id


-- Name of male Employee having authorised access to Server Room

Select Emp_name from Employee a inner join Restricted_Access b on a.Emp_id = b.Emp_id and  a.Emp_gender ='M'
                                inner join Restricted_Room c on b.Room_num = c.Room_num and c.Room_name ='Server Room'

-- Employees born after 1/1/1985

select Emp_name, Emp_birthdate from Employee where Emp_birthdate > cast('01/01/1985 ' as date);

-- list of employess who work under manager Cameroon Winklevoss after 2010

select c.Emp_name from Employee a inner join Emp_hierarchy b on a.Emp_id = b.Manager_id and a.Emp_name ='Cameron Winklevoss'
                              inner join Employee c on b.Emp_id = c.Emp_id
							  and c.Emp_Dateofhire > cast('12/31/2009 ' as date)



-- Youngest male employee 

select Emp_name from Employee where  Emp_gender='M' and  (current_date - Emp_birthdate)
in (
select  min(current_date - Emp_birthdate)  from Employee where Emp_gender ='M')


