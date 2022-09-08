DROP TABLE IF EXISTS temperature_readings;

CREATE TABLE temperature_readings (
    reading_id bigserial,
    station_name varchar(50),
    observation_date date,
    max_temp integer,
    min_temp integer
);

copy temperature_readings (
    station_name,
    observation_date,
    max_temp,
    min_temp
)
FROM
    '/home/roger/pratical_sql/temperature.csv' WITH (FORMAT CSV, Header);