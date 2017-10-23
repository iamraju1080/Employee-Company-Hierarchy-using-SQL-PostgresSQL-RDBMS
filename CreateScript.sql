-- Create Database 

CREATE DATABASE AtlasCorpHRData;

-- Create Domain

 --create type Gender_type FROM CHAR(1) 
 --create type Relationship_type FROM CHAR(8)

CREATE domain Gender_type as CHAR(1)  CHECK (Value in ( 'M', 'F'));

CREATE domain  Relationship_type as CHAR(8) CHECK (Value in ( 'Spouse', 'Children', 'Friend', 'Parent'));


---Tables:

----Below script will create all the tables required for this database.

---Script:

-- Create table Roles

create table Roles
(
role_id varchar(5) primary key, 
JobRole_desc varchar(40) not null
); 


-- Create tableJobclassification 

Create table Jobclassification 
( jobclass_id varchar(3) , 
  jobclass_Desc varchar(15) not null, 
  Emp_typ varchar(10) not null,
  primary  key (jobclass_Id)
  ); 


-- Create table Employee

Create table Employee
( Emp_id numeric(4) , 
  Emp_name varchar(40) not null, 
  Emp_ssn varchar(11) not null,
  Emp_birthdate date not null, 
  Emp_gender gender_type , 
  Emp_Homeaddress varchar(100),
  Emp_dateofhire date not null,
  role_id varchar(5) ,
  jobclass_id varchar(3),
  Fulltime_ind numeric(1) , 
  Email_id varchar(50),
  Vacation numeric(2),
  primary key ( Emp_id),
  foreign key (role_id ) references Roles(Role_id),
  foreign key (jobclass_id) references jobclassification(jobclass_id)  ); 


-- Create table Emp_Dependents

create table Emp_Dependents
( dependent_id varchar(4), 
  emp_id numeric(4) not null, 
  Relationship relationship_type not null,
  ssn varchar(11), 
  dependent_name varchar(40) not null, 
  dependent_birthdate date not null, 
  Gender gender_type not null,
  primary key(dependent_id), 
  foreign key (emp_id) references Employee( emp_id)
  ); 

-- Create table Emp_Phonenumber

Create table Emp_Phonenumber
( Phonenumber_id varchar(4),
  Emp_id numeric(4) , 
  Phonenumber numeric(10) , 
  primary key ( Phonenumber_id ),
  foreign key (Emp_id) references Employee(emp_id)
  );
  

-- Create table Emp_emergencycontact

create table Emp_emergencycontact
( contact_id varchar(6)  ,
  emp_id numeric(4),
  Contact_name varchar(30) not null , 
  Çontact_phonenumber numeric(10) not null, 
  Contact_relationship RELATIONSHIP_TYPE not null, 
  primary key (contact_id), 
  foreign key (emp_id) references Employee(emp_id) 
  );


-- Create table Emp_hierarchy

Create table Emp_hierarchy
(Emp_id numeric(4) , 
 Manager_id	numeric(4)  ,
  primary key (Emp_id), 
 foreign key ( Emp_id) references Employee( Emp_id)

 ); 


-- Create table Emp_Salary

create table Emp_Salary 
( Salary_id varchar(4) , 
  Emp_id numeric(4) ,
  Annual_Sal numeric(9), 
  hourly_payrate numeric(4),
  primary key (Salary_id),
  foreign key (Emp_id) references Employee (Emp_id)
  );

-- Create table HealthPlan

 Create table HealthPlan
( Healthplan_code varchar(8)  , 
  Healthplan_vendor varchar(10) not null, 
  Individual_rate numeric(4), 
  Family_rate numeric(4), 
  Individual_deductibles numeric(4), 
  Family_Deductibles numeric(4), 
  Co_pay numeric(2), 
  Co_insurance numeric(2),
  primary key (Healthplan_code)
  ); 


  -- Create table Emp_Insurance

  Create table Emp_insurance
( Emp_id numeric(4) , 
  Healthplan_code varchar(8) , 
  Covereddependents_ind numeric(1) not null, 
  primary key (Emp_id),
  foreign key (Emp_id) references Employee( Emp_id),
  foreign key (Healthplan_code) references Healthplan (Healthplan_code)
  );

  -- Create table Insured_Dependents

  Create table Insured_Dependents
( Emp_id numeric(4) , 
  Dependent_id varchar(4) , 
  primary key (dependent_id), 
  foreign key (dependent_id) references Emp_dependents (dependent_id),
  foreign key (Emp_id) references Emp_insurance ( emp_id)
  );

  -- Create table Restricted_Room

  Create table Restricted_Room 
( Room_num varchar(4) , 
 Room_name varchar(30) not null, 
 Internal_Phnum numeric(10) not null, 
 Hazardous_ind numeric(1) not null, 
 Role_id varchar(5) , 
 primary key (room_num),
 foreign key (Role_id) references Roles (Role_id)
 );

 -- Create table Restricted_Access

 create table Restricted_Access
(Emp_id numeric(4) , 
 Room_num varchar(4) , 
 primary key (emp_id, Room_num),
 foreign key (Emp_id) references Employee (Emp_id),
 foreign key (Room_num) references Restricted_Room (Room_num)
 );

 -- create view Emp_w4
 

Create view Emp_W4 as
select Emp_id as Emp_id, count(dependent_id) Count_of_dependents from emp_dependents
 group by emp_id ;

-- end


