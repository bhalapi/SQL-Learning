-- ==========================================
-- Case 003 - Counting Evidence
--
-- Scenario:
-- The lieutenant wants to know how many
-- crash reports exist in the database.
--
-- Concepts Learned:
-- - COUNT()
-- ==========================================

-- The count function is literally just used to count things. This simply just counts the total number of crashes.
SELECT COUNT(*)
FROM crashes;

-- This gets more specific and displays the total number of injury-non-fatal crashes.
SELECT COUNT(*)
FROM crashes
WHERE severity = 'Injury';

-- This gets even more specific and displays the total number of injury and fatal crashes.
SELECT COUNT(*)
FROM crashes
WHERE severity = 'Injury'
OR severity = 'Fatal';

-- This is a simpler way to run the query just above.
SELECT COUNT(*)
FROM crashes
WHERE severity IN ('Injury', 'Fatal');