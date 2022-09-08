SELECT
    *
FROM
    crosstab(
        'select flavor, office, count(*) from ice_cream_survey group by office, flavor order by flavor',
        'select office from ice_cream_survey group by office order by office'
    ) AS (
        flavor varchar(20),
        downtown bigint,
        midtown bigint,
        uptown bigint
    );