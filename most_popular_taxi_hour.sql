SELECT strftime('%H', pickup_datetime) AS hour,
               COUNT(*) AS ride_count
        FROM yellow_taxi_trips
        WHERE pickup_datetime BETWEEN '2020-01-01' AND '2024-08-31'
        GROUP BY hour
        ORDER BY ride_count DESC;