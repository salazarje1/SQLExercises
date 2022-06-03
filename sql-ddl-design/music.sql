-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  artists TEXT[] NOT NULL,
  album TEXT NOT NULL,
  producers TEXT[] NOT NULL
);

Create Table artists (
  id Serial Primary Key, 
  artist_name Text Not Null, 
)

Create songs_artists (
  id Serial Primary Key, 
  artist_id Int Not Null References artists, 
  song_id Int Not Null References songs
)

Create Table producers (
  id Serial Primary Key, 
  name Text Not Null
)

Create Table songs_producers (
  id Serial Primary Key, 
  producer_id Int Not Null References producers, 
  song_id Int Not Null References songs
)


INSERT INTO songs
  (title, duration_in_seconds, release_date, album, producers)
VALUES
  ('MMMBop', 238, '04-15-1997', 'Middle of Nowhere', '{"Dust Brothers", "Stephen Lironi"}'),
  ('Bohemian Rhapsody', 355, '10-31-1975', 'A Night at the Opera', '{"Roy Thomas Baker"}'),
  ('One Sweet Day', 282, '11-14-1995', 'Daydream', '{"Walter Afanasieff"}'),
  ('Shallow', 216, '09-27-2018', 'A Star Is Born', '{"Benjamin Rice"}'),
  ('How You Remind Me', 223, '08-21-2001', 'Silver Side Up', '{"Rick Parashar"}'),
  ('New York State of Mind', 276, '10-20-2009', 'The Blueprint 3', '{"Al Shux"}')



Insert Into artist (artist_name) Values 
('Hanson'), 
('Queen'), 
('Mariah Cary'), 
('Boyz II Men'), 
('Lady Gaga'), 
('Bradley Cooper'), 
('Nickleback'), 
('Jay Z'), 
('Alicia Keys')

Insert Into songs_artists (artist_id, song_id) Values 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 3), 
(5, 4), 
(6, 4), 
(7, 5), 
(8, 6), 
(9, 6)


Insert Into producers (name) Value 
('Dust Brothers'), 
('Stephen Lironi'), 
('Roy Thomas Baker'), 
('Walter Afanasieff'), 
('Benjamin Rice'), 
('Rick Parashar'), 
('Al Shux')

Insert Into songs_producers (producer_id, song_id) Values 
(1, 1), 
(2, 1), 
(3, 2), 
(4, 3), 
(5, 4), 
(6, 5), 
(7, 6)