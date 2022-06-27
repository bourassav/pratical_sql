create table if not exists number_data_types(
    numeric_column numeric(20, 5),
    real_column real,
    double_column double precision
);
insert into number_data_types
values
    (.7, .7, .7),
    (2.13579, 2.13579, 2.13579),
    (2.1357987, 2.1357987, 2.1357987);

select * from number_data_types;