/* Database schema to keep the structure of entire database. */
CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    date_of_birth DATE,
    escape_attempts INT,
    neutered BOOLEAN,
    weight_kg DECIMAL,
);

ALTER TABLE animals
ADD COLUMN species TEXT;

CREATE TABLE owners(
    id SERIAL PRIMARY KEY,
    full_name TEXT,
    age INT
);

CREATE TABLE species(
    id SERIAL PRIMARY KEY,
    name TEXT
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD COLUMN species_id INT;

ALTER TABLE animals 
ADD CONSTRAINT species_fk
FOREIGN KEY(species_id) 
REFERENCES species(id);

ALTER TABLE animals ADD COLUMN owner_id INT;

ALTER TABLE animals 
ADD CONSTRAINT owners_fk
FOREIGN KEY(owner_id) 
REFERENCES owners(id); 

CREATE TABLE vets (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT,
    date_of_graduation DATE
);

CREATE TABLE specializations (
    species_id INT REFERENCES species(id),
    vet_id INT REFERENCES vets(id)
);

CREATE TABLE visits (
    animals_id INT REFERENCES animals(id),
    vet_id INT REFERENCES vets(id),
    date_of_visit DATE
);