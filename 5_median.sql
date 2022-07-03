drop table if exists percent_test;

create table percent_test(
    numbers integer
);

insert into percent_test (numbers)
values
    (1), (2), (3), (4), (5), (6);

select
    percentile_cont(.5)
    within group(order by numbers),
    percentile_disc(.5)
    within group(order by numbers)
from percent_test;