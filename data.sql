/* Populate database with sample data. */
insert into animals(name, date_of_birth, escape_attempts, neutered, weight_kg) values('Agumon', '03/02/2020', 0, TRUE, 10.23);
insert into animals(name, date_of_birth, escape_attempts, neutered, weight_kg) values('Gabumon', '15/11/2018', 2, TRUE, 8.00);
insert into animals(name, date_of_birth, escape_attempts, neutered, weight_kg) values('Pikachu', '07/01/2021', 1, FALSE, 15.04);
insert into animals(name, date_of_birth, escape_attempts, neutered, weight_kg) values('Devimon', '12/05/2017', 5, TRUE, 11.00);

insert into animals(name, date_of_birth, escape_attempts, neutered, weight_kg) values('Charmander', '2020-02-08', 0, TRUE, -11),
insert into animals(name, date_of_birth, escape_attempts, neutered, weight_kg) values('Plantmon', '2021-11-15', 2, TRUE, -5.7),
insert into animals(name, date_of_birth, escape_attempts, neutered, weight_kg) values('Squirtle', '1993-04-02', 3, FALSE, -12.3),
insert into animals(name, date_of_birth, escape_attempts, neutered, weight_kg) values('Angemon', '2005-06-12', 1, TRUE, -45),
insert into animals(name, date_of_birth, escape_attempts, neutered, weight_kg) values('Boarmon', '2005-06-07', 7, TRUE, 20),
insert into animals(name, date_of_birth, escape_attempts, neutered, weight_kg) values('Blossom', '1998-10-13', 3, TRUE, 17),
insert into animals(name, date_of_birth, escape_attempts, neutered, weight_kg) values('Ditto', '2022-05-14', 4, TRUE, 22);

INSERT INTO owners (full_name, age)
VALUES ('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

INSERT INTO species (name) 
VALUES ('Pokemon'), ('Digimon');


UPDATE animals SET species_id = 2 
WHERE name LIKE '%mon';


UPDATE animals SET species_id = 1 
WHERE species_id IS NULL;

-- Sam smith (1) owns agumon
UPDATE animals SET owner_id = 1 WHERE name = 'Agumon';

-- Jennifer(2) owns gabumon
UPDATE animals SET owner_id = 2 
WHERE name IN ('Gabumon', 'Pikachu');

-- Bob(3) owns Devimon and Plantmon.
UPDATE animals SET owner_id = 3 
WHERE name IN ('Devimon', 'Plantmon');

-- Melody(4) owns Charmander, Squirtle, and Blossom.
UPDATE animals SET owner_id = 4 
WHERE name IN ('Charmander', 'Squirtle', 'Blossom');

-- Dean(5) owns Angemon and Boarmon.
UPDATE animals SET owner_id = 5 WHERE name IN ('Angemon', 'Boarmon');