CREATE TABLE employee(
    eid int,
    ename VARCHAR(32),
    esal float,
    PRIMARY KEY(eid)
);

desc employee;
#Inserting
INSERT INTO employee VALUES
(101,'Rahul',45000.00),
(102,'Sonia',55000.00),
(103,'Priya',65000.00),
(104,'Modi',75000.00),
(null,'priya',65000.00);

INSERT INTO employee VALUES
(101,'Rahul',45000.00),
(102,'Sonia',55000.00),
(103,'Priya',65000.00);

#foreign key
CREATE TABLE bunit(
    buid INT PRIMARY KEY,
    buname VARCHAR(32) NOT null,
    buloc VARCHAR(32) unique
);
#inserting
 INSERT INTO bunit VALUES
(1,'AT&T','Bangalore-Manyatha Tech Park'),
(2,'Vodafone','Chennai'),
(3,'Airtel','Hyderabad'),
(4,'colt','London'),
(5,'R&D','Banglore');

#table-2
CREATE TABLE employee(
    eid INT PRIMARY KEY,
    ename VARCHAR(32),
    esal float,
    buid INT,
    FOREIGN KEY(buid) REFERENCES bunit(buid)
);
#inserting
INSERT INTO employee VALUES
(101,'Rahul',45000.00,1),
(102,'Sonia',55000.00,1),
(103,'Priya',65000.00,1),
(104,'Modi',75000.00,2),
(105,'Ramesh',85000.00,2),
(106,'Amith',95000.00,1),
(107,'Ajith',85000.00,5);


CREATE TABLE USER(
    uid INT auto_increment,
    uname VARCHAR(32),
    uloc VARCHAR(32),
    PRIMARY KEY(uid)
);

INSERT INTO USER(uname,uloc) VALUES
('Rahul','Bangalore'),
('Sonia','Chennai'),
('Priya','Hyderabad'),
('Modi','London'),
('Ramesh','Banglore');