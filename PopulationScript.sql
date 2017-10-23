-- Populate Roles tables

insert into Roles (Role_id, JobRole_Desc)
Values
('R0001','Owner'),
('R0002','Human Resource Director'),
('R0003','Information System Director'),
('R0004','Operations Director'),
('R0005','Project Lead'),
('R0006','Team member'),
('R0007','Special HR Role'),
('R0008','Senior Analyst'),
('R0009','Server Room Technician '); 

-- Populate Rows in Jobclassification 

insert into Jobclassification ( jobclass_id, jobclass_desc, emp_typ)
values 
('E1','Executive','Exempt'),
('E2','Managers','Exempt'),
('E3','Leaders','Exempt'),
('E4','Skilled Workers','Exempt'),
('NE1','Executive','Non Exempt'),
('NE2','Managers','Non Exempt'),
('NE3','Leaders','Non Exempt '),
('NE4','Skilled Workers','Non Exempt');
  
  
  -- Insert into table Employee for 37 employees

  Insert into Employee ( Emp_id, Emp_name, Emp_ssn, Emp_birthdate, Emp_gender, Emp_Homeaddress, Emp_dateofhire,Role_id, Jobclass_id,Fulltime_ind,Email_id)
  Values (1001,'Mark Zukerberg','550-24-3090','12-may-1984','M','290 turnpike road, MA','01-mar-2004','R0001','E1',null,'Owner@atlas.com'),
(1002,'Dhanush Pulyala','599-60-4301','20-jun-1980','M','100 London street, CT','30-mar-2004','R0002','E2',null,'Hrdirector@atlas.com'),
(1003,'Prasad Rao','550-24-3091','12-jan-1984','M','3 Havard Road, MA','10-mar-2004','R0003','E2',null,'InformationDirector@atlas.com'),
(1004,'Bill Gates','599-60-4302','14-dec-1977','M','Beverly Hillls, California','10-mar-2004','R0004','NE2',1,null),
(1005,'Steve Jobs','550-24-3092','14-dec-1958','M','290 turnpike road, MA','10-mar-2004','R0005','NE3',0,null),
(1006,'John Smith','599-60-4303','14-dec-1959','M','100 London street, CT','10-mar-2004','R0005','E3',null,null),
(1007,'Eudardo Saverin','550-24-3093','14-dec-1960','M','3 Havard Road, MA','31-Dec-2004','R0006','E4',null,null),
(1008,'Sean Parker','599-60-4304','14-dec-1961','M','Beverly Hillls, California','31-Dec-2004','R0006','E4',null,null),
(1009,'Chris Hughes','550-24-3094','14-dec-1962','M','290 turnpike road, MA','31-Dec-2004','R0006','NE4',1,null),
(1010,'Andrew McCollum','599-60-4305','14-dec-1963','M','100 London street, CT','31-Dec-2004','R0006','NE4',0,null),
(1011,'Gil Amelio','550-24-3095','14-dec-1964','M','3 Havard Road, MA','31-Dec-2004','R0007','E4',null,null),
(1012,'Warren Buffet','599-60-4306','14-dec-1965','M','Beverly Hillls, California','31-Dec-2004','R0006','E4',null,null),
(1013,'Indira Gandhi ','550-24-3096','14-dec-1966','F','290 turnpike road, MA','31-Dec-2004','R0005','E3',null,null),
(1014,'Hillary Clinton','599-60-4307','14-dec-1967','F','100 London street, CT','31-Dec-2004','R0005','NE3',1,null),
(1015,'Angela Markell','550-24-3097','14-dec-1968','F','3 Havard Road, MA','31-Dec-2004','R0006','NE4',0,null),
(1016,'Ivanka Trump','599-60-4308','14-dec-1969','F','Beverly Hillls, California','31-Dec-2004','R0006','E4',null,null),
(1017,'Chandra Kochhar','550-24-3098','14-dec-1970','F','290 turnpike road, MA','15-mar-2005','R0006','E4',null,null),
(1018,'Vijaylakshmi Iyer','599-60-4309','14-dec-1971','F','100 London street, CT','15-mar-2005','R0006','E4',null,null),
(1019,'Pratibha Patil','550-24-3099','14-dec-1972','F','3 Havard Road, MA','15-mar-2005','R0006','NE4',1,null),
(1020,'Indra Nooyi ','599-60-4310','14-dec-1973','F','Beverly Hillls, California','15-mar-2005','R0008','NE4',0,null),
(1021,'Tim Cook','550-24-3100','14-dec-1974','M','290 turnpike road, MA','15-mar-2005','R0005','E3',null,null),
(1022,'Cameron Winklevoss','599-60-4311','14-dec-1975','M','100 London street, CT','15-mar-2005','R0005','E3',null,null),
(1023,'Tyler Winklevoss','550-24-3101','14-dec-1976','M','3 Havard Road, MA','15-mar-2005','R0005','E3',null,null),
(1024,'Divya Narendra','599-60-4312','14-dec-1977','M','Beverly Hillls, California','15-mar-2005','R0006','NE4',1,null),
(1025,'Steve Woznaik','550-24-3102','14-dec-1978','M','290 turnpike road, MA','15-mar-2005','R0006','NE4',0,null),
(1026,'Ronald Wayne','599-60-4313','14-dec-1979','M','100 London street, CT','20-june-2005','R0006','E4',null,null),
(1027,'Mike Markulla','550-24-3103','14-dec-1980','M','3 Havard Road, MA','20-june-2005','R0006','E4',null,null),
(1028,'John Sculley ','599-60-4314','14-dec-1981','M','Beverly Hillls, California','20-june-2005','R0006','E4',null,null),
(1029,'Michael Spindler','550-24-3104','14-dec-1982','M','290 turnpike road, MA','20-june-2005','R0006','NE4',1,null),
(1030,'Venus Williams','599-60-4315','14-dec-1983','F','100 London street, CT','20-june-2008','R0006','NE4',0,null),
(1031,'Maria Sharapova','550-24-3105','14-dec-1984','F','3 Havard Road, MA','20-june-2009','R0006','E4',null,null),
(1032,'Serena Williams','599-60-4316','14-dec-1985','F','Beverly Hillls, California','20-june-2010','R0006','E4',null,null),
(1033,'Paul Allen','550-24-3106','14-dec-1986','M','290 turnpike road, MA','20-june-2011','R0006','E4',null,null),
(1034,'Steve Ballmer','599-60-4317','14-dec-1987','M','100 London street, CT','20-june-2012','R0006','NE4',1,null),
(1035,'Satya Nadella','550-24-3107','14-dec-1988','M','3 Havard Road, MA','20-june-2013','R0006','NE4',0,null),
(1036,'John Thompson','599-60-4318','14-dec-1989','M','Beverly Hillls, California','20-june-2014','R0009','E4',null,null),
(1037,'Brad Smith','550-24-3108','14-dec-1990','M','290 turnpike road, MA','20-june-2015','R0009','E4',null,null);

 -- populate Emp_dependents table 
 insert into Emp_Dependents ( dependent_id, emp_id, Relationship, ssn, dependent_name, dependent_birthdate, Gender)
