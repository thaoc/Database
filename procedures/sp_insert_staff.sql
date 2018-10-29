CREATE PROCEDURE `insert_staff` (
	IN staff_fname		varchar(45),
    IN staff_lname		varchar(45),
    IN staff_phone		varchar(45),
    IN staff_street1	varchar(45),
    IN staff_street2	varchar(45),
    IN staff_city		varchar(45),
    IN staff_state		varchar(45),
    IN staff_zip		int(11),
    IN staff_photo		longblob,
    IN staff_user		varchar(45),
    IN staff_password	varchar(256)
)
BEGIN
	insert into Staff (
		Staff.Staff_LName,
        Staff.Staff_FName,
        Staff.Staff_Phone,
        Staff.Staff_Street1,
        Staff.Staff_City,
        Staff.Staff_State,
        Staff.Staff_Zip,
        Staff.Staff_Photo,
        Staff.Staff_Username,
        Staff.Staff_Password
    ) values (
		staff_lname,
        staff_fname,
        staff_phone,
        staff_street1,
        staff_street2,
        staff_city,
        staff_state,
        staff_zip,
        staff_photo,
        staff_user,
        staff_password
    );
END
