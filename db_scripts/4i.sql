SELECT faculty.F_FIRST, faculty.F_LAST
FROM course_section, faculty, term
WHERE course_section.F_ID = faculty.F_ID AND course_section.TERM_ID = term.TERM_ID AND term.TERM_DESC LIKE '%Summer 2008%'