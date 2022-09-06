SELECT
    date_part('hour', tpep_pickup_datetime) AS trip_hour,
    count(*)
FROM
    nyc_yellow_taxi_trips_2016_06_01
GROUP BY
    trip_hour
ORDER BY
    trip_hour;

copy(
    SELECT
        date_part('hour', tpep_pickup_datetime) AS trip_hour,
        count(*)
    FROM
        nyc_yellow_taxi_trips_2016_06_01
    GROUP BY
        trip_hour
    ORDER BY
        trip_hour
) TO '/home/roger/pratical_sql/hourly_pickups_2016_06_01.csv' WITH (format csv, header, delimiter ',');