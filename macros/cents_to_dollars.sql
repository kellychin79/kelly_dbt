{% macro cents_to_dollars(var, decimal_place=2) %}

	round( 1.0 * {{ var }} / 100.0, {{ decimal_place }} )

{% endmacro %}