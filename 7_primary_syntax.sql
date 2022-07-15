DROP TABLE IF EXISTS natural_key_example;

CREATE TABLE IF NOT EXISTS natural_key_example(
    license_id VARCHAR(10) CONSTRAINT license_key PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

DROP TABLE natural_key_example;

CREATE TABLE natural_key_example(
    license_id varchar(10),
    first_name varchar(50),
    last_name varchar(50),
    CONSTRAINT license_key PRIMARY KEY (license_id)
);

INSERT INTO
    natural_key_example (license_id, first_name, last_name)
VALUES
    ('T229901', 'Lynn', 'Malero');

INSERT INTO
    natural_key_example (license_id, first_name, last_name)
VALUES
    ('T229901', 'Sam', 'Tracy');