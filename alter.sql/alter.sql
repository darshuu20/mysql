CREATE TABLE employee(
    eid int,
     ename VARCHAR(32)
     )
    ;

    #alter table
    ALTER TABLE employee
    ADD  esal int;

    # drop using alter table
    ALTER TABLE employee
    DROP COLUMN esal;

    # add using alter table
    ALTER TABLE employee
    ADD  esal int; 

    #modify using alter table
    ALTER TABLE employee
    MODIFY esal float;

    # add not null constraint
    ALTER TABLE employee
    MODIFY esal float NOT NULL; 

    #add unique constraint
    ALTER TABLE employee
    modify ename varchar(32)UNIQUE

    #drop constraints
    ALTER TABLE employee
    drop index ename;

    #drop/add pk constraints
    ALTER TABLE employee
    add primary key(eid); 

    

