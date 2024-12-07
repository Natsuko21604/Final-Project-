WITH Daily_Rides AS (
    SELECT
        DATE(pickup_datetime) AS ride_date,
        COUNT(*) AS total_rides,
        AVG(trip_distance) AS avg_trip_distance
    FROM (
        SELECT pickup_datetime, trip_distance FROM yellow_taxi_trips
        WHERE pickup_datetime BETWEEN '2023-01-01' AND '2023-12-31'
        UNION ALL
        SELECT pickup_datetime, trip_miles AS trip_distance FROM uber_trips
        WHERE pickup_datetime BETWEEN '2023-01-01' AND '2023-12-31'
    )
    GROUP BY ride_date
),
Top_10_Busiest_Days AS (
    SELECT * FROM Daily_Rides
    ORDER BY total_rides DESC
    LIMIT 10
)
SELECT
    Top_10_Busiest_Days.ride_date,
    Top_10_Busiest_Days.total_rides,
    Top_10_Busiest_Days.avg_trip_distance,
    daily_weather.DailyPrecipitation,
    daily_weather.DailyAverageWindSpeed
FROM
    Top_10_Busiest_Days
JOIN
    daily_weather ON Top_10_Busiest_Days.ride_date = daily_weather.Date
ORDER BY
    Top_10_Busiest_Days.total_rides DESC;