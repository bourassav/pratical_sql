ALTER TABLE
    not_null_example DROP CONSTRAINT student_key;

ALTER table
    not_null_example add CONSTRAINT student_key primary key (student_id);