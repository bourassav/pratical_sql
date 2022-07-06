SELECT
    *
FROM
    schools_left
    RIGHT JOIN schools_right ON schools_left.id = schools_right.id;