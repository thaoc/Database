CREATE DEFINER=`ColeS` PROCEDURE `insert_caseworker`(
	IN caseworker_lname varchar(45),
    IN caseworker_fname varchar(45)
)
BEGIN
	insert into Caseworker (
		Caseworker.Caseworker_LName,
        Caseworker.Caseworker_FName
    ) values (
		caseworker_lname,
        caseworker_fname
    );
END