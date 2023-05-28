DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE regions
(
  id SERIAL PRIMARY KEY,
  state_name TEXT NOT NULL,
  region_name TEXT NOT NULL,
);

CREATE TABLE user
(
  id SERIAL PRIMARY KEY,
  user_name TEXT NOT NULL,
  region_id TEXT NOT NULL,
);

CREATE TABLE post
(
  id SERIAL PRIMARY KEY,
  post_user TEXT NOT NULL,
  post_title TEXT NOT NULL,
  post_name TEXT NOT NULL,
  post_category TEXT NOT NULL,
  post_region_id TEXT NOT NULL,
);

CREATE TABLE category
(
  id SERIAL PRIMARY KEY,
  category_name TEXT NOT NULL,
);