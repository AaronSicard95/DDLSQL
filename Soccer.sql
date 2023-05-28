DROP DATABASE IF EXISTS soccer;

CREATE DATABASE soccer;

\c soccer

CREATE TABLE teams
(
  id SERIAL PRIMARY KEY,
  team_name TEXT NOT NULL,
  team_region TEXT NOT NULL,
  total_score FLOAT NOT NULL,
);

CREATE TABLE game
(
  id SERIAL PRIMARY KEY,
  team1 TEXT NOT NULL,
  team2 TEXT NOT NULL,
  season TEXT NOT NULL,
  ref TEXT NOT NULL,
);

CREATE TABLE player
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  team_id TEXT NOT NULL,
);

CREATE TABLE referee
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
);

CREATE TABLE goal
(
  id SERIAL PRIMARY KEY,
  player TEXT NOT NULL,
  game TEXT NOT NULL,
  scoring_team TEXT NOT NULL,
);

CREATE TABLE season
(
  id SERIAL PRIMARY KEY,
  start_date TEXT NOT NULL,
  end_date TEXT NOT NULL,
);