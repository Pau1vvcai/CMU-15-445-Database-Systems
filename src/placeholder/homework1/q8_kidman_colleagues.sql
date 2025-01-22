SELECT DISTINCT p.name
FROM crew c
JOIN people p ON c.person_id = p.person_id
WHERE c.title_id IN (
    SELECT DISTINCT c1.title_id
    FROM crew c1
    JOIN people p1 ON c1.person_id = p1.person_id
    WHERE p1.name = 'Nicole Kidman' AND p1.born = 1967
)
AND c.category IN ('actor', 'actress')
ORDER BY p.name;
