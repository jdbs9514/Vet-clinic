/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Agumon', '2020-02-03', 0, True, 10.23);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Gabumon', '2018-11-15', 2, True, 5.04);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Pikachu', '2021-01-07', 1, False, 15.04);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Devimon', '2017-05-12', 5, True, 11);

/* Adding a new animals */

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Plantmon', '2021-11-15', 2, True, -5.7);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', '2020-02-08', 0, False, -11);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Squirtle', '1993-04-02', 3, False, -12.13);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Angemon', '2005-06-12', 1, True, -45);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Boarmon', '2005-06-07', 7, True, 20.4);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Blossom', '1998-10-13', 3, True, 17);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Ditton', '1999-08-31', 2, True, 16.3);

/* Adding the owners */

INSERT INTO owners (full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners (full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (full_name, age) VALUES ('Bob', 45);
INSERT INTO owners (full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners (full_name, age) VALUES ('Dean Winchester', 14);
INSERT INTO owners (full_name, age) VALUES ('Jodie Whittaker', 38);

/* Adding the species */

INSERT INTO species (name) VALUES ('Pokemon');
INSERT INTO species (name) VALUES ('Digimon');

BEGIN;

UPDATE animals set species_id = 1 WHERE name LIKE '%mon';
UPDATE animals set species_id = 2 WHERE name NOT LIKE '%mon';
COMMIT;

BEGIN;

UPDATE animals set owner_id = 1 where name = 'Agumon';
UPDATE animals set owner_id = 2 where name = 'Gabumon';
UPDATE animals set owner_id = 2 where name = 'Pikachu';
UPDATE animals set owner_id = 3 where name = 'Devimon';
UPDATE animals set owner_id = 3 where name = 'Plantmon';
UPDATE animals set owner_id = 4 where name = 'Charmander';
UPDATE animals set owner_id = 4 where name = 'Squirtle';
UPDATE animals set owner_id = 4 where name = 'Blossom';
UPDATE animals set owner_id = 5 where name = 'Angemon';
UPDATE animals set owner_id = 5 where name = 'Boarmon';
COMMIT;

INSERT INTO vets (name, age, date_of_graduation)
VALUES
('William Tatcher', 45, DATE '2000-04-23'),
('Maisy Smith', 26, DATE '2019-01-17'),
('Stephanie Mendez', 64, DATE '1981-05-04'),
('Jack Harkness', 38, DATE '2008-06-08');

INSERT INTO specializations (vet_id, species_id)
VALUES
(1, 1),
(3, 2),
(3, 1),
(4,2);

