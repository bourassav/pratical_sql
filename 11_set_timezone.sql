SET
    timezone TO 'Europe/Dublin';

DROP TABLE IF EXISTS time_zone_test;

CREATE TABLE time_zone_test (test_date timestamptz);

INSERT INTO
    time_zone_test
VALUES
    ('2020-01-01 4:00');

SELECT
    test_date
FROM
    time_zone_test;

SET
    timezone TO 'Europe/Paris';

SELECT
    test_date
FROM
    time_zone_test;

SELECT
    test_date at time zone 'Asia/Seoul'
FROM
    time_zone_test;