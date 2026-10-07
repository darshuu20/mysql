CREATE TABLE employee(
    eid INT PRIMARY KEY,
    ename VARCHAR(32) unique,
    esal INT NOT NULL,
    eloc VARCHAR(32)DEFAULT "Bangalore",
    dept_name VARCHAR(32) DEFAULT "IT",
    age INT CHECK(age>18)
);

Insert into employee values
(101,'Rahul',50000,'Bangalore','IT',25);
#multiple records
Insert into employee values
(102,'Priya',60000,'Mumbai','HR',30),
(103,'Amit',55000,'Delhi','Finance',28),
(104,'Sneha',70000,'Bangalore','IT',32),
(105,'Ravi',45000,'Chennai','HR',27),
(106,'Anjali',65000,'Mumbai','Finance',29),
(107,'Karan',48000,'Delhi','IT',26),
(108,'Meera',52000,'Bangalore','HR',31),
(109,'Vikram',58000,'Chennai','Finance',33),
(110,'Nisha',62000,'Mumbai','IT',24),
(111,'Aditya',47000,'Delhi','HR',28),
(112,'Sanya',53000,'Bangalore','Finance',30),
(113,'Rohan',60000,'Chennai','IT',27),
(114,'Isha',55000,'Mumbai','HR',29),
(115,'Kabir',49000,'Delhi','Finance',31);

#display all employee where eloc is chennai
select* from employee
where eloc='Chennai';

#display all employee where age is less than 40
select * from employee
 where age < 40;

 #display all employee where esal is less than 50k
select * from employee
 where esal < 50000;

 #display all employee where eloc is delhi and dept_name is IT
select * from employee
where eloc='Delhi' and dept_name='IT';

