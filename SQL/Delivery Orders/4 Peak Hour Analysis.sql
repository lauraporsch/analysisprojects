# PEAK HOUR ANALYSIS
# What is the busiest time of the day for orders?

USE delivery_orders;

# Number of orders per hour
SELECT HOUR(Order_Date) AS hour, COUNT(Order_ID) AS number_orders
FROM orders_by_restaurants
GROUP BY hour
ORDER BY number_orders;
# least orders from 10-11 pm (15)
# peak hour 2-3 pm (99)
# fluctuating order amount throughout the day

# Average number of orders per hour
WITH hourly_orders AS (
	SELECT HOUR(Order_Date) AS hour, COUNT(Order_ID) AS number_orders
    FROM orders_by_restaurants
    GROUP BY hour
    )
SELECT AVG(number_orders)
FROM hourly_orders;

# Hours above average number of orders
WITH hourly_orders AS (
	SELECT HOUR(Order_Date) AS hour, COUNT(Order_ID) AS number_orders
    FROM orders_by_restaurants
    GROUP BY hour
    )
SELECT hour, number_orders 
FROM hourly_orders
WHERE number_orders > 
	(
    SELECT AVG(number_orders)
	FROM hourly_orders
    )
ORDER BY hour;
# The last hour of the day (11 pm -12 am) is above average, which is interesting, considering that the hour before (10-11 pm) has the least orders

# Hours below average number of orders
WITH hourly_orders AS (
	SELECT HOUR(Order_Date) AS hour, COUNT(Order_ID) AS number_orders
    FROM orders_by_restaurants
    GROUP BY hour
    )
SELECT hour, number_orders 
FROM hourly_orders
WHERE number_orders <
	(
    SELECT AVG(number_orders)
	FROM hourly_orders
    )
ORDER BY hour;
# Time that can be considered "typical meal times" in Canada (12-1 pm and 5-8 pm) are surprisingly below average
# Possible reasons are different "typical meal times" in other cultures, that this data set is purely fictional or that the 1st of January is a special day in terms of food delivery
# To investigate what reasons might cause this pattern, more data is needed

# Is there a difference in the size of orders per hour?
SELECT HOUR(Order_Date) AS hour, AVG(Quantity_of_Items)
FROM orders_by_restaurants
GROUP BY hour
ORDER BY AVG(Quantity_of_Items);

# Ordersize per hour above average
WITH hourly_quantity AS (
	SELECT HOUR(Order_Date) AS hour, AVG(Quantity_of_Items) AS avg_quantity
	FROM orders_by_restaurants
	GROUP BY hour
	)
SELECT hour, avg_quantity
FROM hourly_quantity
WHERE avg_quantity >
	(
    SELECT AVG(avg_quantity)
    FROM hourly_quantity
    )
ORDER BY hour;

# Ordersize per hour below average
WITH hourly_quantity AS (
	SELECT HOUR(Order_Date) AS hour, AVG(Quantity_of_Items) AS avg_quantity
	FROM orders_by_restaurants
	GROUP BY hour
	)
SELECT hour, avg_quantity
FROM hourly_quantity
WHERE avg_quantity <
	(
    SELECT AVG(avg_quantity)
    FROM hourly_quantity
    )
ORDER BY hour;
# 10-11 pm is the hour with the lowest average order size and lowest number of orders
# If this is a typical pattern (more data for more days would be needed), specials for this particular hour could help attract more orders
