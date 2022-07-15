CREATE TABLE new_york_addresses(
    longitude numeric(9, 6),
    latitude numeric(9, 6),
    street_number varchar(10),
    street varchar(32),
    unit varchar(7),
    postcode varchar(5),
    id integer CONSTRAINT new_york_key PRIMARY KEY
);

copy new_york_addresses
FROM
    '/home/vbourassa/pratical_sql/new_york.csv' WITH (format csv, header);