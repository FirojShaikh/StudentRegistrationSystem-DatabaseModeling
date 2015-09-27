-- Create table relation
create table term (
    TERM_ID int not null auto_increment,
    TERM_DESC varchar(15),
    STATUS varchar(200),
    START_DATE date,
    primary key (TERM_ID)
)  ENGINE=InnoDB;

create table location (
    LOC_ID int not null auto_increment,
    BLDG_CODE varchar(10),
    ROOM varchar(10),
    CAPACITY int,
    primary key (LOC_ID)
)  ENGINE=InnoDB;

create table faculty (
    F_ID int not null auto_increment,
    F_LAST varchar(30),
    F_FIRST varchar(30),
    F_MI varchar(3) null,
    LOC_ID int,
    F_PHONE varchar(10),
    F_RANK varchar(20),
    F_SUPER int null,
    F_PIN varchar(4),
    primary key (F_ID),
    constraint `fk_faculty_faculty` foreign key (F_SUPER)
        references faculty (F_ID)
        on delete no action on update no action,
    constraint `fk_faculty_location` foreign key (LOC_ID)
        references location (LOC_ID)
        on delete no action on update no action
)  ENGINE=InnoDB;


create table course (
    COURSE_ID int not null auto_increment,
    COURSE_NO varchar(15),
    COURSE_NAME varchar(200),
    CREDITS int,
    primary key (COURSE_ID)
)  ENGINE=InnoDB;

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

create table student (
    S_ID int not null auto_increment,
    S_LAST varchar(30),
    S_FIRST varchar(30),
    S_MI varchar(3) null,
    S_ADDRESS varchar(100),
    S_CITY varchar(30),
    S_STATE varchar(2),
    S_ZIP varchar(10),
    S_PHONE varchar(10),
    S_CLASS varchar(30),
    S_DOB date,
    S_PIN varchar(4),
    F_ID int null,
    DATE_ENROLLED datetime,
    primary key (S_ID),
    constraint `fk_student_faculty` foreign key (`F_ID`)
        references faculty (`F_ID`)
        on delete no action on update no action
)  ENGINE=InnoDB;

create table enrollment (
    S_ID int,
    C_SEC_ID int,
    GRADE varchar(30) null,
    constraint `fk_enrollment_student` foreign key (`S_ID`)
        references `student` (`S_ID`)
        on delete no action on update no action,
    constraint `fk_enrollment_course_section` foreign key (`C_SEC_ID`)
        references `course_section` (`C_SEC_ID`)
        on delete no action on update no action
)  ENGINE=InnoDB;
