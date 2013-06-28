-- Create database.
DROP DATABASE IF EXISTS financedata;
CREATE DATABASE financedata;

-- Create salary_inforamtion table.
USE financedata;
DROP TABLE IF EXISTS report_data;


CREATE TABLE report_data (

	FilerName VARCHAR(90),
	Year CHAR(4),
	Cycle CHAR(1),	
	DocType	VARCHAR(255),
	EntityName VARCHAR(255),
	EntityAddressLine1 VARCHAR(90),
	EntityAddressLine2 VARCHAR(90),	
	EntityCity VARCHAR(50),
	EntityState VARCHAR(20),
	EntityZip VARCHAR(10),
	Occupation VARCHAR(255),
	EmployerName VARCHAR(255),	
	EmployerAddressLine1 VARCHAR(90),
	EmployerAddressLine2 VARCHAR(90),
	EmployerCity VARCHAR(50),
	EmployerState VARCHAR(20),
	EmployerZip	VARCHAR(10),
	ContributionDate CHAR(10), 
	Amount FLOAT,
	Description VARCHAR(255),	
	Amended VARCHAR(255),
	SubDate	CHAR(10),
	FiledBy VARCHAR(255)
);

-- Load data into table.
LOAD DATA INFILE '/tmp/Campaign-Finance-Data.csv' INTO TABLE report_data
	FIELDS TERMINATED BY '\t'
	ENCLOSED BY '"' 
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES
	(FilerName,Year,Cycle,DocType,EntityName,EntityAddressLine1,EntityAddressLine2,EntityCity,EntityState,EntityZip,Occupation,EmployerName,EmployerAddressLine1,EmployerAddressLine2,EmployerCity,EmployerState,EmployerZip,ContributionDate,Amount,Description,Amended,SubDate,FiledBy);
