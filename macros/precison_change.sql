
{% macro precison_change(column_name, precision=2) %}
    {{ column_name }}::numeric(16, {{ precision }})
{% endmacro %}
