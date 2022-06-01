-- Comments in SQL Start with dash-dash --

-- Find the app with an ID of 1880.
Select * From analytics Where id = 1880;

-- Find the ID and app name for all apps that were last updated on August 01, 2018.
Select id, app_name From analytics Where last_updated = '2018-08-01';

-- Count the number of apps in each category, e.g. “Family | 1972”.
Select category, Count(*) From analytics Group By category;

-- Find the top 5 most-reviewed apps and the number of reviews for each.
Select app_name, reviews From analytics Order By reviews DESC Limit 5;

-- Find the app that has the most reviews with a rating greater than equal to 4.8.
Select app_name, reviews From analytics Where rating > 4.8 Order By reviews DESC Limit 1;

-- Find the average rating for each category ordered by the highest rated to lowest rated.
Select category, Avg(rating) From analytics Group By category Order By Avg(rating) DESC;

-- Find the name, price, and rating of the most expensive app with a rating that’s less than 3.
Select app_name, price, rating From analytics Where rating < 3 Order By price Desc Limit 1;

-- Find all apps with a min install not exceeding 50, that have a rating. Order your results by highest rated first.
Select * From analytics Where min_installs <= 50 and rating Is Not Null Order By rating Desc;

-- Find the names of all apps that are rated less than 3 with at least 10000 reviews.
Select * From analytics Where rating < 3 And reviews >= 10000;

-- Find the top 10 most-reviewed apps that cost between 10 cents and a dollar.
Select * From analytics Where price Between 0.1 and 1 Order By reviews Desc Limit 10;

-- Find the most out of date app. Hint: You don’t need to do it this way, but it’s possible to do with a subquery: http://www.postgresqltutorial.com/postgresql-max-function/
Select * From analytics Order By last_updated Limit 1; 

-- Find the most expensive app (the query is very similar to #11).
Select * From analytics Order By price Desc Limit 1; 

-- Count all the reviews in the Google Play Store.
Select Sum(reviews) From analytics; 

-- Find all the categories that have more than 300 apps in them.
Select category From analytics Group By category Having Count(*) > 300; 

-- Find the app that has the highest proportion of min_installs to reviews, among apps that have been installed at least 100,000 times. Display the name of the app along with the number of reviews, the min_installs, and the proportion.


