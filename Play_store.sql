

-- Number of Categories present in the dataset
SELECT COUNT( DISTINCT Category)
FROM playstore_apps;

-- All categories with the number of apps in them
SELECT Category, COUNT(*) as Number_of_apps
FROM playstore_apps
GROUP BY Category;

-- Which are the top 10 highest rated apps in the given available dataset?
SELECT App, Rating
FROM playstore_apps
ORDER BY Rating DESC
LIMIT 10;

-- What is the total number of apps available?
SELECT COUNT(*) AS TotalApps 
FROM playstore_apps;

-- What is the average rating of all apps?
SELECT AVG(Rating) AS AverageRating 
FROM playstore_apps;

-- What is the total number of reviews for all apps?
SELECT SUM(Reviews) AS TotalReviews 
FROM playstore_apps;

-- Which app has the most reviews?
SELECT App, Reviews 
FROM playstore_apps 
ORDER BY Reviews DESC 
LIMIT 1;

-- How many apps are there in each category?
SELECT Category, COUNT(*) AS AppCount 
FROM playstore_apps
GROUP BY Category 
ORDER BY AppCount DESC;

-- Apps with More Than 1 Million Installs
SELECT App 
FROM playstore_apps 
WHERE Installs > 1000000;

-- What is the average size of the apps?
SELECT AVG(Size) AS AverageSize 
FROM playstore_apps;

-- How many paid apps and how many free apps are there?
SELECT Type, COUNT(*) AS AppCount 
FROM playstore_apps
GROUP BY Type;

-- Which apps have a rating above 4.5?
SELECT App 
FROM playstore_apps 
WHERE Rating > 4.5;

-- What is the distribution of content ratings among the apps?
SELECT Rating, COUNT(*) AS Count 
FROM playstore_apps 
GROUP BY Rating;

-- What are the different genres of apps and their counts?
SELECT Genres, COUNT(*) AS GenreCount 
FROM playstore_apps 
GROUP BY Genres 
ORDER BY GenreCount DESC;

-- What is the average rating per category?
SELECT Category, AVG(Rating) AS AvgRating 
FROM playstore_apps 
GROUP BY Category;

-- What are the total sales from paid apps?
SELECT SUM(Price * Installs) AS TotalSales 
FROM playstore_apps 
WHERE Type = 'Paid';

-- What are the top 5 genres by average rating?
SELECT Genres, AVG(Rating) AS AvgRating 
FROM playstore_apps 
GROUP BY Genres 
ORDER BY AvgRating DESC 
LIMIT 5;

-- Which apps have reviews containing the word 'excellent'?
SELECT App, Reviews 
FROM playstore_apps 
WHERE Reviews LIKE '%excellent%';

-- What are the top 5 most expensive apps?
SELECT App, Price 
FROM playstore_apps 
ORDER BY Price DESC 
LIMIT 5;

-- Which apps have a rating below 2.0?
SELECT App, Rating 
FROM playstore_apps 
WHERE Rating < 2.0;

-- Which are the top 5 most installed apps in the 'Games' category?
SELECT App, Installs 
FROM playstore_apps 
WHERE Category = 'GAME' 
ORDER BY Installs DESC 
LIMIT 5;

-- Which apps have no reviews?
SELECT App 
FROM playstore_apps 
WHERE Reviews = 0;

-- What is the total number of free apps in each category?
SELECT Category, COUNT(*) AS FreeAppCount 
FROM playstore_apps 
WHERE Type = 'Free' 
GROUP BY Category 
ORDER BY FreeAppCount DESC;

-- What is the average rating of free apps compared to paid apps?
SELECT Type, AVG(Rating) AS AvgRating 
FROM playstore_apps 
GROUP BY Type;



