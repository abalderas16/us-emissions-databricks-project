SELECT state_abbr,
       SUM(CAST (replace(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) AS emissions_totals
FROM emissions_data
GROUP BY state_abbr
ORDER BY emissions_totals DESC
