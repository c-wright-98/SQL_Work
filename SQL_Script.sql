mysql -u root -p
show databases;
use movielens;

-- Select titles that start with T
SELECT title
    FROM movies
    WHERE title LIKE 'T%'
    ORDER BY title;

-- Get list of movies and their associated genre

SELECT movies.title, genres.name
    FROM movies, genres
    ORDER BY movies.title;

-- Still currently processing the below query,
-- the ratings table is big and my laptop is not happy

SELECT movies.title, genres.name
    FROM movies, genres, ratings
    WHERE genres.name = 'Comedy' AND ratings.rating = 5
    ORDER BY movies.title;

