SELECT
    *
FROM
    crosstab(
        'select station_name,
    date_part(''month'', observation_date),
    percentile_cont(.5)
        within group (order by max_temp)
    from temperature_readings
    group by station_name,
        date_part(''month'', observation_date)
    order by station_name',
        'select month
        from generate_series(1,12) month'
    ) AS (
        station varchar(50),
        jan numeric(3, 0),
        feb numeric(3, 0),
        mar numeric(3, 0),
        apr numeric(3, 0),
        may numeric(3, 0),
        jun numeric(3, 0),
        jul numeric(3, 0),
        aug numeric(3, 0),
        sep numeric(3, 0),
        oct numeric(3, 0),
        nov numeric(3, 0),
        dec numeric(3, 0)
    );