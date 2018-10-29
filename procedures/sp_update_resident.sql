CREATE PROCEDURE `update_resident` (
	IN resident_id int(11),
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
    IN birthplace varchar(45)  
)
BEGIN
	UPDATE `damascus_way`.`Resident`
	SET
	`Resident_LName` = lname,
	`Resident_FName` = fname,
	`Resident_MName` = mname,
	`Resident_Photo` = photo,
	`Resident_Sex` = sex,
	`Resident_Eye_Color_ID_FK` = eye_color,
	`Resident_Hair_Color_ID_FK` = hair_color,
	`Resident_Race_ID_FK` = race,
	`Resident_Height` = height,
	`Resident_Weight` = weight,
	`Resident_DOB` = dob,
	`Resident_Offense_ID_FK` = offense,
	`Resident_Risk_Level_ID_FK` = risk,
	`Resident_Sex_Offender` = sex_offender,
	`Resident_Birthplace` = birthplace
	WHERE `Resident_ID` = resident_id;

END
