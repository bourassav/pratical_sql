DROP TABLE IF EXISTS not_null_example;

CREATE TABLE not_null_example(
    student_id bigserial,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    CONSTRAINT student_key PRIMARY KEY (student_id)
);

SELECT
    *
FROM
    not_null_example;