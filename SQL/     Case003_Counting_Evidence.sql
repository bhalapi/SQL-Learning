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

SELECT COUNT(*)
FROM crashes;

SELECT COUNT(*)
FROM crashes
WHERE severity = 'Injury';

SELECT COUNT(*)
FROM crashes
WHERE severity = 'Injury'
OR severity = 'Fatal';

SELECT COUNT(*)
FROM crashes
WHERE severity IN ('Injury', 'Fatal');