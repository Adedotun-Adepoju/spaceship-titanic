{{ config(materialized='table') }}

SELECT transported, COUNT(*) as frequency
FROM `spaceship-titanic.herokuspaceship.spaceship`
GROUP BY 1