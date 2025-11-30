<img width="1283" height="718" alt="image" src="https://github.com/user-attachments/assets/f4bef073-d42a-4d44-b86e-ef4f2a35234c" />


<h1>About this project</h1>
<p>This project is an interactive Power BI dashboard built to analyze restaurant sales revenue. The dashboard provides insights into category sales distribution, meal-period trends, top- and bottom- performing menu items, and weekday/hourly sales patterns. I performed all steps from Data Cleaning and Manipulation over Data Modeling to the final Visualizations and Analysis within PowerBI.</p>
<p>The goal is to turn raw sales data into actionable insights, helping Restaurant Operations Managers and Marketing Teams make data-driven decisions for menu optimization, promotions/specials, and opening times.</p>
<p>The Core Questions Behind This Project</p>
<ul>
<li>Which menu items and categories drive the most revenue?</li>
<li>What are the peak hours and weekdays for orders?</li>
<li>How do meal periods (lunch, afternoon, dinner, late night) contribute to overall sales?</li>
<li>Are there items that could be taken off the menu as they are underperforming?</li>
<li>Could there be advantages to in opening/closing earlier/later?</li>
<li>Which days/items/categories could use a special promotion to promote sales?</li>
</ul>
<h2>Main Takeaways</h2>
<p><strong>Categories</strong>: Asian and Italian menu items are the biggest revenue and order driver</p>
<p><strong>Menu items</strong>: 5 out of the 10 worst performing food items (by revenue and quantity) are Mexican items.</p>
<p><strong>Meal periods</strong>: Lunch, closely followed by dinner generates the biggest part of the revenue</p>
<p><strong>Weekdays</strong>: Lunch on Tuesday and Wednesday is performing lower than other days</p>
<p><strong>Opening Closing / Times</strong>: Very low sales in first and last hour of the day</p>
<h2>Recommended Actions</h2>
<ul>
<li>Use special promotions on low performing days to drive revenue:
<ul>
<li>Lunch Special on Tuesday and Wednesday</li>
<li>Happy Hour in Afternoon, especially 2 pm to 4 pm</li>
<li>Happy Hour at Late Night (or consider closing earlier to save on labour costs)</li>
<li>Use Asian and Italian items for specials to drive even more revenue</li>
<li>Use best-selling items for server recommendations and under &ldquo;Most popular&rdquo; section on menu or special boards</li>
</ul>
</li>
<li>Adjust opening/closing times:
<ul>
<li>Open an hour later (11 am)</li>
<li>Closing time: either close early (10pm) to save on labour, or use late night happy hour to drive more sales</li>
</ul>
</li>
</ul>
<p><strong>Next steps</strong></p>
<p>As a next step I would add the costs per menu items, prep times and labour costs to recommend more specific actions regarding single menu items and staffing.</p>
<p>&nbsp;</p>
<h2>Tools Used</h2>
<p>Power BI Desktop &ndash; for building the interactive dashboard</p>
<p>DAX &ndash; to create measures and calculated fields</p>
<p>Power Query &ndash; for data cleaning, transformation, and modeling</p>
<p>CSV &ndash; source data for orders and menu items</p>
<p>&nbsp;</p>
<h2><strong>Project Walkthrough</strong></h2>
<p>I imported the sales and menu data from CSV files and used Power Query to check for duplicates, remove missing values and transform data types. I then created the relationship between the two tables. Next, I used DAX to create several new key measures, including Total Revenue and to add several new columns to the table, including the categorization in meal periods. I first created the Overview, planning this to be the only page of my dashboard. Upon analyzing the data through the use of different slicers, I realized that I need to dive deeper, so I added the pages &ldquo;Menu Items&rdquo; and &ldquo;Meal Periods and Weekdays&rdquo;. The dashboard allowed me to analyze the data from different angles and give recommendations, as well as an interactive tool to the Restaurant Operations Manager and Marketing Team.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
