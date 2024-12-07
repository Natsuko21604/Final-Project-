WITH Daily_Trips AS (
    SELECT
        DATE(pickup_datetime) AS trip_date,
        COUNT(*) AS total_rides
    FROM (
        SELECT pickup_datetime FROM yellow_taxi_trips
        WHERE pickup_datetime BETWEEN '2020-01-01' AND '2024-08-31'
        UNION ALL
        SELECT pickup_datetime FROM uber_trips
        WHERE pickup_datetime BETWEEN '2020-01-01' AND '2024-08-31'
    )
    GROUP BY trip_date
)
SELECT
    dw.Date AS snow_date,
    dw.DailySnowfall,
    COALESCE(dt.total_rides, 0) AS total_rides
FROM
    daily_weather dw
LEFT JOIN
    Daily_Trips dt ON dw.Date = dt.trip_date
WHERE
    dw.DailySnowfall IS NOT NULL
    AND dw.DailySnowfall > 0
    AND dw.Date BETWEEN '2020-01-01' AND '2024-08-31'
ORDER BY
    dw.DailySnowfall DESC
LIMIT 10;