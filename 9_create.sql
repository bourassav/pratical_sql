DROP TABLE IF EXISTS meat_poultry_egg_inspect;

CREATE TABLE meat_poultry_egg_inspect(
    est_number varchar(50) CONSTRAINT est_number_key PRIMARY KEY,
    company varchar(100),
    street varchar(100),
    city varchar(50),
    st varchar(2),
    zip varchar(5),
    phone varchar(14),
    grant_date date,
    activities text,
    dbas text
);

COPY meat_poultry_egg_inspect
FROM
    '/home/roger/pratical_sql/meat.csv' WITH (format csv, header, delimiter ',');

CREATE INDEX company_idx ON meat_poultry_egg_inspect (company);