CREATE TABLE animals(
	id 					INT GENERATED ALWAYS AS IDENTITY,
	name  				VARCHAR(50) NOT NULL,
    date_of_birth  		DATE NOT NULL,
	escape_attempts		INT NOT NULL,
	neutered			BOOLEAN NOT NULL,
	weight_kg			FLOAT NOT NULL
);

ALTER TABLE animals
ADD COLUMN species VARCHAR;


CREATE TABLE owners(
	id				INT GENERATED ALWAYS AS IDENTITY,
	full_name		VARCHAR,
	age				INT,
	PRIMARY KEY(id)
);

CREATE TABLE species(
	id 				INT GENERATED ALWAYS AS IDENTITY,
	name 			VARCHAR,
	PRIMARY KEY(id)
);

ALTER TABLE animals
DROP COLUMN species;


ALTER TABLE animals
ADD COLUMN species_id INTEGER;

ALTER TABLE animals 
ADD CONSTRAINT fk_species_id 
FOREIGN KEY (species_id ) 
REFERENCES species (id);


ALTER TABLE animals
ADD COLUMN owner_id INTEGER;

ALTER TABLE animals 
ADD CONSTRAINT fk_owner_id
FOREIGN KEY (owner_id) 
REFERENCES owners (id);

CREATE TABLE vets(
 	id 					INTEGER GENERATED ALWAYS AS IDENTITY,
	name				VARCHAR,
	age					INTEGER,
	date_of_graduation	DATE,
	PRIMARY KEY(id)
);


CREATE TABLE specializations AS 
(SELECT species.id as species_id,species.name as species_name ,vets.id as vet_id, vets.name as vet_name
FROM species
INNER JOIN vets ON species.id = vets.id);

 
CREATE TABLE visits AS
(SELECT animals.id as animal_id,animals.name as animal_name,vets.id as vet_id,vets.name as vet_name
FROM animals
INNER JOIN vets ON animals.id = vets.id);

ALTER TABLE visits
ADD COLUMN date_of_visit DATE;


EXPLAIN ANALYZE SELECT COUNT(*) FROM visits where animal_id = 4;
CREATE INDEX visit_index ON visits(animal_id);
EXPLAIN ANALYZE SELECT COUNT(*) FROM visits where animal_id = 4;


EXPLAIN ANALYZE SELECT * FROM visits where vet_id = 2;
CREATE INDEX vet_index ON visits(vet_id ASC);
EXPLAIN ANALYZE SELECT * FROM visits where vet_id = 2;


EXPLAIN ANALYZE SELECT * FROM owners where email = 'owner_18327@mail.com';
CREATE INDEX email_index ON owners(email);
EXPLAIN ANALYZE SELECT * FROM owners where email = 'owner_18327@mail.com';

