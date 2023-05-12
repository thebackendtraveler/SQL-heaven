CREATE TABLE IF NOT EXISTS low_caloric_ingredients
SELECT * FROM ingredients
WHERE calories < 60;