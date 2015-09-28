SELECT S_ID, S_LAST, S_FIRST
FROM student
WHERE student.S_ID IN
	(SELECT S_ID
	FROM enrollment
	WHERE (GRADE = 'A' OR GRADE = 'B') AND S_ID IN
		(SELECT S_ID
		FROM enrollment
        WHERE GRADE <> 'C' AND GRADE <> 'D' AND GRADE <> 'F'));