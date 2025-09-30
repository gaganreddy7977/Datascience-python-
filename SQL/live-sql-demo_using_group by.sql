---# 25 Questions on GROUP BY and HAVING

-- 26. Count the number of customers in each city.
-- SELECT cust_city ,count(cust_id) total_customer from sh.CUSTOMERS
-- GROUP by CUST_CITY


-- 27. Find cities with more than 100 customers.
-- SELECT cust_city ,count(cust_id) total_customer from sh.CUSTOMERS
-- GROUP by CUST_CITY HAVING count(*)>100


-- 28. Count the number of customers in each state.
-- select cust_state_province ,count(cust_id) total_customer_in_state from sh.customers
-- group by CUST_STATE_PROVINCE

-- 29. Find states with fewer than 50 customers.
-- SELECT cust_state_province, count(cust_id) total_cust_less_50 from sh.CUSTOMERS
-- group by cust_state_province HAVING count(*)<50


-- 30. Calculate the average credit limit of customers in each city.
-- select cust_city , avg(cust_credit_limit) from sh.CUSTOMERS
-- group by CUST_CITY

-- 31. Find cities with average credit limit greater than 8,000.
-- select cust_city ,avg(cust_credit_limit) from sh.CUSTOMERS
-- group by CUST_CITY HAVING avg(CUST_CREDIT_LIMIT)>8000 

-- 32. Count customers by marital status.
-- select cust_marital_status ,count(cust_id) from sh.CUSTOMERS
-- group by CUST_MARITAL_STATUS

-- 33. Find marital statuses with more than 200 customers.
--  select cust_marital_status ,count(cust_id) from sh.CUSTOMERS
--  group by CUST_MARITAL_STATUS HAVING count(*)>200


-- 34. Calculate the average year of birth grouped by gender.
-- select cust_gender, avg(cust_year_of_birth) from sh.CUSTOMERS
-- group by CUST_GENDER

-- 35. Find genders with average year of birth after 1990.
-- select cust_gender ,avg(cust_year_of_birth) from sh.customers
-- group by CUST_GENDER HAVING avg(cust_year_of_birth)>1990

-- 36. Count the number of customers in each country.
-- SELECT country_id ,count(cust_id) total_customers from sh.CUSTOMERS 
-- group by COUNTRY_ID

-- 37. Find countries with more than 1,000 customers.
-- SELECT country_id ,count(cust_id) total_customers from sh.CUSTOMERS 
-- group by COUNTRY_ID having count(*)>1000


-- 38. Calculate the total credit limit per state.
-- SELECT cust_state_province ,sum(cust_credit_limit) total_credit_limit from sh.CUSTOMERS
-- group by CUST_STATE_PROVINCE

-- 39. Find states where the total credit limit exceeds 100,000.
-- SELECT cust_state_province ,sum(cust_credit_limit) total_credit_limit from sh.CUSTOMERS
-- group by CUST_STATE_PROVINCE having sum(CUST_CREDIT_LIMIT)>100000


-- 40. Find the maximum credit limit for each income level.
-- select cust_income_level,MAX(cust_credit_limit) from sh.customers
-- group by cust_income_level

-- 41. Find income levels where the maximum credit limit is greater than 15,000.
-- select cust_income_level,MAX(cust_credit_limit) from sh.customers
-- group by cust_income_level having max(cust_credit_limit)>15000

-- 42. Count customers by year of birth.
-- SELECT cust_year_of_birth,count(cust_id) from sh.CUSTOMERS
-- group by cust_year_of_birth

-- 43. Find years of birth with more than 50 customers.
-- SELECT cust_year_of_birth,count(cust_id) from sh.CUSTOMERS
-- group by cust_year_of_birth having count(*)>50 

-- 44. Calculate the average credit limit per marital status.
--  select cust_marital_status,avg(cust_credit_limit) from sh.CUSTOMERS
--  group by CUST_MARITAL_STATUS


-- 45. Find marital statuses with average credit limit less than 5,000.
--  select cust_marital_status,avg(cust_credit_limit) from sh.CUSTOMERS
--  group by CUST_MARITAL_STATUS having avg(cust_credit_limit)<5000

-- 46. Count the number of customers by email domain (e.g., `company.example.com`).
-- SELECT cust_email,count(cust_id) from sh.customers
-- group by CUST_EMAIL

-- 47. Find email domains with more than 300 customers.
-- SELECT cust_email,count(cust_id) from sh.customers
-- group by CUST_EMAIL having count(*)>300

-- 48. Calculate the average credit limit by validity (`CUST_VALID`).
-- select CUST_VALID ,avg(cust_credit_limit) from sh.CUSTOMERS
-- group by CUST_VALID

-- 49. Find validity groups where the average credit limit is greater than 7,000.
-- select CUST_VALID ,avg(cust_credit_limit) from sh.CUSTOMERS
-- group by CUST_VALID having avg(cust_credit_limit)>7000

-- 50. Count the number of customers per state and 
--city combination where there are more than 50 customers.
 SELECT cust_state_province,CUST_CITY,count(cust_id)  from sh.CUSTOMERS
 group by  CUST_STATE_PROVINCE,CUST_CITY HAVING count(cust_id)>50