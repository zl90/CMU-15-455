/*  Determine the oldest people in the dataset who were born in or after 1900. You should assume that a person without a known death year is still alive.

Details: Print the name and age of each person. People should be ordered by a compound value of their age and secondly their name in alphabetical order. Return the first 20 results.
Your output should have the format: NAME|AGE  */

SELECT name, died - born FROM people WHERE born >= 1900 UNION SELECT name, 2023 - born FROM people WHERE born >= 1900 AND died IS NULL ORDER BY 2023 - born DESC, name ASC LIMIT 20;