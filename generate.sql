CREATE TABLE IF NOT EXISTS series (
  id integer PRIMARY KEY,
  name text UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS episode (
  id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  series_id integer REFERENCES series(id) NOT NULL,
  season integer NOT NULL,
  episode integer NOT NULL,
  title text NOT NULL,
  release_date date NOT NULL,
  description text NOT NULL
);

CREATE TABLE IF NOT EXISTS director (
  id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name text UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS writer (
  id integer GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name text UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS episodes_directors (
  episode_id integer REFERENCES episode(id) NOT NULL,
  director_id integer REFERENCES director(id) NOT NULL,
  PRIMARY KEY (episode_id, director_id)
);

CREATE TABLE IF NOT EXISTS episodes_writers (
  episode_id integer REFERENCES episode(id) NOT NULL,
  writer_id integer REFERENCES writer(id) NOT NULL,
  PRIMARY KEY (episode_id, writer_id)
);
