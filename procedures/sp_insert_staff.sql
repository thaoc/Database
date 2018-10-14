CREATE DEFINER=`ColeS` PROCEDURE `insert_staff`(
	IN staff_fname varchar(45),
    IN staff_lname varchar(45)
)
BEGIN
	insert into Staff (
		Staff.Staff_LName,
        Staff.Staff_FName
    ) values (
		staff_fname,
        staff_lname
    );
END