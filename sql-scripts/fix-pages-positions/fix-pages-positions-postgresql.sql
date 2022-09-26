-- The following query updates the positions of the pages setting consecutive numbers.
-- This is useful to fix page trees having missing elements

WITH pages_to_update AS (
    SELECT ROW_NUMBER() OVER (PARTITION BY parentcode ORDER BY pos) AS correct_pos, code
    FROM pages
    WHERE pos > 0
)
UPDATE pages SET pos = correct_pos
FROM pages_to_update
WHERE pages.code = pages_to_update.code;
