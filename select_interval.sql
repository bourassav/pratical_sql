select
    timestamp_column,
    interval_column,
    timestamp_column - interval_column as new_date
from date_time_types;