values 
('D001','1006','Spouse','800-34-1234','Karen Smith','19-Nov-1984','F'),
('D002','1006','Children','865-23-3000','Nicole Smith','15-Mar-2000','F'),
('D003','1006','Children','800-34-1235','Kevin Smith','25-dec-2001','M'),
('D004','1001','Spouse','865-23-3001','Pricilla Chan','15-Mar-1983','F'),
('D005','1001','Children','800-34-1236','Jack Zukerberg','12-Apr-2015','M'),
('D006','1004','Spouse','865-23-3002','Melinda Gates','27-Oct-1970','F'),
('D007','1005','Children','800-34-1237','Jennifer Hogan','12-Apr-2015','F'),
('D008','1006','Children','865-23-3003','Kathy Ford','12-Apr-2015','F'),
('D009','1007','Spouse','800-34-1238','Rachel Saverin','16-Aug-1984','F'),
('D010','1008','Children','865-23-3004','George Clooney','01-May-2003','M'),
('D011','1009','Spouse','800-34-1239','Diandra Anderson','27-nov-1975','F'),
('D012','1010','Children','865-23-3005','Jenna Carlson','12-Apr-2001','M'),
('D013','1011','Children','800-34-1240','Mike Watson','01-May-2002','M'),
('D014','1012','Children','865-23-3006','Michael Beaton','30-Apr-2003','M'),
('D015','1013','Children','800-34-1241','Shannon Harris','12-mar-2004','F'),
('D016','1014','Children','865-23-3007','Karen Clinton','12-Apr-2005','F'),
('D017','1015','Children','800-34-1242','Donald Lewis','12-Apr-2001','M'),
('D018','1016','Children','865-23-3008','Jeff Goldblum','01-May-2002','M'),
('D019','1017','Children','800-34-1243','Eric Roberts','12-Apr-2003','M'),
('D020','1018','Children','865-23-3009','Pranav Kher','10-mar-2004','M'),
('D021','1019','Children','800-34-1244','Rachel Patil','10-Apr-2005','F'),
('D022','1020','Children','865-23-3010','Samuel Jackson','10-Apr-2001','M'),
('D023','1021','Children','800-34-1245','Jim Morgan','01-May-2002','M'),
('D024','1022','Children','865-23-3011','Alexander Bell','10-Apr-2003','M'),
('D025','1023','Children','800-34-1246','Jessica Shannon','13-mar-2004','F'),
('D026','1024','Children','865-23-3012','Brandon Wright','13-Apr-2005','M'),
('D027','1025','Children','800-34-1247','Matthew Roberts','13-Apr-2001','M'),
('D028','1026','Children','865-23-3013','Joseph Thomas','05-May-2002','M');



