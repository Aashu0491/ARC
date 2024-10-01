create table employee_details(
EmployeeID Serial primary key,
FirstName VARCHAR (50),
LastName VARCHAR(50),
Email VARCHAR(100), 
PhoneNumber VARCHAR(15), 
HireDate DATE,
Salary DECIMAL(10,2),
DepartmentID int,
IsActive BOOLEAN,
JobTitle VARCHAR(100)
)
--Task 1: Create a table named Employee Details with the following 10 columns and use suitable constraint for every column:
select * from employee_details
-------Task 2: Insert data into the Employee_Details Table
insert into employee_details (FirstName,LastName,Email,PhoneNumber,HireDate,Salary,DepartmentID,IsActive,JobTitle)values('Joe','Roy','joeroy@gmail.com','6583547954','1-1-2010',50000,1,'Yes','HR Manager')
insert into employee_details (FirstName,LastName,Email,PhoneNumber,HireDate,Salary,DepartmentID,IsActive,JobTitle)values('Jay','Rathi','jayrathi@gmail.com','9852345698','1-2-2010',20000,6,'Yes','HR Manager'),('Akash','Gupta','akashgupta@gmail.com','9456123456','2-2-2019',60000,5,'Yes','Business Analyst'),('Remo','Dzousa','remodzousa@gmail.com','9564789562','12-8-2020',80000,8,'Yes','QA Engineer')
insert into employee_details (FirstName,LastName,Email,PhoneNumber,HireDate,Salary,DepartmentID,IsActive,JobTitle)values('Remo','Oberai','oberoi@gmail.com','9583547954','1-9-2010',50000,1,'No','HR Manager')
---Task 3: Insert Data from a CSV File into the SQL Table
copy employee_details from 'E:\Employee_details1.csv' Delimiter','csv header
----Task 4: Update the Employee_Details Table
update employee_details set departmentId=0 where isactive='false'
---Task 5: Update the Employee_Details Table - Salary Increment
update employee_details set salary = salary * 1.08
	where isactive ='false' and DepartmentId =0
	AND JobTitle IN ('HR Manager', 'Financial Analyst', 'Business Analyst', 'Data Analyst')
---Task 6: Query to Find Employees with Custom Column Names

select firstName as Name,LastName as Surname from employee_details where salary between 30000 and 50000
---Task 7: Query to Find Employees Whose FirstName Starts with 'A'

select * from employee_details where FirstName like 'A%'

--Task 8: Delete Rows with EmployeeID from 1 to 5
delete from employee_details where employeeId between 1 and 5

--Task 9: Rename Table and Columns
alter table employee_details rename to employee_database 
alter table employee_database rename column firstName to Name 
alter table employee_database rename column LastName to Surname
select *
--task10
alter table employee_database add column state varchar(120)
	
UPDATE employee_database
SET State = CASE 
    when IsActive = TRUE THEN 'India'
    when IsActive = FALSE THEN 'USA'
END
 select * from employee_database
