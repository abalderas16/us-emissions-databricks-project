SELECT county_state_name, population,
       CAST(replace(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) AS Total_emissions
FROM emissions_data
ORDER BY total_emissions DESC
LIMIT 10
