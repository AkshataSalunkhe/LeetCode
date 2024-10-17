(
    SELECT u.name AS results
    FROM MovieRating AS m
    JOIN users AS u ON m.user_id = u.user_id
    GROUP BY m.user_id
    ORDER BY COUNT(m.rating) DESC, u.name
    LIMIT 1
)
UNION ALL
(
    SELECT mv.title AS results
    FROM MovieRating AS x
    JOIN Movies AS mv ON x.movie_id = mv.movie_id
    WHERE SUBSTRING(x.created_at, 1, 7) = '2020-02'
    GROUP BY mv.title
    ORDER BY AVG(x.rating) DESC, mv.title
    LIMIT 1
);
