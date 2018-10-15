SELECT Resident.Resident_FName, Resident.Resident_LName, Rounds.Rounds_DateTime, 
Rounds.Rounds_Activity, Staff.Staff_FName, Staff.Staff_LName
FROM Rounds
JOIN Resident ON Rounds.Resident_ID = Resident.Resident_ID
JOIN Staff ON Rounds.Staff_ID = Staff.Staff_ID;
