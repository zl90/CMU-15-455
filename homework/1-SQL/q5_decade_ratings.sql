/*  Compute intersting statistics on the ratings of content on a per-decade basis.
 
 Details: Get the average rating (rounded to two decimal places), top rating, min rating, and the number of releases in each decade. Exclude titles which have not been premiered (i.e. where premiered is NULL). Print the relevant decade in a fancier format by constructing a string that looks like this: 1990s. Order the decades first by their average rating in a descending fashion and secondly by the decade, ascending, to break ties.
 Your output should have the format: DECADE|AVG_RATING|TOP_RATING|MIN_RATING|NUM_RELEASES  */
SELECT CAST(FLOOR(titles.premiered / 10) * 10 AS STRING) || 's' AS decade,
    ROUND(AVG(ratings.rating), 2) AS avg_rating,
    MAX(ratings.rating) AS max_rating,
    MIN(ratings.rating) AS min_rating,
    COUNT(DISTINCT(titles.primary_title)) AS title
FROM ratings
    JOIN titles ON ratings.title_id = titles.title_id
WHERE titles.premiered IS NOT NULL
GROUP BY decade
ORDER BY avg_rating DESC,
    decade ASC
LIMIT 20;