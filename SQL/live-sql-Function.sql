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
-- SELECT CUST_STATE_PROVINCE,
-- AVG(CUST_CREDIT_LIMIT) AS AVG_CREADT
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_STATE_PROVINCE
-- ORDER BY AVG_CREADT DESC
-- FETCH FIRST 3 ROWS ONLY

--6) Find the country with the maximum total customer credit limit.

-- SELECT COUNTRY_ID,CUST_ID,
-- SUM(CUST_CREDIT_LIMIT) TOTAL_MAX
-- FROM SH.CUSTOMERS
-- GROUP BY COUNTRY_ID,CUST_ID
-- ORDER BY TOTAL_MAX DESC
-- FETCH FIRST 1 ROW ONLY


-- 7)Show the number of customers whose credit limit exceeds their state average.
-- WITH STSTE_AVG AS (
-- SELECT CUST_STATE_PROVINCE,
-- AVG(CUST_CREDIT_LIMIT) AS AVG_CREADT
-- FROM SH.CUSTOMERS
-- GROUP BY CUST_STATE_PROVINCE
-- )
-- SELECT COUNT(*) CUST_STATE_PROVINCE
-- FROM SH.CUSTOMERS
-- WHERE CUST_CREDIT_LIMIT > STSTE_AVG

-- 8)Calculate total and average credit limit for customers born after 1980.

-- 9)Find states having more than 50 customers.
-- 10)List countries where the average credit limit is higher than the global average.
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