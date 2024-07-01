USE delivery_orders;

#  EXPLORATORY DATA ANALYSIS
# Amount of Restaurants
SELECT COUNT(RestaurantID)
FROM restaurants;

# Different Cuisines
SELECT DISTINCT Cuisine
FROM restaurants;

# Restaurants per Cuisine
SELECT DISTINCT Cuisine, COUNT(RestaurantID) AS Count_Restaurants
FROM restaurants
GROUP BY Cuisine
ORDER BY Count_Restaurants DESC;
# The majority of Restaurants offer Indian Cuisine, but is Indian also the most popular among customers?

# Total orders
SELECT COUNT(Order_ID) 
FROM orders;

# Average order size, order amount, delivery time, rating
SELECT ROUND(AVG(Quantity_of_Items),2) AS avg_order_size,
ROUND(AVG(Order_Amount),2) AS avg_order_amount,
ROUND(AVG(Delivery_Time_Taken_mins),2) AS avg_delivery_time,
ROUND(AVG(Customer_Rating_Food),2) AS avg_rating_food, 
ROUND(AVG(Customer_Rating_Delivery),2) AS avg_rating_delivery
FROM orders;

# Join tables on Restaurant_ID
CREATE TABLE orders_by_restaurants
SELECT * FROM orders LEFT JOIN restaurants
  ON orders.Restaurant_ID = restaurants.RestaurantID
  
UNION

SELECT * FROM orders RIGHT JOIN restaurants
  ON orders.Restaurant_ID = restaurants.RestaurantID;

# Amount of orders by restaurant
SELECT RestaurantName, Cuisine, COUNT(Order_ID) AS total_orders
FROM orders_by_restaurants
GROUP BY RestaurantName, Cuisine
ORDER BY total_orders DESC;
# The top restaurant by total orders are The Cave Hotel and Ellora (32 orders)
# Least total orders for Vrinda Bhavan (16 orders)

# Amount of orders by cuisine
SELECT Cuisine, COUNT(Order_ID) AS total_orders
FROM orders_by_restaurants
GROUP BY Cuisine
ORDER BY total_orders DESC;
# Chinese and North Indian are the top cusinies with 81 total orders each
# Indian food is popular in general (North: 81 total orders, South: 70 total orders)

# Highest and lowest rated order food
SELECT Order_ID, RestaurantName, Cuisine, Quantity_of_Items, Order_Amount, Delivery_Time_Taken_mins, Customer_Rating_Food
FROM orders_by_restaurants
WHERE Customer_Rating_Food = 
	(SELECT MAX(Customer_Rating_Food) 
    FROM orders_by_restaurants)
OR
Customer_Rating_Food = 
	(SELECT MIN(Customer_Rating_Food) 
    FROM orders_by_restaurants);
# On a first look, delivery time doesn't seem to affect food rating, however the order amounts look higher for the lower rated food     
    
# Highest and lowest rated order delivery
SELECT Order_ID, RestaurantName, Cuisine, Quantity_of_Items, Order_Amount, Delivery_Time_Taken_mins, Customer_Rating_Delivery
FROM orders_by_restaurants
WHERE Customer_Rating_Delivery = 
	(SELECT MAX(Customer_Rating_Delivery) 
    FROM orders_by_restaurants)
OR
Customer_Rating_Delivery = 
	(SELECT MIN(Customer_Rating_Delivery) 
    FROM orders_by_restaurants);

# Average rating by restaurant
SELECT RestaurantName, Cuisine, 
ROUND(AVG(Customer_Rating_Food),2) AS avg_rating_food, 
ROUND(AVG(Customer_Rating_Delivery),2) AS avg_rating_delivery 
FROM orders_by_restaurants
GROUP BY RestaurantName, Cuisine;
# Highest rating restaurant by food: Vrinda Bhavan (3.94)
# Lowest rating restaurant by food: Win Hotel (2.93)
# Highest rating restaurant by delivery: The Cave Hotel (3.50)
# Lowest rating restaurant by delivery: Denver Restaurant (2.48)

# Average rating by Cuisine
SELECT Cuisine, 
ROUND(AVG(Customer_Rating_Food),2) AS avg_rating_food, 
ROUND(AVG(Customer_Rating_Delivery),2) AS avg_rating_delivery 
FROM orders_by_restaurants
GROUP BY Cuisine;
# Highest rating cuisine by food: North Indian (3.59)
# Lowest rating cuisine by food: South Indian (3.21)
# Highest rating cuisine by delivery: South Indian (3.29)
# Lowest rating cuisine by delivery: Belgian (3.25)
# Unlikely that cuisine has an influence on delivery
# Highest and lowest rating are close for food and delivery, likely because cuisine itself is not a driving factor, but the way the restaurant prepares the food