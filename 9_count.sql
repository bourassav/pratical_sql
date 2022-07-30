select
    company,
    count(*) as company_count
from
    meat_poultry_egg_inspect
group by
    company
order by
    company asc;