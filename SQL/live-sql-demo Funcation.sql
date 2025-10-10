-----Aggregation & Grouping-------
-- 1)Find the total, average, minimum, and maximum credit limit of all customers.

-- SELECT CUST_FIRST_NAME,
-- SUM(CUST_CREDIT_LIMIT) CREDIT_TOTAL,
-- AVG(CUST_CREDIT_LIMIT) CREDIT_AVG,
-- MIN(CUST_CREDIT_LIMIT) CREDIT_MIN,
-- MAX(CUST_CREDIT_LIMIT)  CREDIT_MAX
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_FIRST_NAME

-- 2)Count the number of customers in each income level.
-- SELECT CUST_INCOME_LEVEL,COUNT(CUST_ID) IN_EACH_LEVEL
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_INCOME_LEVEL

-- 3)Show total credit limit by state and country.
-- SELECT
-- CUST_STATE_PROVINCE,
-- COUNTRY_ID,
-- SUM(CUST_CREDIT_LIMIT) TOTAL_CREDIT 
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_STATE_PROVINCE,COUNTRY_ID

-- 4)Display average credit limit for each marital status and gender combination.
-- SELECT CUST_GENDER,CUST_MARITAL_STATUS,AVG(CUST_CREDIT_LIMIT) CREDIT_AVG
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_GENDER,CUST_MARITAL_STATUS

-- 5)Find the top 3 states with the highest average credit limit.
-- WITH TOTAL AS (
--     SELECT CUST_STATE_PROVINCE,
--     AVG(CUST_CREDIT_LIMIT) AS AVG_CREADT,
--     ROW_NUMBER() OVER (ORDER BY AVG(CUST_CREDIT_LIMIT) DESC) AS RN
--     FROM SH.CUSTOMERS
--     GROUP BY CUST_STATE_PROVINCE
-- )
-- SELECT 
-- CUST_STATE_PROVINCE,AVG_CREADT
-- FROM TOTAL
-- WHERE RN<=3

--6) Find the country with the maximum total customer credit limit.
-- WITH TOTAL AS (
--     SELECT COUNTRY_ID,
--     SUM(CUST_CREDIT_LIMIT) AS TOTAL_CUST,
--     ROW_NUMBER() OVER (ORDER BY SUM(CUST_CREDIT_LIMIT) DESC) AS RN
--     FROM SH.CUSTOMERS
--     GROUP BY COUNTRY_ID
-- )
-- SELECT COUNTRY_ID,TOTAL_CUST
-- FROM TOTAL
-- WHERE RN=1


-- 7)Show the number of customers whose credit limit exceeds their state average.
-- WITH STATE_AVG AS (
--     SELECT CUST_ID,CUST_STATE_PROVINCE,
--     AVG(CUST_CREDIT_LIMIT) AS AVG_CREADT,
--     ROW_NUMBER() OVER (ORDER BY AVG(CUST_CREDIT_LIMIT) DESC) RN
--     FROM SH.CUSTOMERS                                  ###################
--     GROUP BY CUST_ID,CUST_STATE_PROVINCE
-- )
-- SELECT CUST_ID,CUST_STATE_PROVINCE
-- FROM STATE_AVG
-- COUNT()


-- 8)Calculate total and average credit limit for customers born after 1980.
-- WITH TOTAL_AVG AS (
--     SELECT CUST_FIRST_NAME,CUST_YEAR_OF_BIRTH,
--     AVG(CUST_CREDIT_LIMIT) AS AVG_CREADT, SUM(CUST_CREDIT_LIMIT) AS TOTAL_CREADT,
--     ROW_NUMBER() OVER (ORDER BY AVG(CUST_YEAR_OF_BIRTH) DESC) AS BIRTH
--     FROM SH.CUSTOMERS
--     GROUP BY CUST_FIRST_NAME,CUST_YEAR_OF_BIRTH
-- )
-- SELECT CUST_FIRST_NAME,CUST_YEAR_OF_BIRTH,AVG_CREADT,TOTAL_CREADT
--     FROM TOTAL_AVG
--     WHERE BIRTH>1980

-- 9)Find states having more than 50 customers.
-- WITH TOTAL_CUST AS(
-- SELECT CUST_STATE_PROVINCE,COUNT(CUST_ID) AS COUNT_CUST,
-- ROW_NUMBER() OVER (ORDER BY COUNT(CUST_ID)) ORDER_CUST
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_STATE_PROVINCE
-- )
-- SELECT CUST_STATE_PROVINCE,COUNT_CUST
-- FROM TOTAL_CUST
-- WHERE COUNT_CUST>50

-- 10)List countries where the average credit limit is higher than the global average.
-- WITH COUNTRY_AVG AS (
--     SELECT COUNTRY_ID,AVG(CUST_CREDIT_LIMIT) AVG_COUNTRY,
--     ROW_NUMBER() OVER (ORDER BY AVG(CUST_CREDIT_LIMIT) DESC) COLO_CREDIT
-- FROM SH.CUSTOMERS
-- GROUP BY COUNTRY_ID
-- ),GLOBAL_AVG AS (
--     SELECT AVG(CUST_CREDIT_LIMIT) AVG_GLOBAL
--     FROM SH.CUSTOMERS
-- )
-- SELECT COUNTRY_ID,AVG_COUNTRY,AVG_GLOBAL
-- FROM COUNTRY_AVG,GLOBAL_AVG
-- WHERE AVG_COUNTRY >AVG_GLOBAL

-- 11)Calculate the variance and standard deviation of customer credit limits by country.
-- 12)Find the state with the smallest range (max–min) in credit limits.
-- 13)Show the total number of customers per income level and the percentage contribution of each.
-- 14)For each income level, find how many customers have NULL credit limits.
-- 15)Display countries where the sum of credit limits exceeds 10 million.
-- 16)Find the state that contributes the highest total credit limit to its country.
-- 17)Show total credit limit per year of birth, sorted by total descending.
-- 18)Identify customers who hold the maximum credit limit in their respective country.
-- 19)Show the difference between maximum and average credit limit per country.
-- 20)Display the overall rank of each state based on its total credit limit (using GROUP BY + analytic rank).