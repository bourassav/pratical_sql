EXPLAIN ANALYZE
SELECT
    *
FROM
    new_york_addresses
WHERE
    street = 'BROADWAY';

EXPLAIN ANALYZE
SELECT
    *
FROM
    new_york_addresses
WHERE
    street = '52 STREET'