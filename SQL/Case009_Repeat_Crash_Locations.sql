-- =============================================
-- Case 009 - Repeat Crash Locations
--
-- Scenario:
-- The commander wants to identify intersections
-- with at least four crashes during the reporting
-- period.
--
-- Concepts Learned:
-- - HAVING
-- - Filtering grouped results
-- - Difference between WHERE and HAVING
-- =============================================

-- GROUP BY Places all crashes from the same location into one group.
-- HAVING in this case keeps only location groups containing at least four crashes.
SELECT location,
    COUNT(*) AS Total_Crashes
FROM crashes
GROUP BY location
HAVING COUNT(*) >= 4
ORDER BY Total_Crashes DESC;
-- WHERE filters individual rows BEFORE grouping.
-- HAVING filters groups AFTER GROUP BY creates them.


-- Scenario:
-- Identify locations with at least two serious crashes. 
-- Serious means Injury or Fatal.
-- For that request, use both WHERE and HAVING:
SELECT location,
    COUNT(*) AS Serious_Crashes
FROM crashes
WHERE (
    severity = 'Injury' 
    OR severity = 'Fatal'
)
GROUP BY location
HAVING COUNT(*) >= 2
ORDER BY Serious_Crashes DESC;
-- The query above is processed by SQL in this order:
-- 1. FROM
-- 2. WHERE
-- 3. GROUP BY
-- 4. HAVING
-- 5. SELECT
-- 6. ORDER BY