SELECT Sum(course_section.MAX_ENRL) AS MAX_ENRL_SUM, AVG(e.ENRL_COUNT) AS ENRL_AVG, MAX(e.ENRL_COUNT) AS ENRL_MAX, MIN(e.ENRL_COUNT) AS ENRL_MIN
FROM course_section, term, (SELECT C_SEC_ID, Count(C_SEC_ID) as ENRL_COUNT FROM enrollment GROUP BY C_SEC_ID) e
WHERE course_section.TERM_ID = term.TERM_ID AND e.C_SEC_ID = course_section.C_SEC_ID AND term.TERM_DESC LIKE '%Summer 2008%'