-- Populate Emp_Phonenumber
  
Insert into Emp_Phonenumber ( Phonenumber_id, Emp_id, Phonenumber)
values
('P001',1001,9100034590),
('P002',1002,9101034653),
('P003',1003,9102034716),
('P004',1003,9103034779),
('P005',1003,9104034842),
('P006',1004,9105034905),
('P007',1005,9106034968),
('P008',1006,9107035031),
('P009',1007,9108035094),
('P010',1008,9109035157),
('P011',1009,9110035220),
('P012',1010,9111035283),
('P013',1011,9112035346),
('P014',1012,9113035409),
('P015',1013,9114035472),
('P016',1014,9115035535),
('P017',1015,9116035598),
('P018',1016,9117035661),
('P019',1017,9118035724),
('P020',1018,9119035787),
('P021',1019,9120035850),
('P022',1020,9121035913),
('P023',1021,9122035976),
('P024',1022,9123036039),
('P025',1023,9124036102),
('P026',1024,9125036165),
('P027',1025,9126036228),
('P028',1026,9127036291),
('P029',1027,9128036354),
('P030',1028,9129036417),
('P031',1029,9130036480),
('P032',1030,9131036543),
('P033',1031,9132036606),
('P034',1032,9133036669),
('P035',1033,9134036732),
('P036',1034,9135036795),
('P037',1035,9136036858),
('P038',1036,9137036921),
('P039',1037,9138036984);

-- Populate Emp_Emergencycontact

Insert into Emp_emergencycontact
values 
('E00101',1006,'Michael Smith',8898999992,'Parent'),
('E00102',1005,'Pricilla Chan',9001002301,'Spouse'),
('E00103',1004,'Melinda Gates',9103004610,'Spouse'),
('E00104',1005,'Jennifer Hogan',9205006919,'Children'),
('E00105',1007,'Rachel Saverin',9307009228,'Children'),
('E00106',1008,'George Clooney',9409011537,'Children'),
('E00107',1009,'Diandra Anderson',9511013846,'Children'),
('E00108',1010,'Jenna Carlson',9613016155,'Children'),
('E00109',1011,'Mike Watson',9715018464,'Children'),
('E00110',1012,'Michael Beaton',9817020773,'Children'),
('E00111',1013,'Rajeev Dave',1449057717,'Friend'),
('E00112',1014,'Melinda Gates',9103004610,'Friend'),
('E00113',1015,'Donald Lewis',1123027700,'Children'),
('E00114',1016,'Rajeev Dave',9449057717,'Friend'),
('E00115',1017,'Eric Roberts',9449057718,'Children'),
('E00116',1018,'Pranav Kher',9449057719,'Children'),
('E00117',1019,'Rachel Patil',9449057720,'Children'),
('E00118',1020,'Samuel Jackson',9449057721,'Children'),
('E00119',1021,'Jim Morgan',9449057722,'Children'),
('E00120',1022,'Alexander Bell',9449057723,'Children'),
('E00121',1023,'Jessica Shannon',9449057724,'Children'),
('E00122',1024,'Brandon Wright',9449057725,'Children'),
('E00123',1025,'Matthew Roberts',9449057726,'Children'),
('E00124',1026,'Joseph Thomas',9449057727,'Children'),
('E00125',1003,'Sachin Kumar',9449057728,'Friend'),
('E00126',1002,'Rajeev Dave',9449057729,'Friend'),
('E00127',1027,'Matthew Roberts',9449057730,'Friend'),
('E00128',1028,'Jessica Shannon',9449057731,'Friend'),
('E00129',1029,'Brandon Wright',9449057732,'Friend'),
('E00130',1030,'Matthew Roberts',9449057733,'Friend'),
('E00131',1031,'Joseph Thomas',9449057734,'Friend'),
('E00132',1032,'Sachin Kumar',9449057735,'Friend'),
('E00133',1033,'Matthew Roberts',9449057736,'Friend'),
('E00134',1034,'Matthew Roberts',9449057737,'Friend'),
('E00135',1035,'Matthew Roberts',9449057738,'Friend'),
('E00136',1036,'Matthew Roberts',9449057739,'Friend'),
('E00137',1037,'Matthew Roberts',9449057740,'Friend');




-- Populate Emp_hierarchy

