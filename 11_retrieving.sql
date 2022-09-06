-- This is just a personal test
DROP TABLE IF EXISTS moods;

CREATE TABLE moods(today timestamptz, mood varchar(50));

INSERT INTO
    moods (today, mood)
VALUES
    (CURRENT_TIMESTAMP, 'Good'),
    (CURRENT_TIMESTAMP, 'Still Good');

-- This is the actual exercice
DROP TABLE IF EXISTS current_time_example;

CREATE TABLE current_time_example(
    time_id bigserial,
    current_timestamp_col timestamp WITH time zone,
    clock_timestamp_col timestamp WITH time zone
);

INSERT INTO
    current_time_example (current_timestamp_col, clock_timestamp_col) (
        SELECT
            CURRENT_TIMESTAMP,
            clock_timestamp()
        FROM
            generate_series(1, 1000)
    );

SELECT
    *
FROM
    current_time_example;