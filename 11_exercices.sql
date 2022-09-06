-- SELECT
--     trip_id,
--     tpep_pickup_datetime,
--     tpep_dropoff_datetime,
--     tpep_dropoff_datetime - tpep_pickup_datetime AS time_length
-- FROM
--     nyc_yellow_taxi_trips_2016_06_01
-- ORDER BY
--     time_length DESC;
SELECT
    '2100-01-01 00:00:00-5' at time zone 'Europe/Moscow' AS moscow,
    '2100-01-01 00:00:00-5' at time zone 'US/Eastern' AS new_york;