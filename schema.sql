CREATE TABLE lists (
	id serial PRIMARY KEY,
	name text UNIQUE NOT NULL
);

CREATE TABLE todos (
	id serial PRIMARY KEY,
	list_id int NOT NULL REFERENCES lists(id),
	name text NOT NULL,
	completed boolean NOT NULL DEFAULT false
);
