/*Que 3-d*/
DELETE FROM location WHERE LOC_ID = 11;
/*
RESPONSE: "Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails 
(`firojsha_BFS_LU_Student_Registration`.`faculty`, CONSTRAINT `fk_faculty_location` FOREIGN 
KEY (`LOC_ID`) REFERENCES `location` (`LOC_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION)"

Constraints Violated: Foreign Key constraint on faculty table; reference column (location > LOC_ID) 
deletion is conflicting with referring column (faculty > LOC_ID)
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 3-e*/
DELETE FROM term WHERE TERM_ID = 4;
/*
RESPONSE: "Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails 
(`firojsha_BFS_LU_Student_Registration`.`course_section`, CONSTRAINT `fk_course_section_term`
 FOREIGN KEY (`TERM_ID`) REFERENCES `term` (`TERM_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION)"
 
Constraints Violated: Foreign Key constraint on faculty table; reference column (term > TERM_ID) 
deletion is conflicting with referring column (course_section > TERM_ID)
 */