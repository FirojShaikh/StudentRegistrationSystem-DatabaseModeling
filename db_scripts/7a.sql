SELECT @f_id := F_ID
FROM faculty
WHERE F_LAST = 'Brown';

SELECT @loc_id := LOC_ID
FROM location
WHERE BLDG_CODE = 'BUS' AND ROOM = '211';

UPDATE course_section
SET LOC_ID = @loc_id
WHERE F_ID = @f_id;