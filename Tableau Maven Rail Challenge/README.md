
<img width="1501" height="803" alt="image" src="https://github.com/user-attachments/assets/3a85f0df-099b-430d-9325-02493c57c08a" />


<h1>About This Project</h1>
<p>I created this Dashboard to participate in the Maven Rail Challenge in May/June 2024. The data set was provided along with some pointers of what the dashboard is supposed to visualize.&nbsp;I added filters for month and departure stations, that filter over all visualizations. This makes it easy to use the dashboard to explore single departure stations and their unique issues.</p>
<p> The dasboard can be found <a href='https://public.tableau.com/views/MavenChallengeTrains/UKNationalRailAnalysis?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link'> here </a>.</p>

<p>This is the official wording of the Challenge Objective:</p>
<p>For the Maven Rail Challenge, you'll play the role of a BI Developer for National Rail, a company that provides business services to passenger train operators in England, Scotland, and Wales.</p>
<p>You've been asked by your manager to create an exploratory dashboard that helps them:</p>
<ul>
<li>
<p>Identify the most popular routes</p>
</li>
<li>
<p>Determine peak travel times</p>
</li>
<li>
<p>Analyze revenue from different ticket types &amp; classes</p>
</li>
<li>
<p>Diagnose on-time performance and contributing factors</p>
</li>
</ul>

<h2>Main Takeaway</h2>
<ul>
<li>The top 6 most popular routes all sold over 3000 tickets in the 4 months analysed and are all connections from one city to another.</li>
<li>There are two peak times for train travel: 6 AM to 9 AM (with 6 AM being the busiest) and 4 PM to 7 PM (with 6 PM being the busiest).</li>
<li>Advance, standard tickets are the biggest contributor to revenue, however the ticket type sales vary greatly by month (January and April see nearly the same revenue over all standard ticket types, while in February more than 60% of standard tickets sold are Advance tickets).</li>
<li>Filtering by single months and Departure stations brings more insights on possible issues with the on-time performance and contributing factors, which can be used to create actionable insights that can enhance performance and therefore lower refund requests (see below).</li>
</ul>
<h2>Recommended Actions (examples)</h2>
<ul>
<li>There is only one route from Edinburgh Waverley (to London Kings Cross). All trains on this route were delayed due to staffing and a refund was requested for all tickets issued so the route was not generating any net revenue. Fixing the staffing issue and therefore the delays, will make this route profitable again.</li>
<li>The route Oxford to Bristol Temple Meads was 100% delayed at 2 PM due to signal failure. Fixing the signal issue on this route could lead to fewer delays and therefore fewer refunds requested and more net revenue.</li>
</ul>
<h2>Tools Used</h2>
<p>Tableau</p>
<h2>Project Walkthrough</h2>
<p>After importing the CSV as data source to Tableau, I checked the data withing the "Data Source" panel. Both the Departure and Arrival Time were Datetimes, adding an aritifcial date (12/30/1899) to all times, so I had to extract the hour only for the visualizations. I added an extra, grouped column as the "Reason for Delay" column had duplicate resoans, that are the same issue: "Signal Failure" and "signal failure", "Weather" and "Weather Conditions", "Staffing" and "Staff Shortage". I then created the single visualizations, starting with the main KPIs like Total Trips, Passengers, Revenue and Net Revenue. I then added visualizations to explore the questions asked in the challenge objective: Revenue by ticket class and tupe, trip performance by timeslot, delay and cancellations reasons, as well as peak travel times and most popular routes. By using the filters over all visualizations the dashboard makes it easy to explore single Departure stations and their unique issues.</p>


<img width="1518" height="805" alt="image" src="https://github.com/user-attachments/assets/97366d76-f3ee-44e8-8473-697b7bad9c63" />
