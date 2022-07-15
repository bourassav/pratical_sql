DROP TABLE IF EXISTS natural_key_composite_example;

CREATE TABLE natural_key_composite_example(
    student_id varchar(10),
    school_day date,
    present boolean,
    CONSTRAINT student_key PRIMARY KEY (student_id, school_day)
);

INSERT INTO
    natural_key_composite_example (student_id, school_day, present)
VALUES
    (775, '1/22/2007', 'Y');

INSERT INTO
    natural_key_composite_example (student_id, school_day, present)
VALUES
    (775, '1/22/2007', 'N');