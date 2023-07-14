mysql -u root -p
show databases;
use movielens;

-- Select titles that start with The
SELECT title
    FROM movies
    WHERE title LIKE 'The%'
    ORDER BY title;

-- Get list of movies and their associated genre

SELECT movies.title, genres.name
    FROM movies, genres
    ORDER BY movies.title;

-- Get list of comedy movies with 5 rating

SELECT movies.title, genres.name, ratings.rating
    FROM movies, genres, ratings
    WHERE genres.name = 'Comedy' AND ratings.rating = 5 AND ratings.movie_id = movies.id
    ORDER BY movies.title;

