Select D.DP_Date, D.DP_Location_Name, D.DP_Location_Street, D.DP_Location_City, 
D.DP_Location_State, D.DP_Location_Zip, D.DP_Location_Phone, D.DP_Purpose, D.DP_Contact_Name, 
D.DP_Time_Needed, D.DP_Leaving, D.DP_Returning, D.DP_Transport_Mode, D.DP_Bus_Route, 
D.DP_Driver_Name, R.Resident_FName, R.Resident_LName, S.Staff_FName, S.Staff_LName
FROM Daily_Planner D
JOIN Resident R ON D.DP_Resident_ID_FK = R.Resident_ID
JOIN Staff S ON D.DP_Staff_ID_FK = S.Staff_ID;
