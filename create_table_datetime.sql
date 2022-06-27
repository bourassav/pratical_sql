create table if not exists date_time_types(
    timestamp_column timestamp with time zone,
    interval_column interval
);

insert into date_time_types
values
    ('2018-12-31 01:00 EST', '2 days'),
    ('2018-12-31 01:00 -8', '1 month'),
    ('2018-12-31 01:00 Australia/Melbourne', '1 century'),
    (now(), '1 week');

select * from date_time_types