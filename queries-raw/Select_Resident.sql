SELECT
    `Resident`.`Resident_LName`,
    `Resident`.`Resident_FName`,
    `Resident`.`Resident_MName`,
    `Resident`.`Resident_Photo`,
    `Resident`.`Resident_Sex`,
    `Resident`.`Resident_Height`,
    `Resident`.`Resident_Weight`,
    `Resident`.`Resident_DOB`,
    `Resident`.`Resident_Sex_Offender`,
    `Resident`.`Resident_Birthplace`,
    `Resident`.`Resident_Username`,
    `Eye_Color`.`Eye_description`,
    `Hair_Color`.`Hair_Color_ID`,
    `Race`.`Race_Description`,
    `Offense`.`Offense_Type`,
    `Risk_Level`.`Risk_Level_Type`
    
FROM Resident
JOIN Eye_Color ON `Resident`.`Resident_Eye_Color_ID_FK` = `Eye_Color`.`Eye_Color_ID`
JOIN Hair_Color ON `Resident`.`Resident_Hair_Color_ID_FK` = `Hair_Color`.`Hair_Color_ID`
JOIN Race ON `Resident`.`Resident_Race_ID_FK` = `Race`.`Race_ID`
JOIN Offense ON `Resident`.`Resident_Offense_ID_FK` = `Offense`.`Offense_ID`
JOIN Risk_Level ON `Resident`.`Resident_Risk_Level_ID_FK` = `Risk_Level`.`Risk_Level_ID`
