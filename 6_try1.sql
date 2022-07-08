SELECT
    c2000.geo_name as c2000_geo_name,
    c2000.county_fips as c2000_county_fips,
    c2000.state_fips as c2000_state_fips,
    c2010.geo_name as c2010_geo_name,
    c2010.county_fips as c2010_county_fips,
    c2010.state_fips as c2010_state_fips
FROM
    us_counties_2000 AS c2000
    full outer JOIN us_counties_2010 AS c2010 ON c2000.county_fips = c2010.county_fips
    AND c2000.state_fips = c2010.state_fips
WHERE
    c2000.county_fips IS NULL or c2010.county_fips is null;