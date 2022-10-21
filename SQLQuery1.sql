
create database Payroll_Service_DB

select * from sys.databases

use Payroll_Service_DB

create table employee_payroll
(
id int not null identity,
name varchar(25) not null,
salary money not null,
start date not null

);

insert into employee_payroll values
('Anisha',100000.0,'2018-01-03'),
('Priya',300000.0,'2020-05-21'),
('Ekta',200000.0,'2019-11-13')


select * from employee_payroll

select salary from employee_payroll where name='Anisha'


select salary from employee_payroll where start between CAST('2018-01-01' as date) and GETDATE();

alter table employee_payroll add gender char(1)


update employee_payroll set gender ='F' where id in(1,2,3)




select sum(salary) from employee_payroll where gender='F' group by gender
select avg(salary) from employee_payroll where gender='F' group by gender
select min(salary) from employee_payroll where gender='F' group by gender
select max(salary) from employee_payroll where gender='F' group by gender
select count(salary) from employee_payroll where gender='F' group by gender
select count(salary) from employee_payroll where gender='F' group by gender


alter table employee_payroll add PhoneNumber varchar(15);
alter table employee_payroll add address varchar(20)

alter table employee_payroll add department varchar(100)
alter table employee_payroll add constraint DF_Address default 'Indian' for address

UPDATE employee_payroll SET address='INIDAN'

alter table employee_payroll add 
deduction float,
taxable_pay real,
income_tax float,
net_pay real;




update Employee_Payroll
set Department = 'Sales' insert into Employee_Payroll
(
    Name,Salary,Start,Gender,Department
)
VALUES
(
where Name = 'Terisa';


insert into Employee_Payroll
(
    Name,Salary,Start,Gender,Department, deduction,taxable_pay,income_tax,net_pay
)
VALUES
    'Terisa',60000.00,'2018-01-03','F','Marketing'
);

(
     'Terisa',60000.00,'2018-01-03','F','Marketing',2000,1000,10500,18000
);
select * from Employee_Payroll;