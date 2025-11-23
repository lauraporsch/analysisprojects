<h1><strong>About this project</strong></h1>
<p>This project&nbsp;explores housing prices in Boston, Massachusetts in the 1970s. Using real estate data, the project builds a predictive model to estimate property prices based on multiple characteristics such as number of rooms, distance to employment centers, crime rate, school class sizes, and proximity to the Charles River. The analysis includes exploratory data analysis, feature visualization, and regression modeling to quantify the relationships between housing features and prices.</p>
<h2><strong>Dataset</strong></h2>
<p >The dataset contains 506 homes in Boston with features including:</p>
<ul>
<li>
<pt><strong>PRICE</strong>: Home price in thousands</pt>
</li>
<li>
<p><strong>RM</strong>: Average number of rooms per house</p>
</li>
<li>
<p><strong>DIS</strong>: Weighted distance to five Boston employment centers</p>
</li>
<li>
<p><strong>CRIM</strong>: Crime rate per area</p>
</li>
<li>
<p><strong>LSTAT</strong>: Percentage of lower-income population</p>
</li>
<li>
<p><strong>RAD</strong>: Index of highway accessibility</p>
</li>
<li>
<p><strong>CHAS</strong>: Charles River proximity (Boolean)</p>
</li>
<li>
<p>Additional environmental and demographic variables</p>
</li>
</ul>
<p>&nbsp;</p>
<p>&nbsp;</p>
<h2><strong>The Question Behind This Project</strong></h2>
<p>Which factors most influence housing prices in Boston?</p>
<p>How can I build a multivariable linear regression model that accurately predicts property values based on these features?</p>
<h2>Main Takeaway</h2>
<p>Features like number of rooms, proximity to employment centers, lower crime rates, and better highway access positively influenced home prices, while higher local poverty rates negatively impacted them. The model can provide practical price estimates for properties given their characteristics.</p>
<h2><strong>Tools Used</strong></h2>
<p>Python, Jupyter Notebook</p>
<h2><strong>Project Walkthrough</strong></h2>
<p>I created this project as part of the course "100 Days of Coding: The Complete Python Bootcamp".</p>
<p>I first examined distributions of key variables and visualized relationships between features to understand the dataset better. To identify patterns, I created correlation graph that included all features in correlation with each other. Then I divided the dataset into 79.8% training and 20.2% testing&nbsp;data. I built a Multivariable Linear Regression&nbsp;model to predict the house price from all features. I evaluated residuals and checked for bias/skew. As the model showed bias to one side, I applied log transformation to PRICE, improving residual distribution and R&sup2;. Then I tested the model on the testing data, confirming consistent performance.</p>
