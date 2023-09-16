/*
First, let's create a table for our individual csv files using the following SQL scripts.
*/

CREATE TABLE trip202111(
    ride_id VARCHAR(200) NULL,
    rideable_Type VARCHAR(200) NULL,
    started_at TIMESTAMP NULL,
    ended_at TIMESTAMP NULL,
    start_station_name VARCHAR(200) NULL,
    start_station_id VARCHAR(200) NULL,
    end_station_name VARCHAR(200) NULL,
    end_station_id VARCHAR(200) NULL,
    start_lat FLOAT NULL,
    start_lng FLOAT NULL,
    end_lat FLOAT NULL,
    end_lng FLOAT NULL,
    member_casual VARCHAR(200) NULL
    );

CREATE TABLE trip202112(
    ride_id VARCHAR(200) NULL,
    rideable_Type VARCHAR(200) NULL,
    started_at TIMESTAMP NULL,
    ended_at TIMESTAMP NULL,
    start_station_name VARCHAR(200) NULL,
    start_station_id VARCHAR(200) NULL,
    end_station_name VARCHAR(200) NULL,
    end_station_id VARCHAR(200) NULL,
    start_lat FLOAT NULL,
    start_lng FLOAT NULL,
    end_lat FLOAT NULL,
    end_lng FLOAT NULL,
    member_casual VARCHAR(200) NULL
    );

CREATE TABLE trip202201(
    ride_id VARCHAR(200) NULL,
    rideable_Type VARCHAR(200) NULL,
    started_at TIMESTAMP NULL,
    ended_at TIMESTAMP NULL,
    start_station_name VARCHAR(200) NULL,
    start_station_id VARCHAR(200) NULL,
    end_station_name VARCHAR(200) NULL,
    end_station_id VARCHAR(200) NULL,
    start_lat FLOAT NULL,
    start_lng FLOAT NULL,
    end_lat FLOAT NULL,
    end_lng FLOAT NULL,
    member_casual VARCHAR(200) NULL
    );

CREATE TABLE trip202202(
    ride_id VARCHAR(200) NULL,
    rideable_Type VARCHAR(200) NULL,
    started_at TIMESTAMP NULL,
    ended_at TIMESTAMP NULL,
    start_station_name VARCHAR(200) NULL,
    start_station_id VARCHAR(200) NULL,
    end_station_name VARCHAR(200) NULL,
    end_station_id VARCHAR(200) NULL,
    start_lat FLOAT NULL,
    start_lng FLOAT NULL,
    end_lat FLOAT NULL,
    end_lng FLOAT NULL,
    member_casual VARCHAR(200) NULL
    );

CREATE TABLE trip202203(
    ride_id VARCHAR(200) NULL,
    rideable_Type VARCHAR(200) NULL,
    started_at TIMESTAMP NULL,
    ended_at TIMESTAMP NULL,
    start_station_name VARCHAR(200) NULL,
    start_station_id VARCHAR(200) NULL,
    end_station_name VARCHAR(200) NULL,
    end_station_id VARCHAR(200) NULL,
    start_lat FLOAT NULL,
    start_lng FLOAT NULL,
    end_lat FLOAT NULL,
    end_lng FLOAT NULL,
    member_casual VARCHAR(200) NULL
    );

CREATE TABLE trip202204(
    ride_id VARCHAR(200) NULL,
    rideable_Type VARCHAR(200) NULL,
    started_at TIMESTAMP NULL,
    ended_at TIMESTAMP NULL,
    start_station_name VARCHAR(200) NULL,
    start_station_id VARCHAR(200) NULL,
    end_station_name VARCHAR(200) NULL,
    end_station_id VARCHAR(200) NULL,
    start_lat FLOAT NULL,
    start_lng FLOAT NULL,
    end_lat FLOAT NULL,
    end_lng FLOAT NULL,
    member_casual VARCHAR(200) NULL
    );

CREATE TABLE trip202205(
    ride_id VARCHAR(200) NULL,
    rideable_Type VARCHAR(200) NULL,
    started_at TIMESTAMP NULL,
    ended_at TIMESTAMP NULL,
    start_station_name VARCHAR(200) NULL,
    start_station_id VARCHAR(200) NULL,
    end_station_name VARCHAR(200) NULL,
    end_station_id VARCHAR(200) NULL,
    start_lat FLOAT NULL,
    start_lng FLOAT NULL,
    end_lat FLOAT NULL,
    end_lng FLOAT NULL,
    member_casual VARCHAR(200) NULL
    );

