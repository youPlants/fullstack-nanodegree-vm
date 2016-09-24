-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
DROP DATABASE tournament;
--Create the database
CREATE DATABASE tournament;
--Connect to tournament DB
\c tournament

CREATE TABLE players(
	id SERIAL primary key,
	name TEXT
);

CREATE TABLE matches(
	id SERIAL primary key,
	winner INTEGER REFERENCES players (id),
	loser INTEGER REFERENCES players (id)
);

CREATE OR REPLACE VIEW playerstandings AS 
	SELECT	* FROM players;



