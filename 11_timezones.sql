SELECT
    date_part(
        'year',
        '2022-08-31 18:37:12' :: timestamp at time zone 'America/Los_Angeles'
    ) AS "year",
    date_part(
        'month',
        '2022-08-31 18:37:12' :: timestamp at time zone 'America/Los_Angeles'
    ) AS "month",
    date_part(
        'day',
        '2022-08-31 18:37:12' :: timestamp at time zone 'America/Los_Angeles'
    ) AS "day",
    date_part(
        'hour',
        '2022-08-31 18:37:12' :: timestamp at time zone 'America/Los_Angeles'
    ) AS "hour",
    date_part(
        'minute',
        '2022-08-31 18:37:12' :: timestamp at time zone 'America/Los_Angeles'
    ) AS "minute",
    date_part(
        'seconds',
        '2022-08-31 18:37:12' :: timestamp at time zone 'America/Los_Angeles'
    ) AS "secondes",
    date_part(
        'timezone_hour',
        '2022-08-31 18:37:12' :: timestamp at time zone 'America/Los_Angeles'
    ) AS "tz",
    date_part(
        'week',
        '2022-08-31 18:37:12' :: timestamp at time zone 'America/Los_Angeles'
    ) AS "week",
    date_part(
        'quarter',
        '2022-08-31 18:37:12' :: timestamp at time zone 'America/Los_Angeles'
    ) AS "quarter",
    date_part(
        'epoch',
        '2022-08-31 18:37:12' :: timestamp at time zone 'America/Los_Angeles'
    ) AS "epoch";