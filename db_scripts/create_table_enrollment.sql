
create table enrollment (
    S_ID int,
    C_SEC_ID varchar(30),
    GRADE varchar(30) null,

	constraint `fk_enrollment_student`
	foreign key `fk_enrollment_student` (`S_ID`)
	references `student` (`S_ID`)
	on delete no action
	on update no action,

	constraint `fk_enrollment_course_section`
	foreign key `fk_enrollment_course_section` (`C_SEC_ID`)
	references `course_section` (`C_SEC_ID`)
	on delete no action
	on update no action
)