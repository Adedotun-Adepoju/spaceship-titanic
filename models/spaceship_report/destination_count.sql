{{ config(materialized='table') }}

SELECT destination, transported, COUNT(*) as frequency
FROM `spaceship-titanic.herokuspaceship.spaceship`
WHERE destination IS NOT NULL
GROUP BY 1,2