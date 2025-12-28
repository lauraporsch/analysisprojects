<h1>About This Project</h1>
<p>This project explores a small&nbsp;<a href="https://www.kaggle.com/datasets/mohamedharris/restaurant-order-details" target="_blank">Kaggle dataset</a>&nbsp;with delivery orders from an app. Using SQL the analysis focuses on order trends. The analysis helps the managers of the restaurants as well as the drivers to understand what cuisines and times are especially popular, so staff schedules can be adjusted accordingly. Good "fake" restaurants datasets are hard to come by, this dataset only has the order information for one day. In real-life this wouldn't be anywhere close to enough data for a real analysis, as this project was mainly to practice my SQL skills (before I found my current role, where I use SQL on a daily basis), I decided to use it anyway.</p>
<h2>The Core Questions Behind This Project</h2>
<ul>
<li>Which restaurants and cusines are the most popular?</li>
<li>What are the average order sizes, prices, delivery times as well as ratings?</li>
<li>What is the busiest time of the day for food orders?</li>
</ul>
<h2>Main Takeaways</h2>
<ul>
<li>Indian cuisine is popular among customers (especially North Indian cuisine), closely followed by Chinese.</li>
<li>The Cave Hotel and Ellora are the most popular restaurants (by total orders), but Vrinda Bhavan leads with the highest rating for food, while the Cave Hotel has the highest ratings for deliveries.</li>
<li>Delivery Time and choice of Cuisine do not affect food rating, the scores seem to be solemnly based on the actual dishes and not influenced by other factors.</li>
<li>No restaurant has a higher average delivery rating than 3.5 (out of 5).</li>
</ul>
<h2>Tools Used</h2>
<p>MySQL,&nbsp;<a href="https://sqlizer.io/" target="_blank">https://sqlizer.io/</a>&nbsp;(to convert .xlsx files into an SQL script)</p>
<h2>Project Walkthrough</h2>
<p>As&nbsp;the dataset was only available as Excel file, I used an online Excel to SQL statement converter. After creating the tables, I made myself familiar with the dataset. I then joined the two&nbsp;tables "restaurants" and "orders" to create the table "orders_by_restaurant" to make it easier to query. I then queried the dataset in regards to amount of orders and ratings, to understand the popularity of cusinies and restaurants. Following that, I looked at the hourly distribution of orders, to see if there are any trends hidden. Then I analysed the customer satisfaction, based on both: the food ratings and the delivery ratings.</p>
