
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

	constraint `fk_student_faculty`
	foreign key `fk_student_faculty`(`F_ID`)
	references faculty(`F_ID`)
	on delete no action
	on update no action
)ENGINE = InnoDB;