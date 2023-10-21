---------Analyzing the data

-------#1 rideable type per membership
SELECT 
	rideable_type, member_casual, count(*) AS number_of_rides
FROM 
	cyclistic_data.trip_one_year
GROUP BY
	rideable_type, member_casual
ORDER BY
	member_casual, number_of_rides DESC

