
create table location (
    LOC_ID int not null auto_increment,
    BLDG_CODE varchar(10),
    ROOM varchar(10),
    CAPACITY int,
	primary key(LOC_ID)
)