\connect postgraphile;

/*Create forum schema*/
CREATE SCHEMA forum;

/*Create user table in forum schema*/
CREATE TABLE forum.user (
    id SERIAL PRIMARY KEY,
    username TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

COMMENT ON TABLE forum.user IS
'Forum users.';

/*Create post table in forum schema*/
CREATE TABLE forum.post (
    id SERIAL PRIMARY KEY,
    title TEXT,
    body TEXT,
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    author_id INTEGER NOT NULL REFERENCES forum.user(id)
);

COMMENT ON TABLE forum.post IS
'Forum posts written by a user.';