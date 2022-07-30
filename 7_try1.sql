DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    album_id bigserial,
    album_catalogue_code varchar(100) NOT NULL,
    album_title text NOT NULL,
    album_artist text NOT NULL,
    album_release_date date NOT NULL,
    album_genre varchar(40),
    album_description text,
    CONSTRAINT album_key PRIMARY KEY (album_id)
);

DROP TABLE IF EXISTS songs;

CREATE TABLE songs(
    song_id bigserial,
    -- Good candidate for indexes
    song_title text NOT NULL,
    song_artist text NOT NULL,
    album_id bigint REFERENCES albums (album_id) ON DELETE CASCADE,
    -- Good candidate for indexes
    CONSTRAINT song_key PRIMARY KEY (song_id, album_id)
);