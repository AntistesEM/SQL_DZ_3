-- название и год выхода альбомов, вышедших в 2018 году
SELECT name, year_of_issue FROM album
WHERE year_of_issue = 2018;

-- название и продолжительность самого длительного трека;
SELECT name, duration FROM track
WHERE duration = (SELECT max(duration) FROM track);

-- название треков, продолжительность которых не менее 3,5 минуты;
SELECT name, duration FROM track
WHERE duration >= 210;

-- названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT name FROM collection
WHERE year_of_issue BETWEEN 2018 AND 2020;

-- исполнители, чье имя состоит из 1 слова;
SELECT name FROM performer
WHERE name NOT LIKE '% %'

-- название треков, которые содержат слово "мой"/"my".
SELECT name FROM track
WHERE lower(name) LIKE '%my%' OR lower(name) LIKE '%мой%';
