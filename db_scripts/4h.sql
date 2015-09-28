SELECT student.S_ID, student.S_LAST, student.S_FIRST, faculty.F_ID, faculty.F_LAST
FROM student, faculty
WHERE student.F_ID = faculty.F_ID