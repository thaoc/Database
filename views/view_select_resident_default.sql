CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `ColeS`@`68.112.174.243` 
    SQL SECURITY DEFINER
VIEW `damascus_way`.`select_resident_default` AS
    SELECT 
        `damascus_way`.`Resident`.`Resident_ID` AS `Resident_ID`,
        `damascus_way`.`Resident`.`Resident_LName` AS `Resident_LName`,
        `damascus_way`.`Resident`.`Resident_FName` AS `Resident_FName`,
        `damascus_way`.`Resident`.`Resident_MName` AS `Resident_MName`,
        `damascus_way`.`Resident`.`Resident_Photo` AS `Resident_Photo`,
        `damascus_way`.`Resident`.`Resident_Offense` AS `Resident_Offense`,
        `damascus_way`.`Resident`.`Resident_Sex_Offender` AS `Resident_Sex_Offender`,
        `damascus_way`.`Resident`.`Resident_Risk_Level` AS `Resident_Risk_Level`,
        `damascus_way`.`Resident`.`Resident_Eye_Color` AS `Resident_Eye_Color`,
        `damascus_way`.`Resident`.`Resident_Hair_Color` AS `Resident_Hair_Color`,
        `damascus_way`.`Resident`.`Resident_Sex` AS `Resident_Sex`,
        `damascus_way`.`Resident`.`Resident_Race` AS `Resident_Race`,
        `damascus_way`.`Resident`.`Resident_Height` AS `Resident_Height`,
        `damascus_way`.`Resident`.`Resident_Weight` AS `Resident_Weight`,
        `damascus_way`.`Resident`.`Resident_DOB` AS `Resident_DOB`,
        `damascus_way`.`Resident`.`Resident_Birthplace` AS `Resident_Birthplace`,
        `damascus_way`.`Resident`.`Resident_Username` AS `Resident_Username`,
        `damascus_way`.`Resident`.`Resident_Password` AS `Resident_Password`
    FROM
        `damascus_way`.`Resident`