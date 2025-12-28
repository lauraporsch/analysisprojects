<h1>About This Project</h1>
<p>This project analyses e-commerce user behaviour and sales performance using SQL to understand how user activity translates into purchases. The analysis focuses on user engagement metrics such as sessions, time spent, product interactions, conversion rates, and total spend.</p>
<p>I performed the full analytical workflow in SQL, including data exploration, metric definition, data modeling, and behavioral analysis. The goal was to move beyond surface-level metrics and identify patterns that help to understand why users might leave the e-commerce website without buying anything.</p>
<p >The insights from this project are designed to support Product, Marketing, and Growth teams in improving conversion strategies, retention efforts, and revenue optimization.</p>

<h2>The Core Questions Behind This Project</h2>
<ul>
<li>How does user engagement relate to purchases and revenue?</li>
<li>What user behavior is more likely to lead to a purchase?</li>
<li>What user behavior is more likely to lead to drop-offs without purchase?</li>
<li>When do users drop off?</li>
</ul>

<h2>Main Takeaways</h2>
<ul>
<li>Drop-offs after checkout are not explained by session length, cart size, or number of events, suggesting potential friction in the checkout process.</li>
<li>The majority of users are low and occasional buyers. They add products to their carts but don't buy them.</li>
<li>Conversion rate per session does not automatically increase with more sessions. Higher session counts correlate with more products purchased and higher total revenue, but not with higher per-session conversion rates.</li>
</ul>

<h2>Recommended Actions</h2>
<ul>
<li>Investigate checkout friction (UX issues? Maybe A/B testing for different checkout versions)</li>
<li>Review products with high drop off rates (price competitiveness, user reviews, product information, etc.)</li>
<li>Encourage purchase completion (reminder emails that products are checked out but not purchased)</li>
<li>Targeted marketing campaigns for low and occasional buyers specifically</li>
<li>Analyze browsing path (deep-dive into browsing paths to find pain and friction points that might stop these users from making a purchase)</li>
<li>Maximize per-session conversion (personalized recommendations, limited-time discount,s etc.)</li>
<li>Marketing campaigns to encourage users to come back (personalized recommendations, discounts, etc.)</li>
</ul>

<h2>Tools Used</h2>
<ul>
<li>SQL &ndash; data exploration, data modeling, and behavioral analysis</li>
<li>Google BigQuery &ndash; querying and processing clickstream datasets</li>
<li>Google Colab &ndash; project documentation and analytical walkthrough</li>
</ul>

<h2>Project Walkthrough</h2>
<p>I used a modified version of the events table, belonging to the Kaggle dataset <a href="https://www.kaggle.com/datasets/wafaaelhusseini/e-commerce-transactions-clickstream?select=sessions.csv">E-commerce Transactions + Clickstream</a>. I first developed a project plan, documenting my main business questions and what metrics I will need to answer those. Based on the questions and metrics, I modeled two more tables to make the later querying easier. The notebook "Clickstream SQL Project_data_modeling.ipynb" contains my initial data exploration as well as the creation of the tables "sessions" and "users". After a quality check of the newly created tables, I started with the analysis (Clickstream SQL Project_analysis.ipynb). Analyzing the session-based data first, I explored where users drop off, their buying intent (adding products to the cart and checking out), as well as product-level behaviour. I then queried the user table to create different user types and compare the browsing and purchasing behavior to identify patterns.&nbsp;</p>
