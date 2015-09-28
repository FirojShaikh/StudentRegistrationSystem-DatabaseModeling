/*Que 3-a-i:*/
INSERT INTO course_section
(`C_SEC_ID`,`COURSE_ID`,`TERM_ID`,`SEC_NUM`,`F_ID`,`MTG_DAYS`,`START_TIME`,`END_TIME`,`LOC_ID`,`MAX_ENRL`)
VALUES (12, 2, 6, 2, 2, 'MTWRF', '10:00 AM', '11:30 AM', 5, 35);
/*
RESPONSE: "Error Code: 1062. Duplicate entry '12' for key 'PRIMARY'"

Constraints Violated: Primary Key constraint on course_section table; conflicting value
inserted into the table which already has primary key with same value 
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 3-a-ii:*/
INSERT INTO course_section
(`C_SEC_ID`,`COURSE_ID`,`TERM_ID`,`SEC_NUM`,`F_ID`,`MTG_DAYS`,`START_TIME`,`END_TIME`,`LOC_ID`,`MAX_ENRL`)
VALUES (12, 2, 6, 2, 2, 'MTWRF', '9:00 AM', '10:30 AM', 6, 35);
/*
RESPONSE: "Error Code: 1062. Duplicate entry '12' for key 'PRIMARY'

Constraints Violated: Primary Key constraint on course_section table; conflicting value
inserted into the table which already has primary key with same value 
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 3-a-iii:*/
INSERT INTO course_section
(`C_SEC_ID`,`COURSE_ID`,`TERM_ID`,`SEC_NUM`,`F_ID`,`MTG_DAYS`,`START_TIME`,`END_TIME`,`LOC_ID`,`MAX_ENRL`)
VALUES (2, 1, 4, 2, 3, 'TR', '9:30 AM', '10:45 AM', 4, 35);
/*
RESPONSE: "Error Code: 1062. Duplicate entry '2' for key 'PRIMARY'"

Constraints Violated: Primary Key constraint on course_section table; conflicting value
inserted into the table which already has primary key with same value 
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 3-b-i:*/
INSERT INTO faculty (`F_ID`,`F_LAST`,`F_FIRST`,`F_MI`,`LOC_ID`,`F_PHONE`,`F_RANK`,`F_SUPER`,`F_PIN`)
VALUES(4, 'Brown', 'Colin', 'D', 11, '3253456789', 'Assistant', 4, 9871);
/*
RESPONSE: "Error Code: 1062. Duplicate entry '4' for key 'PRIMARY'"

Constraints Violated: Primary Key constraint on faculty table; conflicting value
inserted into the table which already has primary key with same value 
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 3-b-ii:*/
INSERT INTO faculty (`F_ID`,`F_LAST`,`F_FIRST`,`F_MI`,`LOC_ID`,`F_PHONE`,`F_RANK`,`F_SUPER`,`F_PIN`)
VALUES(6, 'Reeves', 'Bob', 'S', 15, '3256789012', 'Full', 4, 1234);
/*
RESPONSE: "Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails 
(`firojsha_BFS_LU_Student_Registration`.`faculty`, CONSTRAINT `fk_faculty_location` FOREIGN KEY 
(`LOC_ID`) REFERENCES `location` (`LOC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION)"

Constraints Violated: Foreign Key constraint on faculty table; conflicting value
inserted into the table which does not exist in referring table (location)
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 3-b-iii:*/
INSERT INTO faculty (`F_ID`,`F_LAST`,`F_FIRST`,`F_MI`,`LOC_ID`,`F_PHONE`,`F_RANK`,`F_SUPER`,`F_PIN`)
VALUES(6, 'Reeves', 'Bob', 'S', 10, '3256789012', 'Assistant', 7, 1234);
/*
RESPONSE: "Error Code: 1452. Cannot add or update a child row: a foreign key constraint 
fails (`firojsha_BFS_LU_Student_Registration`.`faculty`, CONSTRAINT `fk_faculty_faculty` 
FOREIGN KEY (`F_SUPER`) REFERENCES `faculty` (`F_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION)"

Constraints Violated: Foreign Key constraint on faculty table; conflicting value
inserted into the table which does not exist in referring table (faculty) 
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 3-b-iv:*/
INSERT INTO faculty (`F_ID`,`F_LAST`,`F_FIRST`,`F_MI`,`LOC_ID`,`F_PHONE`,`F_RANK`,`F_SUPER`,`F_PIN`)
VALUES(6, 'Reeves', 'Bob', 'S', 10, '3255678901', 'Assistant', 2, 1234);
/*
RESPONSE: "1 row inserted"

Note: Insert operation was successful as all referrential constraints are intact
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 3-c*/
INSERT INTO course (`COURSE_ID`,`COURSE_NO`,`COURSE_NAME`,`CREDITS`)
VALUES(4, 'CS 120', 'Intro. to Programming in C++', 3);
/*
RESPONSE: "Error Code: 1062. Duplicate entry '4' for key 'PRIMARY'"

Constraints Violated: Primary Key constraint on course table; conflicting value
inserted into the table which already has primary key with same value
*/

/*-------------------------------------------------------------------------------------------------------------------*/