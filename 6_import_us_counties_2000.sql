DROP TABLE IF EXISTS us_counties_2000;

CREATE TABLE IF NOT EXISTS us_counties_2000(
    geo_name varchar(90),
    state_us_abbreviation varchar(2),
    state_fips varchar(2),
    county_fips varchar(3),
    p0010001 integer,
    p0010002 integer,
    p0010003 integer,
    p0010004 integer,
    p0010005 integer,
    p0010006 integer,
    p0010007 integer,
    p0010008 integer,
    p0010009 integer,
    p0010010 integer,
    p0020002 integer,
    p0020003 integer
);

copy us_counties_2000
FROM
    '/home/roger/pratical_sql/us_counties_2000.csv' WITH(format csv, header);