mysql -u root -p
show databases;
use movielens;

SELECT title
    FROM movies
    WHERE title LIKE 'T%'
    ORDER BY title;

SELECT movies.title, genres.name, ratings.rating
    FROM movies, genres, ratings
    WHERE genres.name = 'Comedy' AND ratings.rating >= 4
    ORDER BY movies.title;

