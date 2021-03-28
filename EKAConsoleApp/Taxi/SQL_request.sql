select Drivers.family_name, Cars.model, Cars.reg_number, Trips.start_date, Trips.end_date
  from Trips inner join Drivers on Trips.driver_id = Drivers.id 
	   inner join Cars on Trips.car_id = Cars.id
order by start_date, family_name