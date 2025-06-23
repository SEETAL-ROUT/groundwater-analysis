CREATE DATABASE GroundWaterDB;
USE GroundWaterDB;

CREATE TABLE WaterQuality (
    District VARCHAR(100),
    State VARCHAR(100),
    pH FLOAT,
    SAR FLOAT,
    TH FLOAT,
    Classification VARCHAR(10)
);

USE groundwaterdb;  -- Make sure you're in the correct schema
SELECT * FROM ground_water3 LIMIT 10;


SELECT 
  AVG(pH) AS avg_pH,
  AVG(SAR) AS avg_SAR,
  AVG(`T.H`) AS avg_TH
FROM ground_water3;

SELECT  district, 
  AVG(SAR) AS avg_SAR 
FROM ground_water3
GROUP BY district;

SELECT pH, SAR FROM ground_water3;

SELECT Classification, COUNT(*) AS count 
FROM ground_water3
GROUP BY Classification;







