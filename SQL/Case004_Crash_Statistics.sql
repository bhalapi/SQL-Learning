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

-- GROUP BY means: "Put similar rows into groups."
-- SQLite already arranges the output alphabetically...
SELECT severity, COUNT(*)
FROM crashes
GROUP BY severity;
-- In the event this was run on another program, an alphabetized output might not be the case...

-- To guarantee an alphabetized output, write it like this instead.
SELECT severity, COUNT(*)
FROM crashes
GROUP BY severity
ORDER BY severity;

-- To arrange it based on quantity of crash type instead...
-- This is useful for finding out the most common vs least common type of something.
SELECT severity, COUNT(*)
FROM crashes
GROUP BY severity
ORDER BY COUNT(*) DESC;
-- Notice the output places the highest quantitified crash type (Property Damage) at the top of the table.

-- This example groups total number of crashes by date instead of severity.
SELECT date, COUNT(*)
FROM crashes
GROUP BY date;
-- Notice the oldest crash dates are displayed first