SELECT Count(enrollment.C_SEC_ID)
FROM student, enrollment
WHERE student.S_ID = enrollment.S_ID AND student.S_FIRST = ‘Lisa’ AND student.S_LAST = ‘Johnson’ AND enrollment.GRADE IS NOT NULL