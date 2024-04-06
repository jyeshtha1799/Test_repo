{% macro get_column_names(table_name) %}

  {% set query %}
    select column_name
    from information_schema.columns
    where table_name = '{{ Consolidated_financial_highlights }}'
      and table_schema = '{{ FINGEN_DATA.DBT_JPRABHU }}'
    order by ordinal_position
  {% endset %}

  {% set results = run_query(query) %}

  {% if execute %}
    {% set column_names = [] %}
    {% for row in results %}
      {% do column_names.append(row.column_name) %}
    {% endfor %}
    {{ return(column_names) }}
  {% endif %}

{% endmacro %}
