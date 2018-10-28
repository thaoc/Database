CREATE PROCEDURE `insert_resident` (
	IN lname varchar(45),
    IN fname varchar(45),
    IN mname varchar(45),
    IN photo blob,
    IN sex varchar(10),
    IN eye_color int(11),
    IN hair_color int(11),
    IN race int(11),
    IN height int(11),
    IN weight int(11),
    IN dob date,
    IN offense int(11),
    IN risk int(11),
    IN sex_offender tinyint,
    IN birthplace varchar(45),
    IN username varchar(45),
    IN password varchar(45)    
    
)
BEGIN
	insert into Resident (
		Resident.Resident_LName,
		Resident.Resident_FName,
		Resident.Resident_Mname,
		Resident.Resident_Photo,        
		Resident.Resident_Sex,
		Resident.Resident_Eye_Color_ID_FK,
		Resident.Resident_Hair_Color_ID_FK,
		Resident.Resident_Race_ID_FK,
        Resident.Resident_Height,
		Resident.Resident_Weight,		
        Resident.Resident_DOB,
        Resident.Resident_Offense_ID_FK,
        Resident.Resident_Risk_Level_ID_FK,
        Resident.Resident_Sex_Offender,
		Resident.Resident_Birthplace,
		Resident.Resident_Username,
        Resident.Resident_Password
	) values (
		lname,
        fname,
        mname,
        photo,
        sex,
        eye_color,
        hair_color,
        race,
        height,
        weight,
        dob,
        offense,
        risk,
        sex_offender,
        birthplace,
        username,
        password
    );
END
