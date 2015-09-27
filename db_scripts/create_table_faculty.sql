
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
	
	constraint `fk_faculty_faculty`
	foreign key `fk_faculty_faculty` (F_SUPER) 
	references faculty(F_ID)
	on delete no action
	on update no action,

	constraint `fk_faculty_location`
	foreign key `fk_faculty_location` (LOC_ID) 
	references location(LOC_ID)
	on delete no action
	on update no action
)ENGINE = InnoDB;