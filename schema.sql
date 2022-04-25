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
