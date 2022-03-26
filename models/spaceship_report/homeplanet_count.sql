{{ config(materialized='table')}}

SELECT homeplanet, transported, COUNT(*) as frequency
FROM `spaceship-titanic.herokuspaceship.spaceship`
WHERE homeplanet IS NOT NULL
GROUP BY 1,2
