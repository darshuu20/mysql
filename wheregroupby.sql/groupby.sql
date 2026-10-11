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

#display emp data  agebtw 25 and 30
SELECT * FROM employee 
WHERE age BETWEEN 25 AND 30;

#display emp belongs to banglr,chennai and delhi
SELECT * FROM employee
WHERE eloc='Bangalore' OR eloc='Chennai' OR eloc='Delhi';

 #can use IN operator
SELECT * FROM employee
WHERE eloc IN ('Bangalore','Chennai','Delhi');

#display all employee names whose name strts with 'A' 
SELECT ename FROM employee
WHERE ename LIKE 'A%' ;

#dispay all employee names whose name ends with 'A' 
SELECT ename FROM employee
WHERE ename LIKE '%a' ;

#display al employee names whose name contains  second character as'a'
SELECT ename FROM employee
WHERE ename LIKE '_a%' ;

#last second character is 'a'
SELECT ename FROM employee
WHERE ename LIKE '%a_' ;

    #3rd character is 'a'
SELECT ename FROM employee
WHERE ename LIKE '__a%' ;

#display employee count based on location
SELECT eloc from employee
group by eloc;
#count
SELECT eloc, COUNT(eid) from employee
group by eloc;


SELECT eloc AS location,SUM(esal)AS total salary,COUNT(eid)AS 'no of employee' from employee
GROUP BY eloc;

select *from employee
order by esal desc;

