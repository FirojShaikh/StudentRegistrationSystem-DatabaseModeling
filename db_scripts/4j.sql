SELECT course.COURSE_NAME, enrollment.GRADE
FROM course, course_section, enrollment
WHERE course.COURSE_ID = course_section.COURSE_ID AND course_section.C_SEC_ID = enrollment.C_SEC_ID AND enrollment.S_ID IN
	(SELECT S_ID
	FROM student
	WHERE student.S_FIRST = ‘Tammy’ AND student.S_LAST = ‘Jones’);