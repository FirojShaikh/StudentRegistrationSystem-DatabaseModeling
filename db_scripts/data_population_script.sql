-- Data Population Script
-- Course Table
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course` (`COURSE_ID`, `COURSE_NO`, `COURSE_NAME`, `CREDITS`) VALUES ('1', 'IT 101', 'Intro. to Info. Tech.', '3');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course` (`COURSE_ID`, `COURSE_NO`, `COURSE_NAME`, `CREDITS`) VALUES ('2', 'IS 301', 'Systems Analysis', '3');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course` (`COURSE_ID`, `COURSE_NO`, `COURSE_NAME`, `CREDITS`) VALUES ('3', 'IT 240', 'Intro. to Database Systems', '3');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course` (`COURSE_ID`, `COURSE_NO`, `COURSE_NAME`, `CREDITS`) VALUES ('4', 'CS 120', 'Intro. To Programming in C++', '3');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course` (`COURSE_ID`, `COURSE_NO`, `COURSE_NAME`, `CREDITS`) VALUES ('5', 'IT 451', 'Web-Based Systems', '3');

-- Term
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`term` (`TERM_ID`, `TERM_DESC`, `STATUS`, `START_DATE`) VALUES ('1', 'Fall 2006', 'CLOSED', '2007-08-28');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`term` (`TERM_ID`, `TERM_DESC`, `STATUS`, `START_DATE`) VALUES ('2', 'Spring 2007', 'CLOSED', '2008-01-09');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`term` (`TERM_ID`, `TERM_DESC`, `STATUS`, `START_DATE`) VALUES ('3', 'Summer 2007', 'CLOSED', '2006-05-15');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`term` (`TERM_ID`, `TERM_DESC`, `STATUS`, `START_DATE`) VALUES ('4', 'Fall 2007', 'CLOSED', '2007-08-28');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`term` (`TERM_ID`, `TERM_DESC`, `STATUS`, `START_DATE`) VALUES ('5', 'Spring 2008', 'OPEN', '2008-01-08');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`term` (`TERM_ID`, `TERM_DESC`, `STATUS`, `START_DATE`) VALUES ('6', 'Summer 2008', 'OPEN', '2008-05-07');

-- Location
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('1', 'CR', '101', '150');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('2', 'CR', '202', '40');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('3', 'CR', '103', '35');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('4', 'CR', '105', '35');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('5', 'BUS', '105', '42');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('6', 'BUS', '404', '35');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('7', 'BUS', '421', '35');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('8', 'BUS', '211', '55');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('9', 'BUS', '424', '1');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('10', 'BUS', '402', '1');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('11', 'BUS', '433', '1');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('12', 'LIB', '217', '2');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`location` (`LOC_ID`, `BLDG_CODE`, `ROOM`, `CAPACITY`) VALUES ('13', 'LIB', '222', '1');

-- Faculty
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`faculty` (`F_ID`, `F_LAST`, `F_FIRST`, `F_MI`, `LOC_ID`, `F_PHONE`, `F_RANK`, `F_SUPER`, `F_PIN`) VALUES ('1', 'Marx', 'Teresa', 'J', '9', '3251234567', 'Associate', '4', '6339');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`faculty` (`F_ID`, `F_LAST`, `F_FIRST`, `F_MI`, `LOC_ID`, `F_PHONE`, `F_RANK`, `F_SUPER`, `F_PIN`) VALUES ('2', 'Zhulin', 'Mark', 'M', '10', '3252345678', 'Full', NULL, '1121');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`faculty` (`F_ID`, `F_LAST`, `F_FIRST`, `F_MI`, `LOC_ID`, `F_PHONE`, `F_RANK`, `F_SUPER`, `F_PIN`) VALUES ('3', 'Langley', 'Colin', 'A', '12', '3253456789', 'Assistant', '4', '9871');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`faculty` (`F_ID`, `F_LAST`, `F_FIRST`, `F_MI`, `LOC_ID`, `F_PHONE`, `F_RANK`, `F_SUPER`, `F_PIN`) VALUES ('4', 'Brown', 'Jonnel', 'D', '11', '3254567890', 'Full', NULL, '8297');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`faculty` (`F_ID`, `F_LAST`, `F_FIRST`, `F_MI`, `LOC_ID`, `F_PHONE`, `F_RANK`, `F_SUPER`, `F_PIN`) VALUES ('5', 'Sealy', 'James', 'L', '13', '3255678901', 'Associate', '2', '6089');

-- Student
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`student` (`S_ID`, `S_LAST`, `S_FIRST`, `S_MI`, `S_ADDRESS`, `S_CITY`, `S_STATE`, `S_ZIP`, `S_PHONE`, `S_CLASS`, `S_DOB`, `S_PIN`, `F_ID`, `DATE_ENROLLED`) VALUES ('1', 'Jones', 'Tammy', 'R', '1817 Eagleridge Circle', 'Houston', 'TX', '77027', '3250987654', 'SR', '1986-07-14', '8891', '1', '2003-06-03');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`student` (`S_ID`, `S_LAST`, `S_FIRST`, `S_MI`, `S_ADDRESS`, `S_CITY`, `S_STATE`, `S_ZIP`, `S_PHONE`, `S_CLASS`, `S_DOB`, `S_PIN`, `F_ID`, `DATE_ENROLLED`) VALUES ('2', 'Perez', 'Jorge', 'C', '951 Rainbow Drive', 'Abilene', 'TX', '79901', '3258765432', 'SR', '1986-08-19', '1230', '1', '2002-01-10');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`student` (`S_ID`, `S_LAST`, `S_FIRST`, `S_MI`, `S_ADDRESS`, `S_CITY`, `S_STATE`, `S_ZIP`, `S_PHONE`, `S_CLASS`, `S_DOB`, `S_PIN`, `F_ID`, `DATE_ENROLLED`) VALUES ('3', 'Marsh', 'John', 'A', '1275 W Main St', 'Dallas', 'TX', '78012', '3257654321', 'JR', '1983-10-10', '1613', '1', '2003-08-24');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`student` (`S_ID`, `S_LAST`, `S_FIRST`, `S_MI`, `S_ADDRESS`, `S_CITY`, `S_STATE`, `S_ZIP`, `S_PHONE`, `S_CLASS`, `S_DOB`, `S_PIN`, `F_ID`, `DATE_ENROLLED`) VALUES ('4', 'Smith', 'Mike', '', '428 EN 16 Street', 'Abilene', 'TX', '79902', '3256543210', 'SO', '1987-09-24', '1841', '2', '2004-08-23');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`student` (`S_ID`, `S_LAST`, `S_FIRST`, `S_MI`, `S_ADDRESS`, `S_CITY`, `S_STATE`, `S_ZIP`, `S_PHONE`, `S_CLASS`, `S_DOB`, `S_PIN`, `F_ID`, `DATE_ENROLLED`) VALUES ('5', 'Johnson', 'Lisa', 'M', '764 College Drive', 'Abilene', 'TX', '79901', '3255432109', 'SO', '1987-11-20', '4420', '4', '2005-01-08');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`student` (`S_ID`, `S_LAST`, `S_FIRST`, `S_MI`, `S_ADDRESS`, `S_CITY`, `S_STATE`, `S_ZIP`, `S_PHONE`, `S_CLASS`, `S_DOB`, `S_PIN`, `F_ID`, `DATE_ENROLLED`) VALUES ('6', 'Nguyen', 'Ni', 'M', '688 4th Street', 'Ft Worth', 'TX', '78767', '3254321098', 'FR', '1988-12-04', '9188', '3', '2006-08-22');

-- Course Section
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('1', '1', '4', '1', '2', 'MWF', '10:00 AM', '10:50 AM', '1', '140');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('2', '1', '4', '2', '3', 'TR', '9:30 AM', '10:45 AM', '7', '35');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('3', '1', '4', '3', '3', 'MWF', '8:00 AM', '8:50 AM', '2', '35');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('4', '2', '4', '1', '4', 'TR', '11:00 AM', '12:15 AM', '6', '35');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('5', '2', '5', '2', '4', 'TR', '2:00 PM', '3:15 PM', '6', '35');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('6', '3', '5', '1', '1', 'MWF', '9:00 AM', '9:50 AM', '5', '30');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('7', '3', '5', '2', '1', 'MWF', '10:00 AM', '10:50 AM', '5', '30');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('8', '4', '5', '1', '5', 'TR', '8:00 AM', '9:15 AM', '3', '35');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('9', '5', '5', '1', '2', 'MWF', '2:00 PM', '2:50 PM', '5', '35');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('10', '5', '5', '2', '2', 'MWF', '3:00 PM', '3:50 PM', '5', '35');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('11', '1', '6', '1', '1', 'MTWRF', '8:00 AM', '9:30 AM', '1', '50');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('12', '2', '6', '1', '2', 'MTWRF', '8:00 AM', '9:30 AM', '6', '35');
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`course_section` (`C_SEC_ID`, `COURSE_ID`, `TERM_ID`, `SEC_NUM`, `F_ID`, `MTG_DAYS`, `START_TIME`, `END_TIME`, `LOC_ID`, `MAX_ENRL`) VALUES ('13', '3', '6', '1', '3', 'MTWRF', '8:00 AM', '9:30 AM', '5', '35');


-- Enrollment
INSERT INTO `firojsha_BFS_LU_Student_Registration`.`enrollment`(`S_ID`,`C_SEC_ID`,`GRADE`) 
VALUES 
(1,1,'A'),
(1,4,'A'),
(1,6,'B'),
(1,9,'B'),
(2,1,'C'),
(2,5,'B'),
(2,6,'A'),
(2,9,'B'),
(3,1,'C'),
(3,12,NULL),
(3,13,NULL),
(4,11,NULL),
(4,12,NULL),
(5,1,'B'),
(5,5,'C'),
(5,9,'C'),
(5,11,NULL),
(5,13,NULL),
(6,11,NULL),
(6,12,NULL)
