-- =============================================
-- Case 005 - High Risk Intersections
--
-- Scenario:
-- The commander wants to know which
-- intersections experience the highest
-- number of crashes.
--
-- Concepts Learned:
-- - GROUP BY
-- - ORDER BY
-- - COUNT()
-- - AS
-- - LIMIT
-- =============================================

-- We only need the 'location' column displayed
-- COUNT(*) subsequently creates a second column at the output
-- GROUP BY ensures the number of crashes are grouped by lcoation
-- Lastly, ORDER BY in a DESC format displays the highest quantity at the top of the output
SELECT location, COUNT(*)
FROM crashes
GROUP BY location
ORDER BY count(*) DESC;

-- AS simply gives something a nickname (called an alias).
-- For a cleaner and more readable output, label the second column in the output
SELECT location,
       COUNT(*) AS Total_Crashes
FROM crashes
GROUP BY location
ORDER BY Total_Crashes DESC;

-- Scenario: "Show me the five intersections with the highest number of crashes."
-- LIMIT will only display the number of rows entered by the user.
SELECT location,
       COUNT(*) AS Total_Crashes
FROM crashes
GROUP BY location
ORDER BY Total_Crashes DESC
LIMIT 5;