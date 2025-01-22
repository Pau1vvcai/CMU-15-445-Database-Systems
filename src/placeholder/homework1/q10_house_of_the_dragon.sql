WITH house_of_dragon_titles AS (
    SELECT DISTINCT akas.title
    FROM akas
    JOIN titles ON akas.title_id = titles.title_id
    WHERE titles.type = 'tvSeries' 
      AND titles.primary_title = 'House of the Dragon'
)
SELECT GROUP_CONCAT(title, ', ') AS concatenated_titles
FROM (
    SELECT title
    FROM house_of_dragon_titles
    ORDER BY title
) ordered_titles;
