-- ==========================================
-- Case 004 - Crash Statistics
--
-- Scenario:
-- The captain wants a summary showing how
-- many crashes fall into each severity level.
--
-- Concepts Learned:
-- - GROUP BY
-- ==========================================

-- SQLite already arranges the table alphabetically...
SELECT severity, COUNT(*)
FROM crashes
GROUP BY severity;
-- In the event this was run on another program, an alphabetized output might not be the case...

-- To guarantee an alphabetized output, write it like this instead
SELECT severity, COUNT(*)
FROM crashes
GROUP BY severity
ORDER BY severity;

-- To arrange it based on quantity of crash type instead
-- This is useful for finding out the most common vs least common
SELECT severity, COUNT(*)
FROM crashes
GROUP BY severity
ORDER BY COUNT(*) DESC;
-- Notice the output places the highest quantitified crash type at the top of the table

-- This example is arranged by date instead of severity
SELECT date, COUNT(*)
FROM crashes
GROUP BY date;