SELECT
    percentile_cont(.5) within group(
        ORDER BY
            (
                round(
                    (
                        (
                            cast(c2010.p0010001 AS numeric(7, 0)) / c2000.p0010001
                        ) * 100
                    ) - 100,
                    2
                )
            )
    ) AS percentil_50
FROM
    us_counties_2000 AS c2000 FULL
    OUTER JOIN us_counties_2010 AS c2010 ON c2000.state_fips = c2010.state_fips
    AND c2000.county_fips = c2010.county_fips
WHERE
    c2000.geo_name IS NOT NULL
    AND c2010.geo_name IS NOT NULL;