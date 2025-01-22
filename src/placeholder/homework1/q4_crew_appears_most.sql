SELECT p.name, COUNT(*) AS num_appearances
FROM crew c
JOIN people p ON c.person_id = p.person_id
GROUP BY p.name
ORDER BY num_appearances DESC
LIMIT 20;
