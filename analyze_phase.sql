---------Analyzing the data

-------#1 membership type

SELECT
	member_casual, count(*)
FROM
	trip_one_year
GROUP BY
	member_casual;

-------#2 rideable type per membership type

SELECT 
	rideable_type, member_casual, COUNT(*) AS number_of_rides
FROM 
	trip_one_year
GROUP BY
	rideable_type, member_casual
ORDER BY
	member_casual, number_of_rides DESC;

-------#3 rides per day

SELECT
	member_casual, day_of_week, count(*) AS rides_per_day
FROM
	trip_one_year
GROUP BY
	day_of_week, member_casual;

-------#4 rides per month 

SELECT
	member_casual, month, count(*) AS rides_per_month
FROM
	trip_one_year
GROUP BY
	month, member_casual;
    
-------#5 average ride duration in seconds by day of week and by membership type

SELECT
	member_casual, day_of_week, ROUND(AVG(ride_duration_seconds), 2) AS avg_ride_time_seconds, AVG(AVG(ride_duration_seconds)) OVER(PARTITION BY member_casual) AS consolidated_avg_ride_duration 
FROM
	trip_one_year
GROUP BY
	member_casual, day_of_week;
