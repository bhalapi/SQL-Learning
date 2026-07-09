-- =============================================
-- Case 007 - Counting with Conditions
--
-- Scenario:
-- The lieutenant wants to know how many
-- serious crashes occurred on Hall Road.
--
-- Concepts Learned:
-- - COUNT()
-- - AND
-- - OR
-- - LIKE
-- - Parentheses
-- =============================================

SELECT COUNT(*) AS Serious_Hall_Rd_Crashes
FROM crashes
WHERE (
    severity = 'Injury'
    OR severity = 'Fatal'
)
AND location LIKE '%Hall Rd%';