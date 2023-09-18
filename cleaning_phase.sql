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

-------#3 Remove leading and trailing spaces at start_station_name and end_station_name
	
UPDATE
	trip_one_year
SET
	start_station_name = TRIM(start_station_name);


UPDATE
	trip_one_year
SET
	start_station_name = TRIM(end_station_name);

-------#4 Check for duplicate entries in ride_id. Ride IDs should be unique, remove any duplicate or verify if the csv files are imported correctly.

SELECT
 	COUNT(DISTINCT ride_id) AS unique_ride_id
FROM
	cyclistic_data.trip_one_year;

-------#5 Check for negative timestamp. We will then delete these rows since there is no negative time duration.

SELECT
	ride_id, started_at, ended_at,TIMESTAMPDIFF(SECOND, started_at , ended_at)
FROM 
	trip_one_year
WHERE 
	TIMESTAMPDIFF(SECOND, started_at , ended_at) < 0;

DELETE
	
FROM
	trip_one_year 
WHERE
	TIMESTAMPDIFF(SECOND, started_at , ended_at) < 0

-------#6 Check for NULL values at the latitude and longitude. We will then delete these rows since there cannot be a NULL value in location (coordinates)

SELECT 
	*
FROM
	trip_one_year 
WHERE
	end_lng IS NULL
    OR end_lat IS NULL
    OR start_lng IS NULL
    OR start_lat IS NULL;


DELETE
	
FROM
	trip_one_year 
WHERE
	end_lng IS NULL
    OR end_lat IS NULL
    OR start_lng IS NULL
    OR start_lat IS NULL;

-- delete NULL values in start_lat, start_lng, end_lat, end_lng



