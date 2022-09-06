DROP TABLE IF EXISTS nyc_yellow_taxi_trips_2016_06_01;

CREATE TABLE nyc_yellow_taxi_trips_2016_06_01(
    trip_id bigserial PRIMARY KEY,
    vendor_id varchar(1) NOT NULL,
    tpep_pickup_datetime timestamp WITH time zone NOT NULL,
    tpep_dropoff_datetime timestamp WITH time zone NOT NULL,
    passenger_count integer NOT NULL,
    trip_distance numeric(8, 2) NOT NULL,
    pickup_longitude numeric (18, 15) NOT NULL,
    pickup_latitude numeric(18, 15) NOT NULL,
    rate_code_id varchar(2) NOT NULL,
    store_and_fwd_flag varchar(1) NOT NULL,
    dropoff_longitude numeric(18, 15) NOT NULL,
    dropoff_latitude numeric(18, 15) NOT NULL,
    payment_type varchar(1) NOT NULL,
    fare_amount numeric(9, 2) NOT NULL,
    extra numeric(9, 2) NOT NULL,
    mta_tax numeric(5, 2) NOT NULL,
    tip_amount numeric(9, 2) NOT NULL,
    tolls_amount numeric(9, 2) NOT NULL,
    improvement_surcharge numeric(9, 2) NOT NULL,
    total_amount numeric(9, 2) NOT NULL
);

copy nyc_yellow_taxi_trips_2016_06_01(
    vendor_id,
    tpep_pickup_datetime,
    tpep_dropoff_datetime,
    passenger_count,
    trip_distance,
    pickup_longitude,
    pickup_latitude,
    rate_code_id,
    store_and_fwd_flag,
    dropoff_longitude,
    dropoff_latitude,
    payment_type,
    fare_amount,
    extra,
    mta_tax,
    tip_amount,
    tolls_amount,
    improvement_surcharge,
    total_amount
)
FROM
    '/home/roger/pratical_sql/yellow_tripdata_2016_06_01.csv' WITH (format csv, header, delimiter ',');

CREATE INDEX tpep_pickup_idx ON nyc_yellow_taxi_trips_2016_06_01(tpep_pickup_datetime);