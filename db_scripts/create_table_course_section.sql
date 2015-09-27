
create table course_section (
    C_SEC_ID int not null auto_increment,
    COURSE_ID int,
    TERM_ID int,
    SEC_NUM varchar(3),
    F_ID int,
    MTG_DAYS varchar(10),
    START_TIME varchar(10),
    END_TIME varchar(20),
    LOC_ID int,
    MAX_ENRL varchar(4),
    primary key (`C_SEC_ID`),
    constraint `fk_course_section_course` foreign key (`COURSE_ID`)
        references course (`COURSE_ID`)
        on delete no action on update no action,
    constraint `fk_course_section_term` foreign key (`TERM_ID`)
        references term (`TERM_ID`)
        on delete no action on update no action,
    constraint `fk_course_section_faculty` foreign key (`F_ID`)
        references faculty (`F_ID`)
        on delete no action on update no action,
    constraint `fk_course_section_location` foreign key (`LOC_ID`)
        references location (`LOC_ID`)
        on delete no action on update no action
)  ENGINE=InnoDB;
