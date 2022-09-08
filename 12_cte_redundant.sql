WITH us_median AS (
    SELECT
        percentile_cont(.5) within group (
            ORDER BY
                p0010001
        ) AS us_median_pop
    FROM
        us_counties_2010
)
SELECT
    geo_name,
    state_us_abbreviation AS st,
    p0010001 AS total_pop,
    us_median_pop,
    p0010001 - us_median_pop AS diff_from_median
FROM
    us_counties_2010
    CROSS JOIN us_median
WHERE
    (p0010001 - us_median_pop) BETWEEN -1000
    AND 1000;