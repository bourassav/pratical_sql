SELECT
    first_name,
    last_name
FROM
    employees
WHERE
    id IN (
        SELECT
            id
        FROM
            retirees
    );