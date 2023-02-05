{{ config (
    materialized="table"
)}}

{#
{{ dbt_utils.date_spine(
    datepart="day",
    start_date="cast('2020-01-01' as date)",
    end_date="cast('2021-01-01' as date)"
   )
}}
#}

{{ dbt_utils.date_spine(
        start_date="to_date('2023/05/01', 'yyyy/dd/mm')",
        datepart="week",
        end_date="current_date + interval '1 month'"
        )
}}