copy us_counties_2010 (geo_name, internal_point_lat, internal_point_lon)
to '/home/vbourassa/pratical_sql/us_counties_latlon_export.txt'
with (format csv, delimiter '|');