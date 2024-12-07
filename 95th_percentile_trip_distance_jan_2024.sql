WITH All_Trips AS (
            SELECT trip_distance
            FROM yellow_taxi_trips
            WHERE pickup_datetime BETWEEN '2024-01-01' AND '2024-01-31'
            UNION ALL
            SELECT trip_miles AS trip_distance
            FROM uber_trips
            WHERE pickup_datetime BETWEEN '2024-01-01' AND '2024-01-31'
        ),
        Ordered_Trips AS (
            SELECT 
                trip_distance,
                ROW_NUMBER() OVER (ORDER BY trip_distance) AS row_num,
                COUNT(*) OVER () AS total_rows
            FROM All_Trips
        )
        SELECT
            trip_distance AS percentile_95
        FROM
            Ordered_Trips
        WHERE
            row_num = CAST(0.95 * total_rows AS INTEGER) + 1;