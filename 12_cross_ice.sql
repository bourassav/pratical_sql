SELECT
    *
FROM
    crosstab(
        'select office, flavor, count(*) from ice_cream_survey group by office, flavor order by office',
        'select flavor from ice_cream_survey group by flavor order by flavor'
    ) AS (
        office varchar(20),
        chocolat bigint,
        strawberry bigint,
        vanilla bigint
    );