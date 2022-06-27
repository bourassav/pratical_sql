select
    numeric_column * 10000000 as "Fixed",
    real_column * 10000000 as "Float"
from number_data_types
where numeric_column = .7;