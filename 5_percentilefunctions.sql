select percentile_cont(array[.25, .5, .75])
    within group(order by p0010001) as "quartiles"
from us_counties_2010;