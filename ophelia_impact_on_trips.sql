SELECT
        hw.Date || ' ' || printf('%02d:00:00', hw.Hour) AS weather_hour,
        COALESCE(ht.total_rides, 0) AS total_rides,
        COALESCE(hw.HourlyPrecipitation, 0.0) AS total_precipitation,
        COALESCE(hw.HourlyWindSpeed, 0.0) AS avg_wind_speed
    FROM
        hourly_weather hw
    LEFT JOIN
        Hourly_Trips ht ON hw.Date || ' ' || printf('%02d:00:00', hw.Hour) = ht.trip_hour
    WHERE
        hw.Date BETWEEN '2023-09-25' AND '2023-10-03'
    ORDER BY
        weather_hour ASC;