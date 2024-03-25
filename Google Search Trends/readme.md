
I created this project as part of the course "100 Days of Coding: The Complete Python Bootcamp". Hence the older dates of the data, I will update to the newest available data soon.

Google Trends gives estimates of search volume. In this project I explored if search popularity relates to other kinds of data.

This is a first analysis purely based on the visualization of the data.

Questions I asked:

Are there patterns in Google's search volume and the price of Bitcoin?
Are there patterns in Google's search volume and the Tesla stock price?
Can the search volume for the term "Unemployment Benefits" tell us something about the actual employment rate?

Not shown in this Notebook is the pre-processing of data. For the files "TESLA Search Trend vs Price.csv" and "UE Benefits Search vs UE Rate 2004-20.csv" I used Excel for the pre-processing: I converted both, the Google search volume and the Stock Price / Unemployment Rate to monthly data points and combined the data in one file. For all data regarding Bitcoin, I show this process in this Notebook, using Python.


*About Google Trend Search The Google Trends data is not the amount of actual search requests during a given time. It is normalized to a 0-100 index, where 0 means no search or very few searches, while 100 is the peak of the searches. It is an index for relative popularity over the given time frame. The data therefore does not say anything about the actual number of searches, it simply tells us when it peaked and had the most searches (or not).
