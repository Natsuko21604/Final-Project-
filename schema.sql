
CREATE TABLE daily_weather (
	id INTEGER NOT NULL, 
	date DATE NOT NULL, 
	daily_avg_wind_speed FLOAT, 
	daily_precipitation FLOAT, 
	daily_snow_depth FLOAT, 
	daily_snow_fall FLOAT, 
	PRIMARY KEY (id)
)

;


CREATE TABLE hourly_weather (
	id INTEGER NOT NULL, 
	date DATE NOT NULL, 
	hour INTEGER, 
	hourly_precipitation FLOAT, 
	hourly_wind_speed FLOAT, 
	hourly_wind_direction VARCHAR, 
	PRIMARY KEY (id)
)

;


CREATE TABLE sun_data (
	id INTEGER NOT NULL, 
	"Date" DATE, 
	"Sunrise" DATETIME, 
	"Sunset" DATETIME, 
	PRIMARY KEY (id)
)

;


CREATE TABLE uber_trips (
	id INTEGER NOT NULL, 
	request_datetime DATETIME, 
	on_scene_datetime DATETIME, 
	pickup_datetime DATETIME, 
	dropoff_datetime DATETIME, 
	trip_miles FLOAT, 
	trip_time FLOAT, 
	base_passenger_fare FLOAT, 
	tolls FLOAT, 
	black_car_fund FLOAT, 
	sales_tax FLOAT, 
	congestion_surcharge FLOAT, 
	airport_fee FLOAT, 
	tips FLOAT, 
	driver_pay FLOAT, 
	shared_request_flag INTEGER, 
	shared_match_flag INTEGER, 
	access_a_ride_flag INTEGER, 
	wav_request_flag INTEGER, 
	wav_match_flag INTEGER, 
	pickup_latitude FLOAT, 
	pickup_longitude FLOAT, 
	dropoff_latitude FLOAT, 
	dropoff_longitude FLOAT, 
	PRIMARY KEY (id)
)

;


CREATE TABLE yellow_taxi_trips (
	id INTEGER NOT NULL, 
	vendorid INTEGER, 
	pickup_datetime DATETIME, 
	dropoff_datetime DATETIME, 
	passenger_count INTEGER, 
	trip_distance FLOAT, 
	rate_code_id INTEGER, 
	store_and_fwd_flag INTEGER, 
	payment_type INTEGER, 
	fare_amount FLOAT, 
	miscellaneous_extras FLOAT, 
	mta_tax FLOAT, 
	tip_amount FLOAT, 
	tolls_amount FLOAT, 
	improvement_surcharge FLOAT, 
	total_amount FLOAT, 
	congestion_surcharge FLOAT, 
	airport_fee FLOAT, 
	pickup_latitude FLOAT, 
	pickup_longitude FLOAT, 
	dropoff_latitude FLOAT, 
	dropoff_longitude FLOAT, 
	PRIMARY KEY (id)
)

;

