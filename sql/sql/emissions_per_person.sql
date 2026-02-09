SELECT county_state_name, population,
       CAST(replace(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)
       / NULLIF(CAST(replace(population, ',', '') AS DOUBLE), 0) 
       AS emissions_per_person
FROM emissions_data
ORDER BY emissions_per_person DESC;
