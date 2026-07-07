-- ==========================================
-- Case 002 - Organizing Evidence
--
-- Scenario:
-- The lieutenant wants to review crash
-- reports in chronological order.
--
-- Concepts Learned:
-- - ORDER BY
-- - ASC
-- - DESC
-- ==========================================

-- ORDER BY date; will display the results oldest → newest
SELECT *
FROM crashes
ORDER BY date;

-- OR you can have it displayed in a descending order like this:
SELECT *
FROM crashes
ORDER BY date DESC;

-- Challenge: Show me all the non-injury crashes from newest to oldest. Only display the dates and locations of crashes.
SELECT location, date
FROM crashes
WHERE severity = 'Property Damage'
ORDER BY date DESC;