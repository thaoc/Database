CREATE PROCEDURE `insert_assignment` (
	IN facility_id int(11),
    IN resident_id int(11),
    IN arrived datetime,
    IN departed datetime,
    IN room_number int(11)
)
BEGIN
	insert into Assignment (
		Assignment.Assignment_Facility_ID_FK,
        Assignment.Assignment_Resident_ID_FK,
        Assignment.Assignment_ArrivalDate,
        Assignment.Assignment_ExitDate,
        Assignment.Assignment_Room_Number_ID_FK
    ) values (
		facility_id,
        resident_id,
        arrived,
        departed,
        room_number
    );
END
