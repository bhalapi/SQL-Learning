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

-- Exercise 1
SELECT *
FROM crashes
ORDER BY date;

-- Exercise 2
SELECT *
FROM crashes
ORDER BY date DESC;

-- Challenge
SELECT location, date
FROM crashes
WHERE severity = 'Property Damage'
ORDER BY date DESC;