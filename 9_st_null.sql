SELECT
    est_number,
    company,
    city,
    zip,
    st
FROM
    meat_poultry_egg_inspect
WHERE
    st IS NULL;