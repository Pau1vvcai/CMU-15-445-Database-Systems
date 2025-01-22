SELECT COUNT(DISTINCT t2.title_id) AS num_works
FROM titles t1
JOIN titles t2 ON t1.premiered = t2.premiered
WHERE t1.primary_title = 'Army of Thieves' 
  AND t1.premiered IS NOT NULL;