CREATE TABLE trip202206(
    ride_id VARCHAR(200) NULL,
    rideable_Type VARCHAR(200) NULL,
    started_at TIMESTAMP NULL,
    ended_at TIMESTAMP NULL,
    start_station_name VARCHAR(200) NULL,
    start_station_id VARCHAR(200) NULL,
    end_station_name VARCHAR(200) NULL,
    end_station_id VARCHAR(200) NULL,
    start_lat FLOAT NULL,
    start_lng FLOAT NULL,
    end_lat FLOAT NULL,
    end_lng FLOAT NULL,
    member_casual VARCHAR(200) NULL
    );

CREATE TABLE trip202207(
    ride_id VARCHAR(200) NULL,
    rideable_Type VARCHAR(200) NULL,
    started_at TIMESTAMP NULL,
    ended_at TIMESTAMP NULL,
    start_station_name VARCHAR(200) NULL,
    start_station_id VARCHAR(200) NULL,
    end_station_name VARCHAR(200) NULL,
    end_station_id VARCHAR(200) NULL,
    start_lat FLOAT NULL,
    start_lng FLOAT NULL,
    end_lat FLOAT NULL,
    end_lng FLOAT NULL,
    member_casual VARCHAR(200) NULL
    );

CREATE TABLE trip202208(
    ride_id VARCHAR(200) NULL,
    rideable_Type VARCHAR(200) NULL,
    started_at TIMESTAMP NULL,
    ended_at TIMESTAMP NULL,
    start_station_name VARCHAR(200) NULL,
    start_station_id VARCHAR(200) NULL,
    end_station_name VARCHAR(200) NULL,
    end_station_id VARCHAR(200) NULL,
    start_lat FLOAT NULL,
    start_lng FLOAT NULL,
    end_lat FLOAT NULL,
    end_lng FLOAT NULL,
    member_casual VARCHAR(200) NULL
    );

CREATE TABLE trip202209(
    ride_id VARCHAR(200) NULL,
    rideable_Type VARCHAR(200) NULL,
    started_at TIMESTAMP NULL,
    ended_at TIMESTAMP NULL,
    start_station_name VARCHAR(200) NULL,
    start_station_id VARCHAR(200) NULL,
    end_station_name VARCHAR(200) NULL,
    end_station_id VARCHAR(200) NULL,
    start_lat FLOAT NULL,
    start_lng FLOAT NULL,
    end_lat FLOAT NULL,
    end_lng FLOAT NULL,
    member_casual VARCHAR(200) NULL
    );

CREATE TABLE trip202210(
    ride_id VARCHAR(200) NULL,
    rideable_Type VARCHAR(200) NULL,
    started_at TIMESTAMP NULL,
    ended_at TIMESTAMP NULL,
    start_station_name VARCHAR(200) NULL,
    start_station_id VARCHAR(200) NULL,
    end_station_name VARCHAR(200) NULL,
    end_station_id VARCHAR(200) NULL,
    start_lat FLOAT NULL,
    start_lng FLOAT NULL,
    end_lat FLOAT NULL,
    end_lng FLOAT NULL,
    member_casual VARCHAR(200) NULL
    );
/* Next, we import our csv files using the LOAD DATA INFILE 
NOTE: replace the data file with the approriate file name for the succeeding csv files
*/
LOAD DATA LOCAL INFILE '202111-divvy-tripdata.csv'
INTO TABLE test1.test_cyclistic
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES

/* After importing the csv files and creating the individual tables, it's time to combine them into one table */
CREATE TABLE trip_one_year AS (
	SELECT *
    FROM trip202111
    UNION ALL
    SELECT *
    FROM trip202112
    UNION ALL
	SELECT *
    FROM trip202201
    UNION ALL
	SELECT *
    FROM trip202202
    UNION ALL
	SELECT *
    FROM trip202203
    UNION ALL
	SELECT *
    FROM trip202204
    UNION ALL
	SELECT *
    FROM trip202205
    UNION ALL
	SELECT *
    FROM trip202206
    UNION ALL
	SELECT *
    FROM trip202207
    UNION ALL
    SELECT *
    FROM trip202208
    UNION ALL
    SELECT *
    FROM trip202209
    UNION ALL
    SELECT *
    FROM trip202210
    );


