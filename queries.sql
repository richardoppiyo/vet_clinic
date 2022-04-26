SELECT *
FROM animals
WHERE (name LIKE '%mon');

SELECT *
FROM animals
WHERE (date_of_birth >= '2016-01-01' AND  date_of_birth <= '2019-12-31');

SELECT *
FROM animals
WHERE (neutered = true) AND (escape_attempts < 3);

SELECT date_of_birth
FROM animals
WHERE (name IN ('Agumon','Pikachu'));

SELECT name,escape_attempts
FROM animals
WHERE (weight_kg > 10.5);

SELECT *
FROM animals
WHERE  (neutered = true);

SELECT *
FROM animals
WHERE  (name <> 'Gabumon');

SELECT *
FROM animals
WHERE (weight_kg BETWEEN 10.4  AND 17.3);


--FIRST TRANSACTION
BEGIN;

UPDATE animals
SET species = 'unspecified';
SELECT *
FROM animals;

ROLLBACK;

SELECT *
FROM animals;


--SECOND TRANSACTION 
BEGIN;

UPDATE animals
SET species = 'digimon'
WHERE name LIKE '%mon';

UPDATE animals
SET species = 'pokemon'
WHERE species IS NULL;

COMMIT;

SELECT *
FROM animals;



--THIRD TRANSACTION 
BEGIN;

DELETE FROM animals;

ROLLBACK;

SELECT *
FROM animals;


--TFOURTH RANSACTION 
BEGIN;

DELETE FROM animals
WHERE date_of_birth > '1-Jan-2022';

SAVEPOINT SP1;

SELECT *
FROM animals;

UPDATE animals
SET weight_kg = weight_kg * -1;

ROLLBACK TO SP1;

UPDATE animals
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;

COMMIT;

SELECT *
FROM animals;


--ANSWERS
SELECT COUNT(id)
FROM animals;

SELECT COUNT(id)
FROM animals
WHERE escape_attempts >0;

SELECT AVG(weight_kg)
FROM animals;

SELECT MAX(escape_attempts),neutered
FROM animals
GROUP BY neutered;

SELECT MIN(weight_kg),MAX(weight_kg),species
FROM animals
GROUP BY species;

SELECT AVG(escape_attempts),species
FROM animals
GROUP BY species,date_of_birth
HAVING date_of_birth BETWEEN '01-Jan-1990' AND '31-Dec-2000';

--JOINS AND 
SELECT name, full_name as owner_name
FROM animals
INNER JOIN owners ON animals.owner_id = owners.id
WHERE owners.id =4 



SELECT name, full_name as owner_name
FROM animals
INNER JOIN owners ON animals.owner_id = owners.id
WHERE owners.id =4 


SELECT *
FROM animals
INNER JOIN species ON  species_id  = species.id
WHERE species.id = 1;

SELECT full_name,name
FROM owners
LEFT JOIN animals ON  owners.id = owner_id

SELECT COUNT(animals.id),species.name
FROM animals
INNER JOIN species ON  species_id  = species.id
GROUP BY species.name;

SELECT animals.name, full_name as owner_name,species
FROM animals
INNER JOIN owners ON animals.owner_id = owners.id
INNER JOIN species ON species_id  = species.id
WHERE owners.id = 2 AND species.id = 2

SELECT name, full_name as owner_name,escape_attempts
FROM animals
INNER JOIN owners ON animals.owner_id = owners.id
WHERE owners.id = 5 AND escape_attempts = 0

SELECT name, full_name as owner_name
FROM animals
INNER JOIN owners ON animals.owner_id = owners.id


SELECT COUNT(owner_id) as freq, full_name
FROM animals
INNER JOIN owners ON owner_id = owners.id
GROUP BY full_name