WITH person_avg_ratings AS (
    SELECT 
        c.person_id, 
        p.name,
        ROUND(AVG(r.rating), 2) AS avg_rating
    FROM crew c
    JOIN titles t ON c.title_id = t.title_id
    JOIN ratings r ON t.title_id = r.title_id
    JOIN people p ON c.person_id = p.person_id
    WHERE p.born = 1955 AND t.type = 'movie'
    GROUP BY c.person_id, p.name
),
ranked_ratings AS (
    SELECT 
        name, 
        avg_rating,
        NTILE(10) OVER (ORDER BY avg_rating DESC, name ASC) AS decile
    FROM person_avg_ratings
)
SELECT 
    name, 
    avg_rating
FROM ranked_ratings
WHERE decile = 2
ORDER BY avg_rating DESC, name ASC;
