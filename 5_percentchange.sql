create table percent_change(
    department varchar(20),
    spend_2014 numeric(10, 2),
    spend_2017 numeric(10, 2)
);

insert into percent_change
values
    ('Building', 250000, 289000),
    ('Assessor', 178556, 179500),
    ('Library', 87777, 90001),
    ('Clerck', 451980, 650000),
    ('Police', 250000, 223000),
    ('Recreation', 199000, 195000);

select
    department,
    spend_2014,
    spend_2017,
    round((spend_2017 - spend_2014) /
        spend_2014 * 100, 1) as "pct_change"
from percent_change;