-- =============================================
-- Case 006 - Filtering an Investigation
--
-- Scenario:
-- The lieutenant needs every injury crash
-- that occurred on Hall Road.
--
-- Concepts Learned:
-- - AND
-- - OR
-- - Parentheses ( )
-- - LIKE
-- - %
-- =============================================

-- SQL evaluates AND before OR, so parentheses are needed for OR to be evaluated first
-- LIKE searches for text that matches the pattern - in this case, "Hall Rd'
-- '%' is a wildcard.
-- '%Hall Rd%' matches the text anywhere in the string.
-- 'Hall Rd%' matches only if the text starts with "Hall Rd".
-- '%Hall Rd' matches only if the text ends with "Hall Rd".
SELECT crash_id, location, severity, date
FROM crashes
WHERE (
    severity = 'Injury'
    OR severity = 'Fatal'
)
AND location LIKE '%Hall Rd%';

-- Same concepts, but different criteria:
-- Show me every Property Damage crash that happened on Van Dyke.
-- Notice parentheses are not needed becasue there is no OR statement
SELECT crash_id, location, severity, date
FROM crashes
WHERE severity = 'Property Damage'
AND location LIKE '%Van Dyke%';