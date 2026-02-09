WITH top_states AS (
  SELECT state_abbr,
         SUM(CAST(replace(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) AS emissions_totals
  FROM emissions_data
  GROUP BY state_abbr
  ORDER BY emissions_totals DESC
  LIMIT 10
)
SELECT SUM(emissions_totals) AS top_10_total,
       SUM(emissions_totals) / 
       (SELECT SUM(CAST (replace(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) FROM emissions_data) * 100 AS top_10_percentage
FROM top_states
