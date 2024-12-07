CREATE TEMP TABLE Hourly_Trips AS
        SELECT
            strftime('%Y-%m-%d %H:00:00', pickup_datetime) AS trip_hour,
            COUNT(*) AS total_rides
        FROM (
            SELECT pickup_datetime FROM yellow_taxi_trips
            WHERE pickup_datetime BETWEEN '2023-09-25' AND '2023-10-03'
            UNION ALL
            SELECT pickup_datetime FROM uber_trips
            WHERE pickup_datetime BETWEEN '2023-09-25' AND '2023-10-03'
        )
        GROUP BY trip_hour;