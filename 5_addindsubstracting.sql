select
    geo_name,
    p0010003 as "White Alone",
    p0010004 as "Black Alone",
    p0010003 + p0010004 as "Total White and Black"
from us_counties_2010;