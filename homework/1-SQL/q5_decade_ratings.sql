SELECT CAST(FLOOR(titles.premiered / 10) * 10 AS STRING) || 's' AS decade,
    AVG(ratings.rating) AS rating
FROM ratings
    JOIN titles ON ratings.title_id = titles.title_id
GROUP BY decade
LIMIT 20;