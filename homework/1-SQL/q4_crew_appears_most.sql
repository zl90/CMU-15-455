SELECT name,
    COUNT(crew.person_id)
FROM crew
    JOIN people ON crew.person_id = people.person_id
GROUP BY crew.person_id
ORDER BY COUNT(crew.person_id) DESC
LIMIT 20;