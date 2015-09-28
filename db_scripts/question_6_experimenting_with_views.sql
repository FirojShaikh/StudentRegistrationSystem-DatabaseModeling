/*Que 6-a*/
CREATE VIEW faculty_view AS
SELECT F_ID, F_LAST, F_FIRST, F_MI, LOC_ID, F_PHONE, F_RANK, F_SUPER FROM faculty;
/*
RESPONSE: "0 row(s) affected"

Note: A new view by name faculty_view is created in the database
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 6-b*/
INSERT INTO faculty_view (`F_ID`,`F_LAST`,`F_FIRST`,`F_MI`,`LOC_ID`,`F_PHONE`,`F_RANK`)
VALUES(6, 'May', 'Lisa', 'I', 11, '3256789012', 'Assistant');
/*
RESPONSE: "1 row(s) affected"

Note: Query directed the insert into the faculty table which is being 
exposed by the faculty_view view by a subset of columns
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 6-c*/
SELECT * FROM faculty_view;
/*
RESPONSE: "6 row(s) returned"

RESULT: 6 rows along with new record returned as follows
F_ID	F_LAST		F_FIRST		F_MI	LOC_ID		F_PHONE		F_RANK		F_SUPER
1		Marx		Teresa		J		9			3251234567	Associate	4
2		Zhulin		Mark		M		10			3252345678	Full		NULL
3		Langley		Colin		A		12			3253456789	Assistant	4
4		Brown		Jonnel		D		11			3254567890	Full		NULL
5		Sealy		James		L		13			3255678901	Associate	2
6		May			Lisa		I		11			3256789012	Assistant	NULL
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 6-d

Answer: The view is expressed as a subset of a table in the database by specifying it to return the records 
from the table. So, when inserted, the data is directed into the source table through which the view is populated.
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 6-e*/
SELECT CONCAT(F_LAST, ', ', CASE WHEN ln(F_MI) > 0 THEN F_MI + ' ' ELSE '' END, F_FIRST) AS 'Faculty Name', 
BLDG_CODE AS 'Building Code', ROOM FROM faculty_view fv LEFT JOIN location l ON l.LOC_ID = fv.LOC_ID;
/*RESPONSE: "6 row(s) returned"

RESULT: 6 rows are returned as follows:
Faculty Name	Building Code	ROOM
Marx, Teresa	BUS				424
Zhulin, Mark	BUS				402
Langley, Colin	LIB				217
Brown, Jonnel	BUS				433
Sealy, James	LIB				222
May, Lisa		BUS				433
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 6-f*/
DROP VIEW faculty_view;
/*RESPONSE: "0 row(s) affected"

Note: View is dropped from the database
*/

/*-------------------------------------------------------------------------------------------------------------------*/

/*Que 6-g

Answer: Any existing programming modules such as stored procedures which refer 
the view will return errors when executing due to view being dropped. 
*/