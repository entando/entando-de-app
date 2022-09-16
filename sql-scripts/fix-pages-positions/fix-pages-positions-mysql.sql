-- The following query updates the positions of the pages setting consecutive numbers.
-- This is useful to fix page trees having missing elements

UPDATE pages
JOIN (
    SELECT code, ROW_NUMBER() OVER (PARTITION BY parentcode ORDER BY pos) AS correct_pos
    FROM pages
    WHERE pos > 0
) AS pages_to_update
ON pages.code = pages_to_update.code
SET pages.pos = pages_to_update.correct_pos;

