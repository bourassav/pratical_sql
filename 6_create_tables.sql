create table departments(
    dept_id bigserial,
    dept varchar(100),
    city varchar(100),
    constraint dept_key primary key (dept_id),
    constraint dept_city_unique unique (dept, city)
);

create table employees(
    emp_id bigserial,
    first_name varchar(100),
    last_name varchar(100),
    salary integer,
    dept_id integer references departments (dept_id),
    constraint emp_key primary key (emp_id),
    constraint empt_dep_unique unique (emp_id, dept_id)
);

insert into departments (dept, city)
values
    ('Tax', 'Atlanta'),
    ('IT', 'Boston');

insert into employees (first_name, last_name, salary, dept_id)
values
    ('Nancy', 'Jones', 62500, 1),
    ('Lee', 'Smith', 59300, 1),
    ('Soo', 'Nguyen', 83000, 2),
    ('Janet', 'King', 95000, 2);