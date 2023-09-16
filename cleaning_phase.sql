-------#1 After importing the csv files and combining it into one table, let's verify if we get the same number of total rows

SELECT 
	COUNT(*) 
FROM 
	cyclistic_data.trip_one_year;

-------#2 Check if the ride_ids are all unique and have same string lengths
SELECT
  COUNT(DISTINCT ride_id) AS unique_ride_id
FROM
	cyclistic_data.trip_one_year;

SELECT
	LENGTH(ride_id), count(*)
FROM 
	cyclistic_data.trip_one_year
GROUP BY
	LENGTH(ride_id);

-------#2 Remove leading and trailing spaces at start_station_name and end_station_name
	
UPDATE
	trip_one_year
SET
	start_station_name = TRIM(start_station_name);

UPDATE
	trip_one_year
SET
	start_station_name = TRIM(end_station_name);
