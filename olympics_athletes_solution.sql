create database olympics_athletes_dataset;
use olympics_athletes_dataset;
select * from olympics_athletes_dataset;

-- 1. Find the top 5 countries with the highest total medals
SELECT country_name,
       SUM(country_total_medals) AS total_medals
FROM olympics_athletes_dataset
GROUP BY country_name
ORDER BY total_medals DESC
LIMIT 5; 

-- 2. Rank athletes by total medals won
SELECT athlete_name,
       total_medals_won,
       RANK() OVER (ORDER BY total_medals_won DESC) AS medal_rank
FROM olympics_athletes_dataset;

-- 3. Find the athlete with the highest number of medals in each sport

SELECT athlete_name, sport, total_medals_won
FROM (
        SELECT athlete_name,
               sport,
               total_medals_won,
               RANK() OVER(PARTITION BY sport ORDER BY total_medals_won DESC) AS rnk
        FROM olympics_athletes_dataset
     ) t
WHERE rnk = 1;

-- 4. Calculate average age of athletes by country

SELECT country_name,
       round(AVG(age),1) AS avg_age
FROM olympics_athletes_dataset
GROUP BY country_name
ORDER BY avg_age DESC;

-- 5. Find athletes whose medal count is higher than the average

SELECT athlete_name,
       total_medals_won
FROM olympics_athletes_dataset
WHERE total_medals_won >
      (SELECT AVG(total_medals_won)
       FROM olympics_athletes_dataset);
       
-- 6. Find top 3 athletes in each sport based on medals

SELECT athlete_name,
       sport,
       total_medals_won
FROM (
        SELECT athlete_name,
               sport,
               total_medals_won,
               ROW_NUMBER() OVER(PARTITION BY sport ORDER BY total_medals_won DESC) AS rn
        FROM olympics_athletes_dataset
     ) t
WHERE rn <= 3;

-- 7. Count number of athletes by gender and sport

SELECT sport,
       gender,
       COUNT(*) AS athlete_count
FROM olympics_athletes_dataset
GROUP BY sport, gender
ORDER BY sport;

-- 8. Find the tallest athlete in each country

SELECT athlete_name,
       country_name,
       height_cm
FROM (
        SELECT athlete_name,
               country_name,
               height_cm,
               ROW_NUMBER() OVER(PARTITION BY country_name ORDER BY height_cm DESC) AS rn
        FROM olympics_athletes_dataset
     ) t
WHERE rn = 1;

-- 9. Calculate cumulative medals by country

SELECT country_name,
       athlete_name,
       total_medals_won,
       SUM(total_medals_won) OVER(PARTITION BY country_name ORDER BY total_medals_won DESC) AS cumulative_medals
FROM olympics_athletes_dataset;

-- 10. Find sports with more than 100 athletes

SELECT sport,
       COUNT(*) AS athlete_count
FROM olympics_athletes_dataset
GROUP BY sport
HAVING COUNT(*) > 100;

-- 11. Identify athletes who participated in more Olympics than the average

SELECT athlete_name,
       total_olympics_attended
FROM olympics_athletes_dataset
WHERE total_olympics_attended >
      (SELECT AVG(total_olympics_attended)
       FROM olympics_athletes_dataset);
       
-- 12. Find the difference between athlete height and sport average height

SELECT athlete_name,
       sport,
       height_cm,
       round(height_cm - AVG(height_cm) OVER(PARTITION BY sport),1) AS height_difference
FROM olympics_athletes_dataset;

-- 13. Find athletes who won medals in multiple sports

SELECT athlete_name,
       COUNT(DISTINCT sport) AS sport_count
FROM olympics_athletes_dataset
WHERE medal IS NOT NULL
GROUP BY athlete_name
HAVING COUNT(DISTINCT sport) > 1;

-- 14. Find the youngest athlete in each sport

SELECT athlete_name,
       sport,
       age
FROM (
        SELECT athlete_name,
               sport,
               age,
               ROW_NUMBER() OVER(PARTITION BY sport ORDER BY age ASC) AS rn
        FROM olympics_athletes_dataset
     ) t
WHERE rn = 1;

-- 15. Calculate medal percentage by country

SELECT country_name,
       round(SUM(total_medals_won) * 100.0 /
       (SELECT SUM(total_medals_won) FROM olympics_athletes_dataset),1) AS medal_percentage
FROM olympics_athletes_dataset
GROUP BY country_name
ORDER BY medal_percentage DESC;





