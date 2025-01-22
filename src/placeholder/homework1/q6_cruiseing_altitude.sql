SELECT t.primary_title, votes
FROM crew c
JOIN people p ON c.person_id = p.person_id
JOIN titles t ON c.title_id = t.title_id
JOIN ratings r ON t.title_id = r.title_id
WHERE p.name LIKE '%Cruise%'
  AND p.born = 1962
ORDER BY r.votes DESC
LIMIT 10;
