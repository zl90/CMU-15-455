/*  Find the people who appear most frequently as crew members.
 
 Details: Print the names and number of appearances of the 20 people with the most crew appearances ordered by their number of appearances in a descending fashion.
 Your output should look like this: NAME|NUM_APPEARANCES */
SELECT name,
    COUNT(crew.person_id)
FROM crew
    JOIN people ON crew.person_id = people.person_id
GROUP BY crew.person_id
ORDER BY COUNT(crew.person_id) DESC
LIMIT 20;