USE delivery_orders;

# CUSTOMER SATISFACTION
# Average Delivery Time and Rating Total
SELECT AVG(Delivery_Time_Taken_mins), AVG(Customer_Rating_Delivery)
FROM orders_by_restaurants;
# Average Delivery Time 30.54 minutes
# Average Delivery Rating 2.99

SELECT MAX(Delivery_Time_Taken_mins), MAX(Customer_Rating_Delivery)
FROM orders_by_restaurants;
# Max Delivery Time 50 minutes
# Max Delivery Rating 5

# Average Delivery Time and Rating by Restaurant
SELECT RestaurantName, 
	AVG(Delivery_Time_Taken_mins) AS avg_delivery_time,
    AVG(Customer_Rating_Delivery) AS avg_delivery_rating
FROM orders_by_restaurants
GROUP BY RestaurantName;
# No restaurant has a higher average delivery rating than 3.5
# The Cave Hotel has the shortest average delivery time (26.03 minutes) as well as the highest average delivery rating (3.5)
# However the highest average delivery time (Ruchi 33.61 minutes) is rated higher (3.00) than the lowest average delivery rating (Denver Restaurant 2.48)
# Calculation of correlation (e.g. with Python) recommended

# Average food rating by restaurant
SELECT RestaurantName, Cuisine, AVG(Customer_Rating_Food)
FROM orders_by_restaurants
GROUP BY RestaurantName, Cuisine;
# Highest rating restaurant by food: Vrinda Bhavan (3.94)
# Lowest rating restaurant by food: Win Hotel (2.93)
# Can we find a reason for the two restaurants being rated highest and lowest?

SELECT RestaurantName, Cuisine, COUNT(Order_ID), AVG(Quantity_of_Items), AVG(Order_Amount), 
	AVG(Delivery_Time_Taken_mins), AVG(Customer_Rating_Food), AVG(Customer_Rating_Delivery), Zone, Category
FROM orders_by_restaurants
GROUP BY RestaurantName, Cuisine, Zone, Category
HAVING RestaurantName = "Vrinda Bhavan" OR RestaurantName = "Win Hotel";
# Zone and Category are the same for both restaurants
# Win Hotel had 11 orders more than Vrinda Bhavan (27 vs. 16) but only significantly less average quantity of items
# higher volumes could explain lower food ratings as there is less time to prepare per order, but more data and analysis would be needed

# Did the Restaurants receive the orders distributed evenly throughtout the day?
SELECT RestaurantName,  HOUR(Order_Date) AS hour, COUNT(Order_ID) AS number_orders
FROM orders_by_restaurants
GROUP BY RestaurantName, hour
HAVING RestaurantName = "Vrinda Bhavan" OR RestaurantName = "Win Hotel"
ORDER BY RestaurantName, hour;
# While the maximum order per hour is 5 for Vrinda Bhavan, Win Hotel had a peak of 10 orders in the hour from 2 to 3 pm
# Did this have an impact on the food rating?

SELECT RestaurantName,  HOUR(Order_Date) AS hour, COUNT(Order_ID) AS number_orders, AVG(Customer_Rating_Food)
FROM orders_by_restaurants
GROUP BY RestaurantName, hour
HAVING RestaurantName = "Win Hotel"
ORDER BY hour;
# The busiest hour was the hour with the highest food rating, which suggests that the volume of orders was not the reason for the low average food rating

SELECT RestaurantName, MAX(Customer_Rating_Food), MIN(Customer_Rating_Food)
FROM orders_by_restaurants
WHERE RestaurantName = "Win Hotel";

SELECT RestaurantName, COUNT(Order_ID)
FROM orders_by_restaurants
WHERE RestaurantName = "Win Hotel" AND 
	Customer_Rating_Food = 5;
# Out of 27 total orders, Win Hotel only reached a rating of 5 (the highest possible) 4 times (= 18.52%)

SELECT RestaurantName, COUNT(Order_ID)
FROM orders_by_restaurants
WHERE RestaurantName = "Vrinda Bhavan" AND 
	Customer_Rating_Food = 5;
# Vrinda Bhavan reached the top rating for 31.25%  (5 out of 16) of orders

SELECT RestaurantName, COUNT(Order_ID)
FROM orders_by_restaurants
WHERE RestaurantName = "Win Hotel" AND 
	Customer_Rating_Food = 1;
    
SELECT RestaurantName, COUNT(Order_ID)
FROM orders_by_restaurants
WHERE RestaurantName = "Vrinda Bhavan" AND 
	Customer_Rating_Food = 1;
# Win Hotel received lowest rating as often as highest (4 out of 27 or 18.52%)
# Vrinda Bhavan only received the lowest rating 1 out of 16 times (6.25%)

SELECT RestaurantName, Order_ID, Customer_Name, HOUR(Order_Date), Quantity_of_Items, Order_Amount, 
	Payment_Mode, Customer_Rating_Food, Customer_Rating_Delivery
FROM orders_by_restaurants
WHERE RestaurantName = "Win Hotel" AND 
	Customer_Rating_Food = 1;
# The lowest rated food orders for Win Hotel are spread out over the day and do not seem to have a common factor
# With the data available it is impossible to tell what the reasons are for the low food ratings
# Data about scheduling (e.g. number of cooks), ordered items and order quality (e.g. missing items, non-available items) would help to answer this question


SELECT RestaurantName, Customer_Rating_Food, AVG(Order_Amount)
FROM orders_by_restaurants
GROUP BY RestaurantName, Customer_Rating_Food
HAVING  RestaurantName = "Win Hotel" OR RestaurantName = "Vrinda Bhavan"
ORDER BY RestaurantName;
# For both restaurants the lowest rated orders are more expensive than the highest 
# Calculation of correlation (e.g. with Python) recommended

SELECT RestaurantName, Order_ID, Customer_Name, (Order_Amount/Quantity_of_Items) AS avg_price_per_item, Customer_Rating_Food
FROM orders_by_restaurants
WHERE Customer_Rating_Food = 1 OR 
    Customer_Rating_Food = 5
ORDER BY avg_price_per_item;


SELECT RestaurantName, Order_ID, Customer_Name, (Order_Amount/Quantity_of_Items) AS avg_price_per_item, Customer_Rating_Food
FROM orders_by_restaurants
ORDER BY avg_price_per_item;
# Lowest food rating starts with 87.80 average item price    
# This suggests that up to a certain average price per item, the food rating might be influenced by the price
# Again, calculation of correlation (e.g. with Python) recommended