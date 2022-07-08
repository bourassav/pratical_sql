SELECT
    lt.id,
    lt.left_school,
    rt.right_school
FROM
    schools_left AS lt
    LEFT JOIN schools_right AS rt ON lt.id = rt.id;