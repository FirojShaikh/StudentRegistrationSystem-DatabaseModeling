
create table term (
    TERM_ID int not null auto_increment,
    TERM_DESC varchar(15),
    STATUS varchar(200),
    START_DATE date,
	primary key (TERM_ID)
)ENGINE = InnoDB;