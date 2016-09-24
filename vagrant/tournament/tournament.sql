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
--Create the players table
CREATE TABLE players(
	id SERIAL primary key,
	name TEXT
);
--Create the matches table 
CREATE TABLE matches(
	id SERIAL primary key,
	winner INTEGER REFERENCES players (id),
	loser INTEGER REFERENCES players (id)
);
--Create the players standings view
CREATE OR REPLACE VIEW player_standings AS
	SELECT 	players.id,
			players.name,
			SUM(CASE WHEN players.id = matches.winner THEN 1 ELSE 0 END) AS wins,
			COUNT(matches) as total
	FROM players
	LEFT OUTER JOIN matches
	ON players.id = matches.winner or players.id = matches.loser
	GROUP BY players.id
	ORDER BY wins DESC,
			total ASC;




