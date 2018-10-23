CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `ColeS`@`68.112.174.243` 
    SQL SECURITY DEFINER
VIEW `select_rounds_log` AS
    SELECT 
        `Resident`.`Resident_FName` AS `Resident_FName`,
        `Resident`.`Resident_LName` AS `Resident_LName`,
        `Rounds`.`Rounds_DateTime` AS `Rounds_DateTime`,
        `Rounds`.`Rounds_Activity` AS `Rounds_Activity`,
        `Staff`.`Staff_FName` AS `Staff_FName`,
        `Staff`.`Staff_LName` AS `Staff_LName`
    FROM
        ((`Rounds`
        JOIN `Resident` ON ((`Rounds`.`Rounds_Resident_ID_FK` = `Resident`.`Resident_ID`)))
        JOIN `Staff` ON ((`Rounds`.`Rounds_Staff_ID_FK` = `Staff`.`Staff_ID`)))