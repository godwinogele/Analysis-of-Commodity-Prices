-- Retrieve all records from the price History of Commodities table
SELECT*
FROM Price_History_of_Commodities

-- Find rows where the price is NULL
SELECT*
FROM Price_History_of_Commodities
WHERE Paddy_Rice IS NULL
OR Soy_Bean IS NULL
OR Maize IS NULL;

-- Calculate the average price for each commodity
SELECT 
    AVG(Paddy_Rice) AS Avg_Paddy_Rice, 
    AVG(Soy_Bean) AS Avg_Soy_Bean, 
    AVG(Maize) AS Avg_Maize
FROM Price_History_of_Commodities

-- Calculate average prices per month for each commodity
SELECT 
    FORMAT(date, 'yyyy-MM') AS Month,
    AVG(Paddy_Rice) AS Avg_Paddy_Rice, 
    AVG(Soy_Bean) AS Avg_Soy_Bean, 
    AVG(Maize) AS Avg_Maize
FROM Price_History_of_Commodities
GROUP BY FORMAT(date, 'yyyy-MM')
ORDER BY FORMAT(date, 'yyyy-MM');
