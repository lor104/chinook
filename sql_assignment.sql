-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.
  SELECT id FROM artists WHERE name = 'Queen';
 id
----
 51
  SELECT title FROM albums WHERE artist_id = '51';
        title
 -------------------
  Greatest Hits II
  Greatest Hits I
  News Of The World

-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".
  media_types_id = 3
  SELECT COUNT(*) FROM tracks WHERE media_type_id = '3';
 count
-------
   214

-- 3) Find the least expensive track that has the genre "Electronica/Dance".
  genre_id = 15
  SELECT MIN(unit_price) FROM tracks WHERE genre_id = '15';
 min
------
 0.99
  (30 tracks with that price)


-- 4) Find the all the artists whose names start with A.
  SELECT name FROM artists WHERE name LIKE 'A%';
  name
------------------------------------------------------
Aerosmith
Alice In Chains
Antônio Carlos Jobim
Apocalyptica
Azymuth
Aquaman
AC/DC
Alanis Morissette
Audioslave
Avril Lavigne
Aisha Duo
Aaron Goldberg
Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner
Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair
Aaron Copland & London Symphony Orchestra
Antal Doráti & London Symphony Orchestra
Amy Winehouse
Adrian Leaper & Doreen de Feis
Accept
-- Aerosmith & Sierra Leone's Refugee Allstars
Alberto Turco & Nova Schola Gregoriana
Anne-Sophie Mutter, Herbert Von Karajan & Wiener Philharmoniker
Academy of St. Martin in the Fields & Sir Neville Marriner
Academy of St. Martin in the Fields, Sir Neville Marriner & William Bennett
Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart
A Cor Do Som


-- 5) Find all the tracks that belong to playlist 1.
SELECT * FROM playlists_tracks WHERE playlist_id = '1';

SELECT COUNT(track_id) FROM playlists_tracks WHERE playlist_id = '1';
 count
-------
  3290
