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


