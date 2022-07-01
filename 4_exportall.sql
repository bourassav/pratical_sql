copy us_counties_2010
to '/home/vbourassa/pratical_sql/us_counties_export.csv'
with (format csv, header, delimiter '|');

copy us_counties_2010 (geo_name, internal_point_lat, internal_point_lon)
to '/home/vbourassa/pratical_sql/us_counties_latlon_export.csv'
with (format csv, header, delimiter '|');

copy (
    select geo_name, internal_point_lat, internal_point_lon
    from us_counties_2010
    where geo_name ilike '%mill%'
)
to '/home/vbourassa/pratical_sql/us_counties_mill_export.csv'
with (format csv, header, delimiter '|');   