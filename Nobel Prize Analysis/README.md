<img width="672" height="339" alt="image" src="https://github.com/user-attachments/assets/2b23ff52-a3f3-4d25-b6fa-d251723e422e" />
<h1>About This Project</h1>
<p>Every year the Nobel Prize is given to scientists and scholars in the categories chemistry, literature, physics, physiology or medicine, economics, and peace. This analysis in Jupyter Notebook contains different visualizations built with matplotlib, plotly and seaborn. Are there any patterns in the data of past Nobel laureates? What can we learn about the Nobel prize? I created this project as part of the course "100 Days of Code - The complete Python Bootcamp".

GitHub does not render the plotly figures, the full notebook including all visualizations can be viewed <a href="https://colab.research.google.com/drive/1tEWFLYsFC4uM-wnx9KFI5ybJL434d7Qh?usp=sharing" target="_blank">here</a>.
<h2>The Core Questions Behind This Project</h2>
<ul>
<li>&nbsp;What is the gender distribution among Nobel prize winners?</li>
<li>&nbsp;Which countries brought forward the most Nobel prize winners?</li>
</ul>
<h2>Main Takeaways</h2>
<ul>
<li>Only 6.21% of Nobel Prize winners are female, but 15.89% of Nobel Peace Prize winners are female (strongest female category), while only&nbsp;1.85% of Nobel Physics Prize winners are female (weakest female category). However, Marie Curie won two Nobel Prizes: one in Chemistry and one in Physics.</li>
<li>The US is leading with 281 Nobel prizes awarded to organizations and individuals from the US. Most of those prizes awarded for Medicine (78), closely followed by Physics (70).&nbsp;Up until World War 2 Germany was leading the countries in terms of amount of prizes.</li>
<li>The Top 10 Research Instituions by number of Nobel prizes follow the above: Rank 1 to 9 are US instituions, rank 10 is a German institution.</li>
</ul>
<h2>Tools Used</h2>
<p>Python (Pandas, numpy, plotly, seaborn, matplotlib), Jupyter Notebooks&nbsp;</p>
<h2>Project Walkthrough</h2>
<p>After importing all necessary libraries and the data set, I started by exploring and cleaning the data. This included checking for duplicates and for NaN values. I converted the birth_date column from datatype "object" to "datetime". Then I started my analysis, which is mainly visually. By creating data visualizations, I answered questions like the gender distribution among winners, numbers of prizes per category, gender distribution per category, number of Nobel Prizes awarded over time etc. I used different visualizations based on their usefulness to depict the data. For example, to compare catgeories or countries, I opted for bar and column charts. For the visualization of the age of Nobel Prize winners, I chose a Boxplot to show the full span, including outliers. The evolution of prizes overtime is shown with a line chart. To allow a deep dive into the winning organizations, I created a sunburst chart that starts with the country, followed by the city and finally the organization.</p>
