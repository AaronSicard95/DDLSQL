DROP DATABASE IF EXISTS med_center;

CREATE DATABASE med_center;

\c med_center

CREATE TABLE doctors
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
);

CREATE TABLE patients
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
);

CREATE TABLE visit
(
  id SERIAL PRIMARY KEY,
  doctor_id TEXT NOT NULL,
  patient_id TEXT NOT NULL,
  diagnosis_id TEXT NOT NULL,
);

CREATE TABLE diagnosis
(
  id SERIAL PRIMARY KEY,
  diagnosis_name TEXT NOT NULL,
  diagnoses_treatment TEXT NOT NULL,
);