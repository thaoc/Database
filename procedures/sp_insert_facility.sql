CREATE PROCEDURE `insert_facility` (
	IN facility_name varchar(45)
)
BEGIN
	insert into Facility
    (
		Facility.Facility_Name
    ) values (
		facility_name
    );
END
