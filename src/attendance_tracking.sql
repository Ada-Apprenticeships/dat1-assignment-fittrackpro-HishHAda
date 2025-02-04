-- Initial SQLite setup
.open fittrackpro.db
.mode column

-- Enable foreign key support

--Enabling foreign key support 
PRAGMA foreign_keys = ON;

-- Attendance Tracking Queries

-- 1. Record a member's gym visit
-- TODO: Write a query to record a member's gym visit

INSERT INTO attendance (member_id, location_id, check_in_time)
VALUES (7, 1, CURRENT_TIMESTAMP) 

-- 2. Retrieve a member's attendance history
-- TODO: Write a query to retrieve a member's attendance history

SELECT 
    DATE(check_in_time) AS visit_date, 
    TIME(check_in_time) AS check_in_time, 
    TIME(check_out_time) AS check_out_time
FROM attendance
WHERE member_id = 5
ORDER BY check_in_time DESC;

-- 3. Find the busiest day of the week based on gym visits
-- TODO: Write a query to find the busiest day of the week based on gym visits

SELECT 
    strftime('%w', check_in_time) AS day_of_week, 
    COUNT(*) AS visit_count 
FROM attendance 
GROUP BY day_of_week 
ORDER BY visit_count DESC 
LIMIT 1;

-- 4. Calculate the average daily attendance for each location
-- TODO: Write a query to calculate the average daily attendance for each location

SELECT 
    l.name AS location_name,
    AVG(daily_visits) AS average_daily_attendance 
FROM (
    SELECT
        location_id,
        DATE(check_in_time) AS visit_date,
        COUNT(*) AS daily_visits 
    FROM attendance 
    GROUP BY location_id, visit_date
) subquery 
JOIN locations l ON subquery.location_id = l.location_id 
GROUP BY l.name; 