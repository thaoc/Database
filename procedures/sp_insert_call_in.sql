CREATE PROCEDURE `insert_call_in` (
	IN resident_id int(11),
    IN staff_id int(11),
    IN daily_planner int(11),
    IN current_datetime datetime,
    IN phone_number varchar(45),
    IN call_in_action varchar(45),
    IN call_in_to varchar(45),
    IN call_in_from varchar(45),
    IN time_at_location varchar(45),
    IN match_planner tinyint,
    IN message varchar(150)
)
BEGIN

	insert into Call_In (
		Call_In.Call_In_Resident_ID_FK,
        Call_In.Call_In_Staff_ID_FK,
        Call_In.Call_In_Daily_Planner_ID,
        Call_In.Call_In_DateTime,
        Call_In.Call_In_PhoneNumber,
        Call_In.Call_In_Action,
        Call_In.Call_In_To,
        Call_In.Call_In_From,
        Call_In.Call_In_TimeLengthAtLocation,
        Call_In.Call_In_Match_Planner,
        Call_In.Call_In_Message
    ) values (
		resident_id,
        staff_id,
        daily_planner,
        current_datetime,
        phone_number,
        call_in_action,
        call_in_to,
        call_in_from,
        time_at_location,
        match_planner,
        message
    );

END
