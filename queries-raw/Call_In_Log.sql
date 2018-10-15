SELECT Resident.Resident_FName, Resident.Resident_LName, Resident.Resident_Photo, 
Daily_Planner.DP_Leaving, Daily_Planner.DP_Returning, Daily_Planner.DP_Location_Name,
Call_In.Call_In_DateTime, Call_In.Call_In_PhoneNumber, Call_In.Call_In_Action,
Call_In.Call_In_From, Call_In.Call_In_TimeLengthAtLocation, Call_In.Call_In_To, 
Call_In.Call_In_Match_Planner, Call_In.Call_In_Message, 
Staff.Staff_FName, Staff.Staff_LName
FROM Call_In
JOIN Resident ON Call_In.Resident_ID = Resident.Resident_ID
JOIN Staff ON Call_In.Staff_ID = Staff.Staff_ID
JOIN Daily_Planner ON Call_In.Daily_Planner_ID = Daily_Planner.Daily_Planner_ID;