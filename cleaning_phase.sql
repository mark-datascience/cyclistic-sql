-------#1 Check if the ride_ids are all unique and have same string lengths

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

	
