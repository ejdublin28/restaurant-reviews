DROP TABLE IF EXISTS merged_restaurants;

-- create table to import data
CREATE TABLE merged_restaurants (
	extra INT,
	inspection_no INT,
	dba_name VARCHAR,
	aka_name VARCHAR,
	license_no DEC,
	facility_type VARCHAR,
	risk VARCHAR,
	address VARCHAR,
	city VARCHAR,
	state VARCHAR,
	zip VARCHAR,
	inspection_date DATE,
	inspection_type VARCHAR,
	results VARCHAR,
	violations VARCHAR,
	latitude DEC,
	longitude DEC,
	location VARCHAR,
	rating DEC, 
	business_status VARCHAR
);

-- import table from merged_restaurants.csv

-- view the table
SELECT * FROM merged_restaurants;


-- QUERIES
-- list the restaurants that were inspected in 2021
SELECT aka_name, risk, address, results, violations, rating
FROM merged_restaurants
WHERE inspection_date BETWEEN '1-1-2021' AND '12-31-2021';

