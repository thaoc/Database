CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `ColeS`@`68.112.174.243` 
    SQL SECURITY DEFINER
VIEW `damascus_way`.`select_first_last_resident` AS
    SELECT 
        `damascus_way`.`Resident`.`Resident_ID` AS `Resident_ID`,
        `damascus_way`.`Resident`.`Resident_LName` AS `Resident_LName`,
        `damascus_way`.`Resident`.`Resident_FName` AS `Resident_FName`
    FROM
        `damascus_way`.`Resident`