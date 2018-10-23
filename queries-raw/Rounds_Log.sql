SELECT Resident.Resident_FName, Resident.Resident_LName, Rounds.Rounds_DateTime, 
Rounds.Rounds_Activity, Staff.Staff_FName, Staff.Staff_LName
FROM Rounds
JOIN Resident ON Rounds.Rounds_Resident_ID_FK = Resident.Resident_ID
JOIN Staff ON Rounds.Rounds_Staff_ID_FK = Staff.Staff_ID;