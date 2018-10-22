CREATE DEFINER=`ColeS`@`68.112.174.243` PROCEDURE `select_resident_default`()
BEGIN
SELECT
	`Resident`.`Resident_ID`,
    `Resident`.`Resident_LName`,
    `Resident`.`Resident_FName`,
    `Resident`.`Resident_MName`,
    `Resident`.`Resident_Photo`,
    `Resident`.`Resident_Offense`,
    `Resident`.`Resident_Sex_Offender`,
    `Resident`.`Resident_Risk_Level`,
    `Resident`.`Resident_Eye_Color`,
    `Resident`.`Resident_Hair_Color`,
    `Resident`.`Resident_Sex`,
    `Resident`.`Resident_Race`,
    `Resident`.`Resident_Height`,
    `Resident`.`Resident_Weight`,
    `Resident`.`Resident_DOB`,
    `Resident`.`Resident_Birthplace`,
    `Resident`.`Resident_Username`,
    `Resident`.`Resident_Password`
FROM `damascus_way`.`Resident`; 

END