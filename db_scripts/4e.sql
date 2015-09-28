SELECT Sum(course_section.MAX_ENRL) AS MAX_ENRL_SUM, Avg(count(course_section)) AS ENRL_AVG, Max(count(course_section)) AS ENRL_MAX, Min(count(course_section)) AS ENRL_MIN
FROM course_section, term, enrollment
WHERE course_section.TERM_ID = term.TERM_ID AND enrollment.C_SEC_ID = course_section.C_SEC_ID AND term.TERM_DESC LIKE ‘%Summer 2008%’
GROUP BY enrollment.C_SEC_ID;