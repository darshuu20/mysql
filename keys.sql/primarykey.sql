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
