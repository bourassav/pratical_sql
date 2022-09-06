SELECT
    date_part('hour', tpep_pickup_datetime) AS trip_hour,
    percentile_cont(.5) within group (
        ORDER BY
            tpep_dropoff_datetime - tpep_pickup_datetime
    ) AS median_trip
FROM
    nyc_yellow_taxi_trips_2016_06_01
GROUP BY
    trip_hour
ORDER BY
    trip_hour;

SELECT
    date_part('hour', tpep_pickup_datetime) AS trip_hour,
    percentile_cont(.5) WITHIN GROUP (
        ORDER BY
            tpep_dropoff_datetime - tpep_pickup_datetime
    ) AS median_trip
FROM
    nyc_yellow_taxi_trips_2016_06_01
GROUP BY
    trip_hour
ORDER BY
    trip_hour;