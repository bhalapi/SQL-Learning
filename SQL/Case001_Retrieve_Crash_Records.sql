-- ==========================================
-- Case 001 - Retrieve Crash Records
--
-- Scenario:
-- Display specified crash reports from the database.
--
-- Concepts Learned:
-- - SELECT
-- - FROM
-- - WHERE
-- ==========================================
-- The "*" means: Show me every column... from the "crashes" table
SELECT *
FROM crashes;

-- "WHERE" prompts the database to decide which rows of data qualify based on the parameters entered by the user
SELECT *
FROM crashes
WHERE severity = 'Injury';

-- SELECT can also be more specific with which columns get displayed
SELECT location, severity
FROM crashes
WHERE severity = 'Injury';

-- SELECT … (Which rows?)
-- FROM … (Which database?)
-- WHERE …; (What criteria?/Where the described condition is TRUE)