DROP TABLE IF EXISTS surrogate_key_example;

CREATE TABLE surrogate_key_example(
    order_number bigserial,
    product_name varchar(50),
    order_date date,
    CONSTRAINT order_key PRIMARY KEY (order_number)
);

INSERT INTO
    surrogate_key_example (product_name, order_date)
VALUES
    ('Beachball', '2015-03-07'),
    ('Wrinkle De-Atomizer', '2017-05-22'),
    ('Flux Capacitor', '1985-10-26');

SELECT
    *
FROM
    surrogate_key_example;