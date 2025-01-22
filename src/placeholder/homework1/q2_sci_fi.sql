SELECT primary_title,
       premiered,
       runtime_minutes  || ' (mins)' AS runtime
FROM titles
WHERE genres LIKE '%Sci-Fi%' 
  AND runtime_minutes  IS NOT NULL 
ORDER BY runtime_minutes  DESC 
LIMIT 10; 
