CREATE TABLE enrollment_numbers(
	COURSE_NO VARCHAR(15) REFERENCES  course(COURSE_NO),
	C_SEC_ID INT(11) REFERENCES course_section(C_SEC_ID),
	ENRL VARCHAR(4)
);

INSERT INTO enrollment_numbers(COURSE_NO,C_SEC_ID,ENRL)
SELECT course.COURSE_NO, course_section.C_SEC_ID, e.ENRL_COUNT
FROM course_section, course, term, (SELECT C_SEC_ID, Count(C_SEC_ID) AS ENRL_COUNT FROM enrollment GROUP BY C_SEC_ID) e
WHERE course_section.COURSE_ID = course.COURSE_ID AND course_section.TERM_ID = term.TERM_ID AND course_section.C_SEC_ID = e.C_SEC_ID AND term.TERM_DESC LIKE '%Spring 2008%'