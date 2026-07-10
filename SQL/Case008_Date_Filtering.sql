-- =============================================
-- Case 008 - Date Filtering
--
-- Scenario:
-- The lieutenant wants every crash that
-- occurred during July 2026.
--
-- Concepts Learned:
-- - Date filtering
-- - >=
-- - <=
-- - BETWEEN
-- =============================================
-- >= and <= define the inclusive start and end dates.
SELECT crash_id, location, severity, date
FROM crashes
WHERE date >= '2026-07-01'
AND date <= '2026-07-31'
ORDER BY date;

-- BETWEEN provides a shorter way to filter an inclusive date range.
-- DESC sorts the results from largest to smallest.
-- For dates, this means newest to oldest.
SELECT crash_id, location, severity, date
FROM crashes
WHERE date BETWEEN '2026-07-01' AND '2026-07-31'
ORDER BY date DESC;

-- Scenario: Show every Injury or Fatal crash that occurred during August 2026, ordered from newest to oldest
-- SQL evaluates AND before OR.
-- Parentheses force the Injury/Fatal condition to be evaluated together first.
SELECT crash_id, location, severity, date
FROM crashes
WHERE (
    severity = 'Injury' 
    OR severity = 'Fatal'
)
AND date BETWEEN '2026-08-01' AND '2026-08-31'
ORDER BY date DESC;