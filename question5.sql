
-- Question 5 - a - Create a nested query to retrieve the first and last names of all students who have the same S_Class 
-- value as Jorge Perez
SELECT S_FIRST,S_LAST 
FROM firojsha_BFS_LU_Student_Registration.student
WHERE S_CLASS IN (
	SELECT S_CLASS 
	FROM firojsha_BFS_LU_Student_Registration.student 
	WHERE S_FIRST = 'Jorge' AND S_LAST = 'Perez');

-- Question 5 - b -	Create a nested query to retrieve the last and first names of all students who have enrolled 
-- in the same course sections as Jorge Perez.
SELECT S_LAST,S_FIRST 
FROM firojsha_BFS_LU_Student_Registration.student
WHERE S_ID IN (
	SELECT S_ID
	FROM firojsha_BFS_LU_Student_Registration.enrollment
	WHERE C_SEC_ID IN(
		SELECT C_SEC_ID 
		FROM firojsha_BFS_LU_Student_Registration.enrollment
		WHERE S_ID IN (
			SELECT S_ID
			FROM firojsha_BFS_LU_Student_Registration.student 
			WHERE S_FIRST = 'Jorge' AND S_LAST = 'Perez')));

-- Question 5 - c -	Create a nested query to retrieve the last and first names of all students who have 
-- the same S_Class value as Jorge Perez and who have also been enrolled in a course section with him.
SELECT S_LAST,S_FIRST
FROM firojsha_BFS_LU_Student_Registration.student
WHERE S_CLASS IN (
	SELECT S_CLASS 
	FROM firojsha_BFS_LU_Student_Registration.student 
	WHERE S_FIRST = 'Jorge' AND S_LAST = 'Perez')
	AND
	DATE_ENROLLED IN (SELECT DATE_ENROLLED
	FROM firojsha_BFS_LU_Student_Registration.student 
	WHERE S_FIRST = 'Jorge' AND S_LAST = 'Perez');

-- Question 5 - d -	A nested subquery is a subquery which contains a second subquery that specifies its search 
-- expression.  Use a nested subquery to create a query to retrieve the names of students 
-- who have taken courses with Jorge Perez in the CR building.
SELECT S_LAST,S_FIRST
FROM firojsha_BFS_LU_Student_Registration.student
WHERE S_ID IN(
	SELECT S_ID
	FROM firojsha_BFS_LU_Student_Registration.enrollment
	WHERE C_SEC_ID IN (
		SELECT C_SEC_ID 
		FROM firojsha_BFS_LU_Student_Registration.course_section
		WHERE C_SEC_ID IN (
			SELECT C_SEC_ID 
			FROM firojsha_BFS_LU_Student_Registration.enrollment
			WHERE S_ID IN (
				SELECT S_ID
				FROM firojsha_BFS_LU_Student_Registration.student 
				WHERE S_FIRST = 'Jorge' AND S_LAST = 'Perez')) 
		AND LOC_ID IN(
			SELECT LOC_ID 
			FROM firojsha_BFS_LU_Student_Registration.location
			WHERE BLDG_CODE='CR')));

-- Question 5 - e Create a Union query that displays the names of courses taken by students who were not Seniors, 
-- in addition to courses that were offered in Term 6
SELECT * 
FROM firojsha_BFS_LU_Student_Registration.course
WHERE COURSE_ID IN(
	SELECT COURSE_ID
	FROM firojsha_BFS_LU_Student_Registration.course_section
	WHERE C_SEC_ID IN (
		SELECT C_SEC_ID 
		FROM firojsha_BFS_LU_Student_Registration.enrollment
		WHERE S_ID IN (
			SELECT S_ID 
			FROM firojsha_BFS_LU_Student_Registration.student 
			WHERE S_CLASS NOT IN ('SR'))))
UNION
SELECT * 
FROM firojsha_BFS_LU_Student_Registration.course
WHERE COURSE_ID IN(
	SELECT COURSE_ID
	FROM firojsha_BFS_LU_Student_Registration.course_section
	WHERE TERM_ID=6);

-- Question 5 - f Use the Intersect set operator to create a query that satisfies both requirements of Question 5(e).
SELECT *
FROM
(SELECT * 
FROM firojsha_BFS_LU_Student_Registration.course
WHERE COURSE_ID IN(
	SELECT COURSE_ID
	FROM firojsha_BFS_LU_Student_Registration.course_section
	WHERE C_SEC_ID IN (
		SELECT C_SEC_ID 
		FROM firojsha_BFS_LU_Student_Registration.enrollment
		WHERE S_ID IN (
			SELECT S_ID 
			FROM firojsha_BFS_LU_Student_Registration.student 
			WHERE S_CLASS NOT IN ('SR'))))) C1
INNER JOIN
(SELECT * 
FROM firojsha_BFS_LU_Student_Registration.course
WHERE COURSE_ID IN(
	SELECT COURSE_ID
	FROM firojsha_BFS_LU_Student_Registration.course_section
	WHERE TERM_ID=6)) C2
ON C1.COURSE_ID=C2.COURSE_ID;

-- Question 5 - g Use the Minus set operator to create a query that retrieves the courses that 
-- were taken by Freshmen, Sophomores, and Juniors, but were not offered in Term 6
SELECT * 
FROM firojsha_BFS_LU_Student_Registration.course
WHERE COURSE_ID IN(
	SELECT COURSE_ID
	FROM firojsha_BFS_LU_Student_Registration.course_section
	WHERE C_SEC_ID IN (
		SELECT C_SEC_ID 
		FROM firojsha_BFS_LU_Student_Registration.enrollment
		WHERE S_ID IN (
			SELECT S_ID 
			FROM firojsha_BFS_LU_Student_Registration.student 
			WHERE S_CLASS NOT IN ('SR')))) 
	AND	COURSE_ID NOT IN(
	SELECT COURSE_ID
	FROM firojsha_BFS_LU_Student_Registration.course_section
	WHERE TERM_ID=6);

-- Question 5 h List the names of all junior faculty members and their supervisors.
SELECT f1.F_LAST,f1.F_FIRST,f2.F_LAST AS 'Supervisor Last Name',f2.F_FIRST AS 'Supervisor First Name'
FROM firojsha_BFS_LU_Student_Registration.faculty f1
	INNER JOIN firojsha_BFS_LU_Student_Registration.faculty f2
		ON f1.F_SUPER=f2.F_ID
WHERE f1.F_SUPER IS NOT NULL