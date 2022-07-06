SELECT
    schools_left.id as left_id,
    schools_left.left_school,
    schools_right.right_school
FROM
    schools_left
    LEFT JOIN schools_right ON schools_left.id = schools_right.id;