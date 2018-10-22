CREATE PROCEDURE `insert_daily_planner` 
(
	IN dp_date date,
    IN dp_location varchar(45),
    IN dp_street varchar(45),
    IN dp_city varchar(45),
    IN dp_state varchar(45),
    IN dp_zip int(11),
    IN dp_phone varchar(15),
    IN dp_purpose varchar(150),
    IN dp_time_needed varchar(45),
    IN dp_contact_name varchar(45),
    IN dp_leaving varchar(45),
    IN dp_returning varchar(45),
    IN dp_transport_mode varchar(45),
    IN dp_bus_route varchar(45),
    IN dp_driver_name varchar(45),
    IN resident_id int(11),
    IN staff_id int(11)
)
BEGIN
INSERT INTO `damascus_way`.`Daily_Planner`
(
`DP_Date`,
`DP_Location_Name`,
`DP_Location_Street`,
`DP_Location_City`,
`DP_Location_State`,
`DP_Location_Zip`,
`DP_Location_Phone`,
`DP_Purpose`,
`DP_Time_Needed`,
`DP_Contact_Name`,
`DP_Leaving`,
`DP_Returning`,
`DP_Transport_Mode`,
`DP_Bus_Route`,
`DP_Driver_Name`,
`Resident_ID`,
`Staff_ID`
)

VALUES
(
dp_date,
dp_location,
dp_street,
dp_city,
dp_state,
dp_zip,
dp_phone,
dp_purpose,
dp_time_needed,
dp_contact_name,
dp_leaving,
dp_returning,
dp_transport_mode,
dp_bus_route,
dp_driver_name,
resident_id,
staff_id
);

END
