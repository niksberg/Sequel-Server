create table employee(
e_id int not null,
e_name varchar(20),
e_salary int,
e_age int,
e_gender varchar(20),
e_dept varchar(20),
primary key(e_id)
);

insert into employee values(
1, 'sam', 95000,45,'male','Operations');

insert into employee values(
2, 'bob', 800000, 21, 'male', 'Support');

insert into employee values(
3, 'annes', 125000, 25, 'female', 'Analytics');

insert into employee values(
5, 'matt', 159900, 33, 'male', 'Sales');

insert into employee values(
6, 'pornesh', 12350, 33, 'male', 'Development');

insert into employee values(
7, 'abhis', 169900, 22, 'male', 'Analytics');

insert into employee values(
8, 'niksberg', 189900, 22, 'male', 'Testing');

insert into employee values(
9, 'thushar', 159900, 23, 'male', 'Analytics');

insert into employee values(
10, 'Aayush', 159900, 21, 'male', 'Operations');


select e_age, e_gender from employee;

select * from employee;

select e_gender from employee;

 select * from employee 
 where e_gender='female';

 select * from employee where e_age<23;

 select *from employee where e_salary > 190000; 

 select * from employee where e_gender='male' and e_age<30;

 select * from employee where e_dept='Operations' and e_salary>10000;

 select * from employee where e_dept='Operations' or e_dept='Testing';

 select * from employee where not e_gender='female';

 select * from employee where not e_age<30;
  
 select * from employee where e_name LIKE 'a%';

 select * from employee where e_age LIKE '3_';

 SELECT * FROM employee WHERE e_age BETWEEN 25 AND 30;

 select min(e_age) from employee;

 select max (e_age) from employee;

 select count(*) from employee where e_gender='female'; 

 select avg(e_age) from employee;

 select sum(e_salary) from employee;

 select '    spartaaaa';

 select ltrim('    spartan');

 select 'THIS IS SPARTHAN';
 select LOWER('THIS IS SPARTHAN');

 select UPPER('Hello Universe!');

 select REVERSE('i love ice-cream');
 select 'this is sparta';
 select substring('this is spartan',9,6);

 select * from employee order by e_salary DESC;

 SELECT TOP 3 * From employee;

 select top 3 e_name as 'name' from employee order by e_age desc;

 select e_gender, avg(e_salary) from employee GROUP BY e_gender;

 select e_dept, avg(e_age) from employee GROUP BY e_dept ORDER BY avg(e_age) DESC;

 select e_dept as 'Department', avg(e_salary) as 'Average Salary'
 from employee
 group by e_dept
 having avg (e_salary) > 100000
 order by avg(e_salary) DESC;


 update employee 
 set e_age=42
 where e_name='sam';

 select * from employee;

 update employee 
 set e_dept='TECH'
 where e_gender='female';
 select * from employee;

 update employee
 set e_salary=24000
 where e_dept='TECH';

 update employee
 set e_salary=20000
 where e_dept='Testing';

 update employee
 set e_salary=18000
 where e_dept='Support'
 select * from employee;

 update employee
 set e_salary = 18000
 where e_dept = 'Sales';

 update employee
 set e_salary = 30000
 where e_dept = 'Operations';

 update employee
 set e_salary = 35000
 where e_dept = 'Development';
 
 select * from employee;

 update employee
 set e_salary = 25000
 where e_dept = 'Analytics';

 DELETE FROM employee WHERE e_age=33;
 select * from employee;

 delete from employee where e_name='Sam';

 select * from employee;

 /*TRUNCATE Table employee;*/

 select * from employee; 

 create table department(
 d_id int not null,
 d_name varchar(20),
 d_location varchar(20)
 primary key (d_id)
 );

 insert into department values
 (101, 'TECH', 'Tokiyo'),
 (102, 'Sales', 'London'),
 (103, 'Support', 'Banglore'),
 (104, 'Development','New York'),
 (105, 'Analytics', 'Zunrich'),
 (106, 'Testing','Berlin'),
 (107, 'Operations', 'Hong Kong');
 

  insert into department values
  (108, 'Social Affair', 'Moscow'),
  (109, 'Resource & Engery','Dubai'),
  (110, 'Design', 'Rome'),
  (111, 'Catering', 'Mexico');

  update department
  set d_name='Infrastructure'
  where d_name='Resource & Engery';


 select employee.e_name as 'Employee Name', 
 employee.e_dept as 'Dept', 
 department.d_name, 
 department.d_location
 from employee INNER JOIN department ON employee.e_dept = department.d_name;

 delete from department
 where d_name='Operations';

 select employee.e_name, employee.e_dept, department.d_name, department.d_location
 from employee
 LEFT JOIN department
 ON employee.e_dept = department.d_name;


select employee.e_name, employee.e_dept, department.d_name, department.d_location
from employee
RIGHT JOIN department
ON employee.e_dept = department.d_name;


 select * from employee;
 select * from department;

 select employee.e_name as 'Name', department.d_name as 'Dept', department.d_location as 'Office'
 from employee
 FULL JOIN department ON employee.e_dept=department.d_name;

 update employee
 set e_age=e_Age+10
 from employee
 join department on employee.e_dept=department.d_name
 where d_location='New York'

 select * from employee

 delete employee
 from employee
 join department on employee.e_dept=department.d_name
 where d_location = 'New York'

 select * from employee ;

 /* WITH NEW EXAMPLE */

 CREATE TABLE studentDetails1
 (
 s_id int NOT NULL,
 s_name varchar(20),
 s_marks int,
 primary key(s_id)
 );

 CREATE TABLE studentDetails2
 (
 s_id int NOT NULL,
 s_name varchar(20),
 s_marks int
 primary key(s_id)
 );


 INSERT INTO studentDetails1 Values
 (101, 'Aayush', 93),
 (102, 'Abhishek', 100),
 (103, 'Thushar', 100),
 (104, 'Chirag', 93),
 (105, 'Nikshep', 98),
 (106, 'Pornesh', 99),
 (108, 'Tanish', 98);

  INSERT INTO studentDetails2 Values
 (201, 'Rachana', 94),
 (202, 'Pratiksha', 100),
 (203, 'Thushara', 100),
 (204, 'Tanvi', 92),
 (205, 'Yojana', 99),
 (206, 'Shivani', 98),
 (208, 'Tanisha', 98);

 select * from studentDetails1
 UNION 
 SELECT * FROM studentDetails2

 update studentDetails2
 set s_name='Tanish'
 where s_name='Tanisha';

 update studentDetails2
 set s_name ='Nikshep'
 where s_name='Yojana';

 update studentDetails2
 set s_id = '105'
 where s_id='205';

 update studentDetails2
 set s_marks='98'
 where s_name='Nikshep';

 ALTER TABLE studentDetails1
 add constraint student_id primary key(s_id);

  ALTER TABLE studentDetails2
 add constraint student_id2 primary key(s_id); 

 select * from studentDetails1
 INTERSECT
 select * from studentDetails2;

 CREATE VIEW Female_Employees AS 
 select * from employee
 where e_gender='Female'; 
 select * from female_employees

 drop view female_employees;

 select * from female_employees;

 ALTER TABLE employee
 ADD e_dob date;
 select * from employee;

 ALTER TABLE employee
 DROP COLUMN e_dob;
 select * from emplOYEE;
