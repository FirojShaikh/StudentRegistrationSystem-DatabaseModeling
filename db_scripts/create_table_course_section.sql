
create table course_section (
    C_SEC_ID int not null auto_increment,
    COURSE_ID varchar(30),
    TERM_ID varchar(30),
    SEC_NUM varchar(3),
    F_ID int,
    START_TIME varchar(10),
    END_TIME varchar(20),
    LOC_ID int,
    MAX_ENRL varchar(4),
	primary key (`C_SEC_ID`),

	
	constraint `fk_course_section_course`
	foreign key `fk_course_section_course`(`COURSE_ID`)
	references course_section(`COURSE_ID`)
	on delete no action
	on update no action,

	constraint `fk_course_section_term`
	foreign key `fk_course_section_term`(`TERM_ID`)
	references course_section(`COURSE_ID`)
	on delete no action
	on update no action,

	constraint `fk_course_section_faculty`
	foreign key `fk_course_section_faculty`(`F_ID`)
	references course_section(`F_ID`)
	on delete no action
	on update no action,

	constraint `fk_course_section_location`
	foreign key `fk_course_section_location`(`LOC_ID`)
	references course_section(`LOC_ID`)
	on delete no action
	on update no action

)