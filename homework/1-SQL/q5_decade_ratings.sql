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