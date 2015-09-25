
create table course (
    COURSE_ID int not null auto_increment,
    COURSE_NO varchar(15),
    COURSE_NAME varchar(200),
    CREDITS int,
	primary key (COURSE_ID)
)