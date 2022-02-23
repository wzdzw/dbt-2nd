{% macro limit_data_in_dev(column_name,lookback_days) %}
    {% if target.name == 'dev' %}
    where {{column_name}} >= dateadd('day',{{lookback_days}},current_timestamp)
    {% endif %}
{% endmacro %}