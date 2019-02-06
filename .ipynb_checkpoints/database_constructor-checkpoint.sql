CREATE TABLE IF NOT EXISTS chroma_cens__mean (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL,
	    h double precision DEFAULT NULL,
	    i double precision DEFAULT NULL,
	    j double precision DEFAULT NULL,
	    k double precision DEFAULT NULL,
	    l double precision DEFAULT NULL
    );

COPY chroma_cens__mean FROM '/home/ubuntu/genre_data/chroma_cens__mean.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS chroma_cens__skew (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL,
	    h double precision DEFAULT NULL,
	    i double precision DEFAULT NULL,
	    j double precision DEFAULT NULL,
	    k double precision DEFAULT NULL,
	    l double precision DEFAULT NULL
    );

COPY chroma_cens__skew FROM '/home/ubuntu/genre_data/chroma_cens__skew.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE IF NOT EXISTS chroma_cens__std (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL,
	    h double precision DEFAULT NULL,
	    i double precision DEFAULT NULL,
	    j double precision DEFAULT NULL,
	    k double precision DEFAULT NULL,
	    l double precision DEFAULT NULL
    );

COPY chroma_cens__std FROM '/home/ubuntu/genre_data/chroma_cens__std.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE IF NOT EXISTS chroma_cqt__mean (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL,
	    h double precision DEFAULT NULL,
	    i double precision DEFAULT NULL,
	    j double precision DEFAULT NULL,
	    k double precision DEFAULT NULL,
	    l double precision DEFAULT NULL
    );

COPY chroma_cqt__mean FROM '/home/ubuntu/genre_data/chroma_cqt__mean.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE IF NOT EXISTS chroma_cqt__skew (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL,
	    h double precision DEFAULT NULL,
	    i double precision DEFAULT NULL,
	    j double precision DEFAULT NULL,
	    k double precision DEFAULT NULL,
	    l double precision DEFAULT NULL
    );

COPY chroma_cqt__skew FROM '/home/ubuntu/genre_data/chroma_cqt__skew.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE IF NOT EXISTS chroma_cqt__std (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL,
	    h double precision DEFAULT NULL,
	    i double precision DEFAULT NULL,
	    j double precision DEFAULT NULL,
	    k double precision DEFAULT NULL,
	    l double precision DEFAULT NULL
    );

COPY chroma_cqt__std FROM '/home/ubuntu/genre_data/chroma_cqt__std.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE IF NOT EXISTS chroma_stft__mean (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL,
	    h double precision DEFAULT NULL,
	    i double precision DEFAULT NULL,
	    j double precision DEFAULT NULL,
	    k double precision DEFAULT NULL,
	    l double precision DEFAULT NULL
    );

COPY chroma_stft__mean FROM '/home/ubuntu/genre_data/chroma_stft__mean.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE IF NOT EXISTS chroma_stft__skew (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL,
	    h double precision DEFAULT NULL,
	    i double precision DEFAULT NULL,
	    j double precision DEFAULT NULL,
	    k double precision DEFAULT NULL,
	    l double precision DEFAULT NULL
    );

COPY chroma_stft__skew FROM '/home/ubuntu/genre_data/chroma_stft__skew.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE IF NOT EXISTS chroma_stft__std (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL,
	    h double precision DEFAULT NULL,
	    i double precision DEFAULT NULL,
	    j double precision DEFAULT NULL,
	    k double precision DEFAULT NULL,
	    l double precision DEFAULT NULL
    );

COPY chroma_stft__std FROM '/home/ubuntu/genre_data/chroma_stft__std.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE IF NOT EXISTS genres (
		genre_id integer PRIMARY KEY,
	    track_count integer DEFAULT NULL,
	    parent integer DEFAULT NULL,
	    title text DEFAULT NULL,
	    top_level integer DEFAULT NULL
    );

COPY genres FROM '/home/ubuntu/genre_data/genres.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS mfcc__mean (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL,
	    h double precision DEFAULT NULL,
	    i double precision DEFAULT NULL,
	    j double precision DEFAULT NULL,
	    k double precision DEFAULT NULL,
	    l double precision DEFAULT NULL,
	    m double precision DEFAULT NULL,
	    n double precision DEFAULT NULL,
	    o double precision DEFAULT NULL,
	    p double precision DEFAULT NULL,
	    q double precision DEFAULT NULL,
	    r double precision DEFAULT NULL,
	    s double precision DEFAULT NULL,
	    t double precision DEFAULT NULL
    );

COPY mfcc__mean FROM '/home/ubuntu/genre_data/mfcc__mean.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE IF NOT EXISTS mfcc__skew (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL,
	    h double precision DEFAULT NULL,
	    i double precision DEFAULT NULL,
	    j double precision DEFAULT NULL,
	    k double precision DEFAULT NULL,
	    l double precision DEFAULT NULL,
	    m double precision DEFAULT NULL,
	    n double precision DEFAULT NULL,
	    o double precision DEFAULT NULL,
	    p double precision DEFAULT NULL,
	    q double precision DEFAULT NULL,
	    r double precision DEFAULT NULL,
	    s double precision DEFAULT NULL,
	    t double precision DEFAULT NULL
    );