Insert into Emp_hierarchy
values
(1001,null),
(1002,1001),
(1003,1001),
(1004,1001),
(1005,1002),
(1006,1002),
(1007,1005),
(1008,1005),
(1009,1005),
(1010,1006),
(1011,1006),
(1012,1006),
(1013,1003),
(1014,1003),
(1015,1013),
(1016,1013),
(1017,1013),
(1018,1014),
(1019,1014),
(1020,1014),
(1021,1004),
(1022,1004),
(1023,1004),
(1024,1021),
(1025,1021),
(1026,1021),
(1027,1021),
(1028,1022),
(1029,1022),
(1030,1022),
(1031,1022),
(1032,1022),
(1033,1023),
(1034,1023),
(1035,1023),
(1036,1023),
(1037,1023);




-- Populate Emp_Salary table 

 Insert into Emp_Salary (Salary_id, Emp_id, Annual_sal, hourly_payrate)
 values('S001',1001,5000000,null),
('S002',1002,4000000,null),
('S003',1003,4000000,null),
('S004',1004,null,200),
('S005',1005,null,150),
('S006',1006,3000000,null),
('S007',1007,250000,null),
('S008',1008,300000,null),
('S009',1009,null,125),
('S010',1010,null,125),
('S011',1011,400000,null),
('S012',1012,250000,null),
('S013',1013,3000000,null),
('S014',1014,null,150),
('S015',1015,null,125),
('S016',1016,250000,null),
('S017',1017,250000,null),
('S018',1018,550000,null),
('S019',1019,null,120),
('S020',1020,null,125),
('S021',1021,3000000,null),
('S022',1022,3000000,null),
('S023',1023,3000000,null),
('S024',1024,null,120),
('S025',1025,null,110),
('S026',1026,250000,null),
('S027',1027,250000,null),
('S028',1028,600000,null),
('S029',1029,null,125),
('S030',1030,null,125),
('S031',1031,250000,null),
('S032',1032,250000,null),
('S033',1033,880000,null),
('S034',1034,null,125),
('S035',1035,null,130),
('S036',1036,250000,null),
('S037',1037,250000,null);



-- Populate HealthPlan table 

insert into HealthPlan( Healthplan_code, Healthplan_vendor, Individual_rate,  Family_Rate, Individual_Deductibles,Family_Deductibles, Co_pay, Co_insurance)
values 
('Acme HMO','Acme',500,1000,1000,1500,20,10),
('BCBS HMO','BCBS',480,900,1200,2000,30,15),
('UHC HMO','UHC',450,800,1200,3000,30,20);

-- Populate Emp_insurance table
  
insert into Emp_insurance (Emp_id, Healthplan_code,Covereddependents_ind)
values 
(1001,'Acme HMO',1),
(1002,'BCBS HMO',0),
(1003,'UHC HMO',0),
(1004,'Acme HMO',1),
(1006,'Acme HMO',1),
(1007,'BCBS HMO',0),
(1008,'UHC HMO',0),
(1009,'BCBS HMO',0),
(1011,'Acme HMO',0),
(1012,'BCBS HMO',0),
(1013,'UHC HMO',0),
(1014,'UHC HMO',1),
(1016,'Acme HMO',0),
(1017,'BCBS HMO',0),
(1018,'UHC HMO',0),
(1019,'Acme HMO',1),
(1021,'Acme HMO',0),
(1022,'BCBS HMO',0),
(1023,'UHC HMO',0),
(1024,'Acme HMO',1),
(1026,'Acme HMO',0),
(1027,'BCBS HMO',0),
(1028,'UHC HMO',0),
(1029,'Acme HMO',1),
(1031,'Acme HMO',0),
(1032,'BCBS HMO',0),
(1033,'UHC HMO',0),
(1034,'Acme HMO',0),
(1036,'BCBS HMO',0),
(1037,'UHC HMO',0);



-- Populate Insured_Dependents

insert into Insured_Dependents ( Emp_id, Dependent_id)
values 
(1001,'D004'),
(1001,'D005'),
(1004,'D006'),
(1006,'D001'),
(1006,'D002'),
(1006,'D003'),
(1006,'D008'),
(1014,'D016'),
(1019,'D019'),
(1024,'D026'),
(1029,'D028'); 


-- Populate Restricted_Room table

 insert into Restricted_Room ( Room_num , Room_name,  Internal_Phnum,  Hazardous_ind ,  Role_id )
 values 
('R001','Operations Room',3433339000,1,'R0008'),
('R002','Server Room',3433332300,0,'R0009'),
('R003','HR Confidential data Room',3433331101,0,'R0007');


-- Populate Restricted_Access table 

 insert into Restricted_Access (emp_id, Room_num)
 values 
(1001,'R001'),
(1001,'R002'),
(1001,'R003'),
(1002,'R003'),
(1003,'R001'),
(1004,'R002'),
(1006,'R003'),
(1011,'R003'),
(1014,'R001'),
(1020,'R001'),
(1023,'R002'),
(1036,'R002'),
(1037,'R002');

--update column vacation

Update Employee 
set vacation = ( current_date -emp_dateofhire) /(365*3) +2 

--end 



