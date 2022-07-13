SELECT c2000.geo_name,
    c2010.geo_name,
    (
        (
            cast(c2010.p0010001 AS decimal(8, 1)) - c2000.p0010001
        ) / c2000.p0010001
    ) * 100 AS percent_change,
    c2000.p0010001,
    c2010.p0010001
FROM us_counties_2000 AS c2000
    inner JOIN us_counties_2010 AS c2010 ON c2000.state_fips = c2010.state_fips
    AND c2000.county_fips = c2010.county_fips
WHERE c2000.geo_name IS NOT NULL
    AND c2010.geo_name IS NOT NULL
ORDER BY percent_change
limit 10;