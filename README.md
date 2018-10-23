# Damascus Way Data Structure

## Senior Project CSC 450

### ERD

### Relationships

### Views
NOTE ABOUT Views
in your php code you can call a view like you would a select statement
```query = "SELECT * FROM select_resident_default";```

- select_first_last_resident (this one might not be necessary)
  resident_id
  resident_fname
  resident_lname

- select_resident_default
  inc. all resident fields

- select_rounds_log
  resident_fname
  resident_lname
  rounds_daytime
  rounds_activity
  staff_lname
  staff_fname

- select_call_in_log
  resident_lname
  resident_fname
  resident_photo
  DP_leaving `dp = daily_planner table items`
  DP_returning
  DP_location_name
  call_in_datetime
  call_in_phonenumber
  call_in_action
  call_in_from
  call_in_timelengthatlocation
  call_in_to
  call_in_match_planner
  call_in_message
  staff_fname
  staff_lname
  
### Procedures
NOTE: more details to come

- insert_caseworker
- insert_daily_planner
- insert_facility
- insert_resident _note: this is being updated and not fully functional_
- insert_staff