COPY mfcc__skew FROM '/home/ubuntu/genre_data/mfcc__skew.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS mfcc__std (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL,
	    h double precision DEFAULT NULL,
	    i double precision DEFAULT NULL,
	    j double precision DEFAULT NULL,
	    k double precision DEFAULT NULL,
	    l double precision DEFAULT NULL,
	    m double precision DEFAULT NULL,
	    n double precision DEFAULT NULL,
	    o double precision DEFAULT NULL,
	    p double precision DEFAULT NULL,
	    q double precision DEFAULT NULL,
	    r double precision DEFAULT NULL,
	    s double precision DEFAULT NULL,
	    t double precision DEFAULT NULL
    );

COPY mfcc__std FROM '/home/ubuntu/genre_data/mfcc__std.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS rmse__mean (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY rmse__mean FROM '/home/ubuntu/genre_data/rmse__mean.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS rmse__skew (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY rmse__skew FROM '/home/ubuntu/genre_data/rmse__skew.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS rmse__std (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY rmse__std FROM '/home/ubuntu/genre_data/rmse__std.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS spectral_bandwidth__mean (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY spectral_bandwidth__mean FROM '/home/ubuntu/genre_data/spectral_bandwidth__mean.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS spectral_bandwidth__skew (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY spectral_bandwidth__skew FROM '/home/ubuntu/genre_data/spectral_bandwidth__skew.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS spectral_bandwidth__std (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY spectral_bandwidth__std FROM '/home/ubuntu/genre_data/spectral_bandwidth__std.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS spectral_centroid__mean (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY spectral_centroid__mean FROM '/home/ubuntu/genre_data/spectral_centroid__mean.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS spectral_centroid__skew (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY spectral_centroid__skew FROM '/home/ubuntu/genre_data/spectral_centroid__skew.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS spectral_centroid__std (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY spectral_centroid__std FROM '/home/ubuntu/genre_data/spectral_centroid__std.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS spectral_contrast__mean (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL
    );

COPY spectral_contrast__mean FROM '/home/ubuntu/genre_data/spectral_contrast__mean.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS spectral_contrast__skew (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL
    );

COPY spectral_contrast__skew FROM '/home/ubuntu/genre_data/spectral_contrast__skew.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS spectral_contrast__std (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL,
	    g double precision DEFAULT NULL
    );

COPY spectral_contrast__std FROM '/home/ubuntu/genre_data/spectral_contrast__std.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS spectral_rolloff__mean (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY spectral_rolloff__mean FROM '/home/ubuntu/genre_data/spectral_rolloff__mean.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS spectral_rolloff__skew (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY spectral_rolloff__skew FROM '/home/ubuntu/genre_data/spectral_rolloff__skew.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS spectral_rolloff__std (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY spectral_rolloff__std FROM '/home/ubuntu/genre_data/spectral_rolloff__std.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS tonnetz__mean (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL
    );

COPY tonnetz__mean FROM '/home/ubuntu/genre_data/tonnetz__mean.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS tonnetz__skew (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL
    );

COPY tonnetz__skew FROM '/home/ubuntu/genre_data/tonnetz__skew.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS tonnetz__std (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL,
	    b double precision DEFAULT NULL,
	    c double precision DEFAULT NULL,
	    d double precision DEFAULT NULL,
	    e double precision DEFAULT NULL,
	    f double precision DEFAULT NULL
    );

COPY tonnetz__std FROM '/home/ubuntu/genre_data/tonnetz__std.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS track (
		track_id integer PRIMARY KEY,
	    bit_rate double precision DEFAULT NULL,
	    comments double precision DEFAULT NULL,
	    composer text DEFAULT NULL,
	    date_created timestamp DEFAULT NULL,
	    date_recorded timestamp DEFAULT NULL,
	    duration double precision DEFAULT NULL,
	    favorites double precision DEFAULT NULL,
	    genre_top text DEFAULT NULL,
	    genres text DEFAULT NULL,
	    genres_all text DEFAULT NULL,
	    information text DEFAULT NULL,
	    interest double precision DEFAULT NULL,
	    language_code text DEFAULT NULL,
	    license text DEFAULT NULL,
	    listens double precision DEFAULT NULL,
	    lyricist text DEFAULT NULL,
	    number double precision DEFAULT NULL,
	    publisher text DEFAULT NULL,
	    tags text DEFAULT NULL,
	    title text DEFAULT NULL
    );

COPY track FROM '/home/ubuntu/genre_data/track.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS zcr__mean (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY zcr__mean FROM '/home/ubuntu/genre_data/zcr__mean.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS zcr__skew (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY zcr__skew FROM '/home/ubuntu/genre_data/zcr__skew.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE IF NOT EXISTS zcr__std (
		track_id integer PRIMARY KEY,
	    a double precision DEFAULT NULL
    );

COPY zcr__std FROM '/home/ubuntu/genre_data/zcr__std.csv' DELIMITER ',' CSV HEADER;